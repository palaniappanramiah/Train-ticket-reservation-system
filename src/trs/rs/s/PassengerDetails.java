package trs.rs.s;

public class PassengerDetails {

		String PassengerName;
		String PassengerSex;
		int PassengerTrainId;
		String PassengerClass;
		int PassengerAge;
		int PassengerDate;
				

		/* Setter Methods to store the values */
		
		public void setPassengerName(String uname)
		{
			PassengerName=uname;
		}
		public void setPassengerClass(String pclass)
		{
			PassengerClass=pclass;
		}
		public void setPassengerTrainId(int Tid)
		{
			PassengerTrainId=Tid;
		}
		public void setPassengerSex(String Usex)
		{
			PassengerSex=Usex;
		}
		public void setPassengerDate(int DaTe)
		{
			PassengerDate=DaTe;
		}
		public void setPassengerAge(int Page)
		{
			PassengerAge=Page;
		}
		
		/* Getter Methods to retrieve the values */
		
		public String getPassengerName()
		{
			return PassengerName;
		}
		public String getPassengerClass()
		{
			return PassengerClass;
		}
		public int getPassengerTrainId()
		{
			return PassengerTrainId;
		}
		public String getPassengerSex()
		{
			return PassengerSex;
		}
		public int getPassengerDate()
		{
			return PassengerDate;
		}
		public int getPassengerAge()
		{
			return PassengerAge;
		}
		
	}



