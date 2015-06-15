<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Registration</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="dhtmlgoodies_calendar.css?random=20051112" media="screen"/>
<SCRIPT type="text/javascript" src="dhtmlgoodies_calendar.js?random=20060118"></script>
<script language="javascript">
function display()
{
	if(document.register.fname.value==""){
		alert("first name is empty");
		return false;
	}
	if(document.register.lname.value==""){
		alert("Last name is empty");
		return false;
	}
	if(document.register.age.value==""){
		alert("age is empty");
		return false;
	}
	if(document.register.uname.value==""){
		alert("Username name is empty");
		return false;
	}
	if(document.register.password.value!=document.register.confirmpassword.value){
		alert("passwords dont match");
		return false;
	}
	var x=document.register.mailID.value;
	alert(x);
	if(x=="")
		return false;
	else{
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || (dotpos+2)>=x.length)
	  {
	  alert("Not a valid e-mail address");
	  return false;
	  }
	}
}
</script>
</head>

<body onload="document.register.fname.focus()">
<form id="register" name="register" method="post" action="ser2" onsubmit=" return display()">
 <div id="topheader">
   <div class="topmenu_area"><a href="#" class="home">Home</a> <a href="#" class="about">About</a> <a href="#" class="search">Search</a> </div>
   <div class="banner_textarea">
<!--     <p class="banner_head">Aenean mattis erat et nisi. Aenean molestie orci ut turpis. Morbi rhoncus elit non arcu. Phasellus ullamcorper vulputate libero. Fusce turpis lorem </p>
     <p>lorem, semper nec, dictum vitae, tempus et, libero. Nam neque. Aliquam id leo. Cras et erat vel odio convallis sodales. Maecenas</p>
   --></div>
   <div class="search_menu_banner">
     <div class="search_background">
     <!--   <div class="searchname">Search</div>-->
       <div class="searchbox">
        <!--  <label>
         <input name="searchbox" type="text" class="searchtextbox" />
         </label>-->
       </div>
       <div class="searchbox">
         <!-- <div align="center"><a href="#" class="go">go</a></div>-->
       </div>
     </div>
     <div class="menu_area"><a href="#" class="addidea">Add Ideas</a> <a href="login.html" class="loginhere">Login Here</a> <a href="#" class="comments">Comments</a> <a href="#" class="contact">Contact Us </a></div>
   </div>
 </div>
 <div id="body_area">
  <div class="left">
    <div class="morelinks_top"></div>
    <div class="morelinks_area">
      <div class="morelinks_head">More Links </div>
      <div class="links_morearea">
<!--<a href="#" class="morelink">Donec nonummy<span class="links_text"> ligulaet</span></a> <a href="#" class="morelink">porta <span class="links_text">sagittis mauris quam</span></a> <a href="#" class="morelink">Scelerisque<span class="links_text"> pede nec</span></a> <a href="#" class="morelink">Molestie <span class="links_text">onum</span></a> <br />
        <a href="#" class="morelink">Massa <span class="links_text">velit quis ante</span></a> <br />
        <a href="#" class="morelink">Duis tellus nibh <span class="links_text">nonummy</span></a> <a href="#" class="morelink">Ornare<span class="links_text"> interdum vitae</span></a> <br />
        <a href="#" class="morelink">Quisque laoreet<span class="links_text"> justo et</span></a> <a href="#" class="morelink">Mattis <span class="links_text">tristique mi</span></a> <br />
        <a href="#" class="morelink">Varius turpis <span class="links_text">maecen</span></a> <br />
        <a href="#" class="morelink">Eitae <span class="links_text">luctus pede </span></a><br />-->
      </div>
    </div>
    <div class="morelinks_bottom"></div>
  </div>
  <div class="body_area1">
    <div class="banner_bottom"></div>
    <div class="mid">
      <div class="tick_head">Welcome to <span class="tick_head1">Railway Reservation System</span> </div><br><br><br><br>
	<p  align="center"><font color="black">Please enter your details to Register<br><br>
	<table>
                    <tr>
            <td width="400" align="left" >&nbsp;First Name :</td>
            <td width="400"><input style="" name="fname"  type="text" id="fname" size="25" value="" maxlength="25" autocomplete="off"  >
            </td><td></td>
	<td width="229" align="left" >&nbsp;Last Name :</td>

            <td width="347"><input style="" name="lname" id="lname" type="text" size="25" value="" maxlength="25" autocomplete="off" >

            </td><tdcolspan="4:"></td>
	<tr><td></td></tr><tr><td></td><td></td></tr>
                  <tr><td>Sex:</td>
                  <td><select name="Sex" size="1" class="text_input">
                      <option value="male"> Male</option>
                      <option value="female"> Female</option>
                      </select>                  </td><td></td></tr>
	<tr><td></td></tr><tr><td></td><td></td></tr>
	<tr><td>Age:</td>
                  <td><input type="text" size="2" name="Age" MAXLENGTH="2" alt="Age"/></td>
	</tr>
	<tr><td></td></tr><tr><td></td><td></td></tr>
	            <td width="400" align="left" >e-mail :</td>
            <td width="400"><input name="mailID"  type="text" id="mailID" size="25" maxlength="25" autocomplete="off"  >
            </tr>
	<tr><td></td></tr><tr><td></td><td></td></tr>
	<tr><td width="400" align="left" >UserName :</td>
            <td width="400"><input name="uname"  type="text" id="uname" size="25" maxlength="25" autocomplete="off"  >
            </tr>
	<tr><td></td></tr><tr><td></td><td></td></tr>
	<tr><td width="400" align="left" >Password :</td>
            <td width="400"><input name="password"  type="password" id="password" size="25" maxlength="25" autocomplete="off"  >

	<tr><td></td></tr><tr><td></td><td></td></tr>
	<tr><td width="400" align="left" >Confirm Password :</td>
            <td width="400"><input name="confirmpassword"  type="password" id="password" size="25" maxlength="25" autocomplete="off"  >

	<tr><td></td></tr><tr><td></td><td></td></tr>	<tr><td></td></tr><tr><td></td><td></td></tr>
               <tr>
                  <td colspan="4"></td>
                </tr>
	<br><tr><td></td><td></td><td><input type="submit" value="Register" name="register"></td><td></td>
	<td><input type="reset" value="clear" name="clear"></td><td></td></tr>
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
