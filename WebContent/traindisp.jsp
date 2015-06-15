<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.* ,java.util.*"%>
<%@ page import=" java.sql.DriverManager" %>
<%@ page import=" java.io.*" %>

<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>

<HTML>
    <HEAD>
        <TITLE>THE SET OF TRAINS AVAILABLE ARE</TITLE>
    </HEAD>

    <BODY>
        <H1></H1>

        <%     String ss1,ds1;
              Connection con = null;
              con=DriverManager.getConnection("jdbc:oracle:thin:@172.24.137.30:1521:ora10G" , "eC16MS99G12" , "plazkbMAt");
              ss1 =request.getParameter("from");
              ds1 = request.getParameter("to");
              Statement statement = con.createStatement() ;
              ResultSet rs = 
                statement.executeQuery("select * from TRAINDETAILS where SOURCE='"+ss1+"' and DESTINATION='"+ds1+"'") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>TRAINNAME</TH>
                <TH>TRAINID</TH>
                <TH>SOURCE</TH>
                <TH>DESTINATION</TH>
                <TH>AC</TH>
                <TH>NON_AC</TH>
                <TH>AC_FARE</TH>
                <TH>NON_AC_FARE</TH> 
                <TH>ARRIVAL_TIME</TH>
                <TH>DEPARTURE_TIME</TH>
                  
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getString(6) %></td>
                <TD> <%= rs.getString(7) %></TD>
                <TD> <%= rs.getString(8) %></TD>
                <TD> <%= rs.getString(9) %></TD>
                <TD> <%= rs.getString(10) %></TD>
                
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>

