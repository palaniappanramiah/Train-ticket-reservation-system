<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Delete Train</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function display(){
	if(document.addmodify.tid.value==""){
		alert("train ID should not be blank");
		return false;
	}
}
</script>
</head>

<body onload="document.addmodify.tid.focus()">
<form id="addmodify" name="addmodify" method="get" action="ser3" onsubmit="return display()">
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
        <a href="http://localhost:8080/ser3" class="morelink">View All Trains<span class="links_text"></span></a>
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
	<p  align="center"><font color="black">Please enter the TrainId to Delete the train.<br><br>
	<table>
                    <tr>
            	<td width="229" align="left" >Train Id:</td>
            <td width="347"><input name="tid" id="tid" type="text" size="25" value="" maxlength="25" autocomplete="off" ></td>
	<tdcolspan="4:"></td></tr>
                		<br><tr><td></td><td></td><td><input type="submit" value="Delete" name="save"></td><td></td>
	<td><input type="reset" value="clear" name="clear"></td><td></td></tr>
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
