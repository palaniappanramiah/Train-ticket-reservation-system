package trs.rs.s;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConnect {

	Connection conn=null;

	public Connection getDbConn()
	{
		try
		{
			Class. forName ( "oracle.jdbc.driver.OracleDriver" ); 

			conn = DriverManager. getConnection ( "jdbc:oracle:thin:@172.24.137.30:1521:ora10G" , "eC16MS99G12" , "plazkbMAt" ); 
		}
		catch(Exception e)
		{
	
		}
	return conn;
	}
}