<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.util.ArrayList"%>
<%@page import="trs.rs.s.TrainDetails"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>details</title>
<link href="style.css" rel="stylesheet" type="text/css" >

</head>


<body onload="document.addmodify.tid.focus()">
<% 
	ServletContext rs=getServletContext(); 
	ResultSet r=(ResultSet)rs.getAttribute("result_trains");
	ResultSet t=(ResultSet)request.getAttribute("trains");
	
%>
<form name="resultTrain" id="resultTrain" action="ser2" method="get">
 <div id="topheader">
   <div class="topmenu_area"><a href="index.html" class="home">Home</a> <a href="#" class="about">About</a> <a href="#" class="search">Search</a> </div>
   <div class="banner_textarea">
</div>
   <div class="search_menu_banner">
     <div class="search_background">
    <!--   <div class="searchname">Search</div>-->
       <div class="searchbox">
        <!--   <label>
         <input name="searchbox" type="text" class="searchtextbox" />
         </label>-->
       </div>
       <div class="searchbox">
       <!-- <div align="center"><a href="#" class="go">go</a></div>-->
       </div>
     </div>
     <div class="menu_area"><a href="index.jsp" class="loginhere">Logout</a><a href="#" class="addidea">Add Ideas</a> <a href="#" class="comments">Comments</a> <a href="#" class="contact">Contact Us </a></div>
   </div>
 </div>
 <div id="body_area">
  <div class="left">
    <div class="morelinks_top"></div>
    <div class="morelinks_area">
      <div class="morelinks_head">More Links </div>
      <div class="links_morearea"><a href="add_modifyTrain.jsp" class="morelink">Add/Modify Train<span class="links_text"></span></a>
        <a href="viewpass.jsp" class="morelink">View Passengers<span class="links_text"></span></a>
        <a href="viewAll.jsp" class="morelink">View All Trains<span class="links_text"></span></a>
        <a href="DelTrain.jsp" class="morelink">Delete Train<span class="links_text"></span></a> <br />
        <br />
      </div>
    </div>
    <div class="morelinks_bottom"></div>
  </div>
  <div class="body_area1">
    <div class="banner_bottom"></div>
    <div class="mid">
      <div class="tick_head">Welcome <span class="tick_head1">Admin</span> </div><br><br><br><br>
	<p  align="center"><font color="black"><br><br>
	<table>
              <tr><th>name</th><th>id</th><th>source</th><th>destination</th><th>Ac seats</th><th>nonac seats</th><th>ac fare</th><th>nonac fare</th><th>arrival time</th><th>departure time</th></tr>
<%while(r.next()){%> 
        <tr><td><%=r.getString(1)%></td><td><%=r.getString(2) %></td><td><%=r.getString(3) %></td><td><%=r.getString(4) %></td>
            <td><%=r.getString(5)%></td><td><%=r.getString(6) %></td><td><%=r.getString(7) %></td><td><%=r.getString(8) %></td>
           <td><%=r.getString(9)%></td><td><%=r.getString(10) %></td><td><input type="radio" name="trainselected" value="<%=r.getString(2) %>" ></input></td>
        </tr>
           <%} %>
      
<%while(t.next()){%> 
        <tr><td><%=t.getString(1)%></td><td><%=t.getString(2) %></td><td><%=t.getString(3) %></td><td><%=t.getString(4) %></td>
            <td><%=t.getString(5)%></td><td><%=t.getString(6) %></td><td><%=t.getString(7) %></td><td><%=t.getString(8) %></td>
           <td><%=t.getString(9)%></td><td><%=t.getString(10) %></td><td><input type="radio" name="trainselected" value="<%=t.getString(2) %>" ></input></td>
        </tr>
           <%} %>
      <tr><td><input type="submit" name="reserve"></input></td></tr>     
              
	</table>
	</font>
    </div>

    </div>
  </div>
 </div>
<br><br><br><br>

 <div id="fotter">
   <div id="fotter_1">
     <div class="fotter_leftarea">
       <div class="fotter_links">
         <a href="#" class="fotterlink">Home</a>  |  <a href="#" class="fotterlink">About Us</a>  |  <a href="#" class="fotterlink">Production</a>  |  <a href="#" class="fotterlink">Our Goals</a>  |  <a href="#" class="fotterlink">Forum</a>  |  <a href="#" class="fotterlink">More Blogs</a>  |  <a href="#" class="fotterlink">Updates</a>  |  <a href="#" class="fotterlink">Contact</a> </div>
       <div class="fotter_designed">Designed by: TCS/CHN16/MS98/G03 </div>
      </div>
     <div class="fotter_rightarea">
       <div class="fotter_copyrights">Copyright @2011 CHN16/MS98/G03.<br /> 
        All Rights Reserved.</div>
     </div>
   </div>
     </div>

</body>
</html>
