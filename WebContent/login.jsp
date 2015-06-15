<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="dhtmlgoodies_calendar.css?random=20051112" media="screen"/>
<SCRIPT type="text/javascript" src="dhtmlgoodies_calendar.js?random=20060118"></script>
<script language="javascript">
function display()
{
	if(document.register.uname.value=="")
		{
		alert("login id should not be left blank");
		return false;
		}
	if(document.register.password.value=="")
		{
		alert("password should not ne left blank");
		return false;
		}
	return true;
}
</script>
</head>

<body onload="document.register.uname.focus()">
<form id="register" name="register" method="post" onsubmit="return display()">
 <div id="topheader">
   <div class="topmenu_area"><a href="#" class="home">Home</a> <a href="#" class="about">About</a> <a href="#" class="search">Search</a> </div>
   <div class="banner_textarea">
</div>
   <div class="search_menu_banner">
     <div class="search_background">
       <div class="searchname">Search</div>
       <div class="searchbox">
        <!-- <label>
         <input name="searchbox" type="text" class="searchtextbox" />
         </label>-->
       </div>
       <div class="searchbox">
        <!-- <div align="center"><a href="#" class="go">go</a></div>-->
       </div>
     </div>
     <div class="menu_area"><a href="#" class="addidea">Add Ideas</a> <a href="#" class="loginhere">Login Here</a> <a href="#" class="comments">Comments</a> <a href="#" class="contact">Contact Us </a></div>
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
      <div class="tick_head">Welcome to <span class="tick_head1">Railway Reservation System</span> </div><br><br><br><br>
	<p  align="center"><font color="red">Invalid Credentials Please enter valid details to Login</font><font color="black"><br><br>
	<table>
                    <tr>
            
	<tr><td></td></tr><tr><td></td><td></td></tr>
	<tr><td width="400" align="left" >UserName :</td>
            <td width="400"><input name="uname"  type="text" id="uname" size="25" maxlength="25" autocomplete="off"  >
            </tr>
	<tr><td></td></tr><tr><td></td><td></td></tr>
	<tr><td width="400" align="left" >Password :</td>
            <td width="400"><input name="password"  type="password" id="password" size="25" maxlength="25" autocomplete="off"  >

	

	<tr><td></td></tr><tr><td></td><td></td></tr>	<tr><td></td></tr><tr><td></td><td></td></tr>
               <tr>
                  <td colspan="4"></td>
                </tr>
	<br><tr><td><input type="submit" value="Register" ></td>
	<td><input type="reset" value="clear" ></td><td></td><td></td><td></td></tr>
		<tr><td></td></tr><tr><td></td><td></td></tr>
		<tr><td></td></tr><tr><td></td><td></td></tr>
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
         <a href="#" class="fotterlink">Home</a>  |  <a href="#" class="fotterlink">About Us</a>  | <a href="#" class="fotterlink">Contact</a> </div>
       <div class="fotter_designed">Designed by: TCS/CHN16/MS98/G03 </div>
      </div>
     <div class="fotter_rightarea">
     <!-- <div class="fotter_validation"><a href="http://validator.w3.org/check?uri=referer" class="validation">XHTML</a> <a href="http://jigsaw.w3.org/css-validator/check/referer" class="validation">CSS</a></div>-->
       <div class="fotter_copyrights">Copyright @2011 CHN16/MS98/G03.<br /> 
        All Rights Reserved.</div>
     </div>
   </div>
     </div>
</form>
</body>
</html>
