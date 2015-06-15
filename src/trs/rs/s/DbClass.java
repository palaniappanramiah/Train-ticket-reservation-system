package trs.rs.s;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class DbClass {
	ResultSet rs;
	public ResultSet getTrains(TrainDetails td,Connection c)
	{
		

		try
		{
			Statement s=c.createStatement();
			System.out.println("statement created");
			String query="select trainname,trainid,source,destination,ac,non_ac,ac_fare,non_ac_fare,arrival_time,departure_time from traindetails  where (source='"+td.getTrainSource()+"'and destination='"+td.getTrainDest()+"')";

			System.out.println(query);
			 rs = s.executeQuery(query);
			System.out.println("query executed");
			return rs;/*
			while ( rs.next() ) 
			{
				System.out.println("while entered");
				i++;
											String u=rs.getString( "TRAINNAME" );
											System.out.println(u);
				TrainDetails details = new TrainDetails();							
				
				details.setTrainName(u);
											System.out.println("while 77 entered");
					details.TrainId=rs.getInt("trainid");
					
						details.AcSeats=rs.getInt( "ac" );
					
							details.NonAcSeats=rs.getInt( "non_ac" );
											System.out.println("while entered");
											
								details.AcFare=rs.getInt( "ac_fare" );
								
								details.NonAcFare=rs.getInt( "non_ac_fare" );
								
											System.out.println("while entered");
											
							details.ArrTime=rs.getInt( "arrival_time" );
							
						details.DepTime=rs.getInt( "Departure_time" );
						
											System.out.println("while entered");
						
					details.TrainSource=tsource;
					
				details.TrainDest=tdest;
				
											System.out.println(rs.getString( "trainname" )+""+rs.getInt("trainid"));
											
				
			}
			return rs;	*/
		}
			
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("exception");
			return rs;
		}
	}

	public int getTrainAvailability(int TrainId,int num,Connection c)
	{
		
		try
		{
		Statement s=c.createStatement();
		System.out.println("statement created");
		String s8="day"+num;
 String query="select "+s8+" from ACAVAILABILITY where (train_id="+TrainId+")";
		System.out.println(query);
		ResultSet rs = s.executeQuery(query);
		System.out.println("query executed");
		int details=0;	
		while ( rs.next() ) 
		{
			System.out.println("while entered");
								
				details=rs.getInt(s8);
				System.out.println("while entered");					
		}
		return details;	
	}
	catch(Exception e)
	{
		e.printStackTrace();
		System.out.println("exception");
		return -1;
	}
	
}
		
	
	
	public ResultSet getAllTrains(Connection c)
	{
		
			try		{
			Statement s=c.createStatement();
			System.out.println("statement of alltrainscreated");
 String query="select trainname,trainid,source,destination,ac,non_ac,ac_fare,non_ac_fare,arrival_time,departure_time from traindetails ";
			System.out.println(query);
			 rs = s.executeQuery(query);
			System.out.println("query executed");
				return rs;/*
			while ( rs.next() ) 
			{
				System.out.println("while all trains detailsentered");
				i++;
											String u=rs.getString( "TRAINNAME" );
											System.out.println(u);
				TrainDetails details = new TrainDetails();							
				
				details.setTrainName(u);
				details.TrainId=rs.getInt("trainid");
				details.AcSeats=rs.getInt( "ac" );
			    details.NonAcSeats=rs.getInt( "non_ac" );
			    details.AcFare=rs.getInt( "ac_fare" );
				details.NonAcFare=rs.getInt( "non_ac_fare" );
				details.ArrTime=rs.getInt( "arrival_time" );
				details.DepTime=rs.getInt( "Departure_time" );
				
				System.out.println(rs.getString( "trainname" )+""+rs.getInt("trainid"));
				
				
			}
			return rs;	*/
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("exception");
			return rs;
		}
				
			
	}
	public  ResultSet getPassangers(int train_Id,int Dated,Connection c)
	{
	
		try{
		Statement s=c.createStatement();
		System.out.println("statement of passengers created");
		String Query="select name,age,sex,trainid,type,dates from passengerdetails where (trainid="+train_Id+" and dates="+Dated+")";
		System.out.println("query created");
		System.out.println(Query);
		 rs=s.executeQuery(Query);
		 return rs;/*
		while ( rs.next() ) 
		{
			System.out.println("while all trains detailsentered");
			i++;
										//String u=rs.getString( "TRAINNAME" );
										//System.out.println(u);
			PassengerDetails details = new PassengerDetails();							
			
			//details.setTrainName(u);
			details.PassengerDate=Dated;
			details.PassengerAge=rs.getInt( "age" );
		    details.PassengerName=rs.getString( "name" );
			details.PassengerSex=rs.getString( "sex" );
			details.PassengerClass=rs.getString( "type" );
			
			
			System.out.println(rs.getString( "name" )+""+rs.getInt("age")+""+rs.getString("sex"));
			
			
		}
		return rs;	*/
	}
	catch(Exception e)
	{
		e.printStackTrace();
		System.out.println("exception");
		return rs;
	
	}
	}
			
	public UserDetails validateUser(UserDetails user,Connection c)
	{
		return user;
	}
	
}
