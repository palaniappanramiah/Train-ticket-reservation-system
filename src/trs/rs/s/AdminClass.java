package trs.rs.s;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class AdminClass {

	/**
	 * @param args
	 */
	public String addTrain(TrainDetails train,Connection c)
	{
		try
	{
		Statement statement=c.createStatement();
		System.out.println("yes");
		String qur="insert into TRAINDETAILS values('"+train.TrainName+"',"+train.TrainId+",'"+train.TrainSource+"','"+train.TrainDest+"',"+train.AcSeats+","+train.NonAcSeats+","+train.AcFare+","+train.NonAcFare+","+train.ArrTime+","+train.DepTime+")";
		System.out.println(qur);
		int  rs=statement.executeUpdate(qur);
		System.out.println(rs);
		if(rs==1)	
		{
			qur="insert into AcAvailability values('"+train.TrainName+"',"+train.AcSeats+","+train.AcSeats+","+train.AcSeats+","+train.AcSeats+","+train.AcSeats+","+train.AcSeats+","+train.AcSeats+")";
			String qur2="insert into NacAvailability values('"+train.TrainName+"',"+train.AcSeats+","+train.AcSeats+","+train.AcSeats+","+train.AcSeats+","+train.AcSeats+","+train.AcSeats+","+train.AcSeats+")";
			System.out.println(qur+"&&"+qur2);
			rs=statement.executeUpdate(qur);
			int rs1=statement.executeUpdate(qur2);
			if(rs==1 && rs1==1)
			{
				return("success");
			}
			else
			{
				rs=statement.executeUpdate("delete from TRAINDETAILS where trainid="+train.TrainId);
				try{
				rs=statement.executeUpdate("delete from AcAvailability where trainid="+train.TrainId);
				rs1=statement.executeUpdate("delete from NacAvailability where trainid="+train.TrainId);
				}
				catch(Exception e)
				{return "fail";}
				return "fail";				
			}
		}
		else
			return("fail");
	}
		catch (Exception e)
	{
			e.printStackTrace();
	 return("fail");
		}
	
	}
	public String addUser(UserDetails user,Connection c)
	{
		try
		{
			Statement statement=c.createStatement();
			String qur="insert into USERDETAILS values('"+user.FirstName+"','"+user.UserAge+"','"+user.UserEmail+"','"+user.getUserLoginId()+"','"+user.UserPassword+"','"+user.LastName+"','"+user.UserSex+"')";
			int  rs=statement.executeUpdate(qur);
			if(rs==1)		
				return("success");
			else
				return("fail");
			}
			catch (Exception e)
		{
		 return("fail");
			}
		
	}
	public String deleteTrain(int train_Id,Connection c)
	{
		try
	{
		Statement statement=c.createStatement();
		String qur=("delete from TRAINDETAILS where TRAINID="+train_Id+"");
		int  rs=statement.executeUpdate(qur);
		int rs2=statement.executeUpdate("delete from AcAvailability where train_id="+train_Id);
		int rs1=statement.executeUpdate("delete from NacAvailability where train_id="+train_Id);
		if(rs==1 && rs2==1 && rs1==1){
				return "success";
		}
		else
			return("fail");
	}
		catch (Exception e)
	{
			System.out.println("Error");
	 return("fail");
		}
		
	}
	public String addPassenger(PassengerDetails pasdet,Connection c)
	{
		try
		{
			Statement statement=c.createStatement();
			String qur="insert into PASSENGERDETAILS values('"+pasdet.PassengerName+"',"+pasdet.PassengerAge+",'"+pasdet.PassengerSex+"',"+pasdet.PassengerTrainId+",'"+pasdet.PassengerClass+"',"+pasdet.PassengerDate+")";
			System.out.println(qur);
			int  rs=statement.executeUpdate(qur);
			if(rs==1){
				String n="day"+pasdet.PassengerDate;String qury;
				if(pasdet.PassengerClass.equals("AC"))
				qury="update AcAvailability set "+n+"=(select ("+n+"-1) from AcAvailability where train_id="+pasdet.PassengerTrainId+") where train_id="+pasdet.PassengerTrainId;
				else
				qury="update NonAcAvailability set "+n+"=(select ("+n+"-1) from NonAcAvailability where train_id="+pasdet.PassengerTrainId+") where train_id="+pasdet.PassengerTrainId;
				System.out.println(qury);
				rs=statement.executeUpdate(qury);
				return("success");
			}
				
				else
					return("fail");
		}
			catch (Exception e)
		{
		 e.printStackTrace();
				return("fail");
			}
		
			
	}

}
