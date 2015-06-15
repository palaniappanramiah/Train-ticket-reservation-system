package trs.rs.s;

public class UserDetails {

	String FirstName;
	String LastName;
	String UserLoginId;
	String UserPassword;
	String UserSex;
	String UserEmail;
	int UserAge;

	public void setFirstName(String uname)
	{
		FirstName=uname;
	}
	public void setUserLoginId(String Uid)
	{
		UserLoginId=Uid;
	}
	public void setUserPassword(String upword)
	{
		UserPassword=upword;
	}
	public void setUserSex(String Usex)
	{
		UserSex=Usex;
	}
	public void setUserEmail(String umail)
	{
		UserEmail=umail;
	}
	public void setUserAge(int UAge)
	{
		UserAge=UAge;
	}
	public void setLastName(String s)
	{
		LastName=s;
	}
	public String getFirstName()
	{
		return FirstName;
	}
	public String getUserLoginId()
	{
		return UserLoginId;
	}
	public String getUserPassword()
	{
		return UserPassword;
	}
	public String getUserSex()
	{
		return UserSex;
	}
	public String getUserEmail()
	{
		return UserEmail;
	}
	public int getUserAge()
	{
		return UserAge;
	}
	public String setLastName()
	{
		return LastName;
	}
}
