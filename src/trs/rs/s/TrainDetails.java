package trs.rs.s;

public class TrainDetails {
	
	String TrainName;
	String TrainSource;
	String TrainDest;
	int TrainId;
	int AcFare;
	int NonAcFare;
	int AcSeats;
	int NonAcSeats;
	float ArrTime;
	float DepTime;
	String type;
	/* Setter Methods to set the values */
	
	public void setTrainName(String tname)
	{
		TrainName=tname;
	}
	public void setTrainSource(String tsource)
	{
		TrainSource=tsource;
	}
	public void setTrainDest(String tDest)
	{
		TrainDest=tDest;
	}
	public void setTrainId(int tid)
	{
		TrainId=tid;
	}
	public void setAcFare(int tAcFare)
	{
		AcFare=tAcFare;
	}
	public void setNonAcFare(int tNonAcFare)
	{
		NonAcFare=tNonAcFare;
	}
	public void setAcSeats(int tAcSeats)
	{
		AcSeats=tAcSeats;
	}
	public void setNonAcSeats(int tNonAcSeats)
	{
		NonAcSeats=tNonAcSeats;
	}
	public void setArrTime(float tArrTime)
	{
		ArrTime=tArrTime;
	}
	public void setDepTime(float tdepTime)
	{
		DepTime=tdepTime;
	}
	
	/* Getter methods to retireve the values */
	
	public String getTrainName()
	{
		return TrainName;
	}
	public String getTrainSource()
	{
		return TrainSource;
	}
	public String getTrainDest()
	{
		return TrainDest;
	}
	public int getTrainId()
	{
		return TrainId;
	}
	public int getAcFare()
	{
		return AcFare;
	}
	public int getNonAcFare()
	{
		return NonAcFare;
	}
	public int getAcSeats()
	{
		return AcSeats;
	}
	public int getNonAcSeats()
	{
		return NonAcSeats;
	}
	public float getArrTime()
	{
		return ArrTime;
	}
	public float getDepTime()
	{
		return DepTime;
	}
}
