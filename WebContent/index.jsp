<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Home</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function load() {
	var load =
	window.open('images/rail_100.pdf','','scrollbars=no,menubar=no,height=600,width=800,resizable=yes,toolbar=no')
}
</script>
</head>
<body onload="document.form1.login.focus()">
<form id="form1" name="form1" method="post" action="">
 <div id="topheader">
   <div class="topmenu_area"><a href="index.html" class="home">Home</a> <a href="#" class="about">About</a> <a href="#" class="search">Search</a> </div>
   <div class="banner_textarea">
     <p class="banner_head"></p>
     <p></p>
   </div>
   <div class="search_menu_banner">
     <div class="search_background">
     <!--  <div class="searchname">Search</div>-->
       <div class="searchbox">
        <!-- <label>
         <input name="textfield" type="text" class="searchtextbox" />
         </label>-->
       </div>
       <div class="searchbox">
        <!-- <div align="center"><a href="#" class="go">go</a></div>-->
       </div>
     </div>
     <div class="menu_area"><a href="idea.jsp" class="addidea">Add Ideas</a> <a href="login.jsp" class="loginhere">Login Here</a> <a href="comments.jsp" class="comments">Comments</a> <a href="contact.jsp" class="contact">Contact Us </a></div>
   </div>
 </div>
 <div id="body_area">
  <div class="left">
    <div class="morelinks_top"></div>
    <div class="morelinks_area">
      <div class="morelinks_head">More Links </div>
      <div class="links_morearea">
        <a href="aboutIndia.jsp" class="morelink">Know U R Country<span class="links_text"></span></a> <br />
        <a href="javascript:load()" class="morelink">Indian Rail Map <span class="links_text"></span></a> 
        <a href="#" class="morelink">Offers<span class="links_text"></span></a> <br />
        <a href="aboutUs.jsp" class="morelink">About Us<span class="links_text"></span></a>
      </div>
    </div>
    <div class="morelinks_bottom"></div>
  </div>
  <div class="body_area1">
    <div class="banner_bottom"></div>
    <div class="mid">
      <div class="tick_head">Welcome to <span class="tick_head1">RRS</span></div>
      <div class="inner_banner"></div>
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
 </div>
 <div class="body_areabackground">
<div id="body_area1">
  <div class="inner_tabarea">
    <div class="inner_menu">
      <div align="center"><a href="#" class="innermenu_hover">Latest Offers</a>
	<a href="#" class="innermenu">Subscribe</a> </div>
    </div>
    <div class="tab_text">
      <p class="tab_head">ON 8th FEBRUARY 2011</p>
      <p><span class="tab_head1">Unlimited travel</span><br />
        Pay Rs.399/- and travel for unlimited distance in any state ......</p>
      </div>

    <!--<div class="tab_text">
      <p><span class="tab_head1">Cras pharetra nunc ac nisi. Nulla facilisi</span><br />
        Nam ac elit non felis pharetra congue. Ut sodales, nisi a <a href="#" class="tablink">venenatis fermentum,</a> tellus</p>
    </div>-->
    <!--<div class="tab_readmore">
      <p align="right" class="tab_head"><a href="#" class="readmore">Read More </a></p>
    </div>-->
  </div>
  <div class="login_area">
    <div class="login_head">Already a Member ?</div>
    <div class="login_textarea">
	<form action="" method="post">
      <div class="login_name">UserId </div>
      <div class="login_box">
        <label>
        <input name="login" type="text" class="logintextbox" />
        </label>
      </div>
    </div>
    <div class="login_textarea">
      <div class="login_name">Password </div>
      <div class="login_box">
        <label>
        <input name="password" type="password" class="logintextbox" />
        </label>
      </div>
    </div>
    <div class="login_textarea">
              <a href="registration.jsp" class="register">Get Registration Now</a>
        <input name="button23" value="Login" type="submit" style="text-align: left;background-color:transparent ;border: 0px;" class="login" />

    <%
String user=request.getParameter("login");
String pass=request.getParameter("password");
System.out.println(user+"got these"+pass);
     try{
    
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@172.24.137.30:1521:ora10G" , "eC16MS99G12" , "plazkbMAt" );
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select username,password from UserDetails");
     while(rs.next())
         {
         String username=rs.getString(1);
         String password=rs.getString(2);
         if(user.equals("group3") && pass.equals("group3"))
        		response.sendRedirect("add_modifyTrain.jsp");

         if(user.equals(username) && pass.equals(password))
             {
        	 ServletContext s=getServletContext();
        	 s.setAttribute("user",user);
             %>
             <jsp:forward page="trainselect.jsp" />
         <%}
         else
         out.println("Login Failed,Please try Again");
         %>
        
         <%
     }
}catch(Exception e1)
{
	e1.printStackTrace();
	System.out.println("error contacting DB");
	}

%>

    
      
    </div>
    

<!--  <div class="login_textarea"><a href="registration.html" class="register">Get Registration Now</a> <a href="#" class="login">Login</a> </div>-->
  </div>
  <div class="toolfree_area">
    <div class="call_free"><span class="callus">Call Us</span> <span class="callno">1800-1800-1800</span></div>
    <div class="facing"></div>
  </div>
</div></div>
 <div id="fotter">
   <div id="fotter_1">
     <div class="fotter_leftarea">
       <div class="fotter_links">
         <a href="#" class="fotterlink">Home</a>  |  <a href="#" class="fotterlink">About Us</a>  |  <a href="#" class="fotterlink">Contact</a> </div>
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
