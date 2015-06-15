<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Current Running Trains</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body >
 <div id="topheader">
   <div class="topmenu_area"><a href="#" class="home">Home</a> <a href="#" class="about">About</a> <a href="#" class="search">Search</a> </div>
   <div class="banner_textarea">
</div>
   <div class="search_menu_banner">
     <div class="search_background">
     <div class="searchname">Search</div>
       <div class="searchbox">
              </div>
       <div class="searchbox">
              </div>
     </div>
     <div class="menu_area"><a href="#" class="addidea">Add Ideas</a><a href="#" class="comments">Comments</a> <a href="#" class="contact">Contact Us </a> <a href="#" class="loginhere">Logout</a> </div>
   </div>
 </div>
 <div id="body_area">
  <div class="left">
    <div class="morelinks_top"></div>
    <div class="morelinks_area">
      <div class="morelinks_head">More Links </div>
      <div class="links_morearea">
      </div>
    </div>
    <div class="morelinks_bottom"></div>
  </div>
  <div class="body_area1">
    <div class="banner_bottom"></div>
    <div class="mid">
      <div class="tick_head">Welcome <span class="tick_head1"><!--  details.getUserName(); --></span> to Railway Reservation System </div><br><br><br><br>
	<p  align="center"><font color="black">These are the following trains currently Running<br><br>
	<table>
	<% out.println( "in jsp" );
	ResultSet rs=(ResultSet)request.getAttribute( "list" );
	%>
	<tr><th>Train Name</th><th>Train Id</th><th>Train Source</th><th>Train Dest.</th><th>Train Ac Seats</th><th>Train Non-Ac Seats</th><th>Train Ac Fare</th><th>Train Non-Ac Fare</th><th>Train Arr.Time</th><th>Train Dep Time</th></tr>
	<% while (rs.next()){ %>
	<tr> <td><%= rs.getString(1) %> </td> <td> <%= rs.getInt(2) %> </td> <td> <%= rs.getString(3) %> </td> <td> <%= rs.getString(4) %> </td> <td> <%= rs.getInt(5) %> </td> <td> <%= rs.getInt(6) %> </td> <td> <%= rs.getInt(7) %> </td> <td> <%= rs.getInt(8) %> </td> <td> <%= rs.getFloat(9) %> </td> <td> <%= rs.getFloat(10) %> </td> </tr>
	<%}%>
  
	</table>
	</font>
    </div><!---
    <div class="right_area">
      <div class="right_top"></div>
      <div class="right_head">
        <div class="morelinks_head">Latest Blogs </div>
      </div>  
      <div class="right_links_area">
        <div class="links_morearea"><a href="#" class="morelink">Donec nonummy<span class="links_text"> ligulaet</span></a> <a href="#" class="morelink">porta <span class="links_text">sagittis mauris quam</span></a> <a href="#" class="morelink">Scelerisque<span class="links_text"> pede nec</span></a> <a href="#" class="morelink">Molestie <span class="links_text">onum</span></a> <br />
            <a href="#" class="morelink">Massa <span class="links_text">velit quis ante</span></a> <br />
        </div>
        <div class="freeregistration">
          <div align="center"><span class="free">Free</span> registration</div>
        </div>
      </div>
      <div class="right_bottom"></div>-->
    </div>
  </div>
 </div><br><br><br><br><br><br><br><br><br>
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
</form>
</body>
</html>
