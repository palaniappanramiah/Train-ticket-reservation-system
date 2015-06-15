<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% System.out.println("in jsp"); 
ResultSet rs=(ResultSet)request.getAttribute("list");
//Attribute set in serv1.java%>
<table>
<tr><td><th>Passenger Name</th></td><td><th>Passenger Age</th></td><td><th>Passenger sex</th></td><td><th>Train Id</th></td><td><th>Train Type</th></td><td><th>Train Date</th></td></tr>
<% while(rs.next()){%>
<tr><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td><td><%= rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%= rs.getString(5)%></td><td><%= rs.getString(6)%></td></tr>
<%} %>	


</table>
</body>
</html>