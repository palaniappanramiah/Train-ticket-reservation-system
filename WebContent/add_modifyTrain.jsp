<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Add/Modify Train</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function display()
{
	alert("entered");
	if(document.addmodify.tname.value==""){
		alert("name shouldnot be left blank");
		document.addmodify.tname.focus();
		return false;
	}
	if(document.addmodify.tid.value==""){
		alert("TrainId shouldnot be left blank");
		document.addmodify.tid.focus();
		return false;
	}
	if(document.addmodify.tsource.value==""){
		alert("Source shouldnot be left blank");
		document.addmodify.tsource.focus();
		return false;
	}
	if(document.addmodify.tdest.value==""){
		alert("Destination shouldnot be left blank");
		document.addmodify.tdest.focus();
		return false;
	}
	if(document.addmodify.tatime.value==""){
		alert("Arrival Time shouldnot be left blank");
		document.addmodify.tatime.focus();
		return false;
	}
	if(document.addmodify.tdtime.value==""){
		alert("DeParture Name shouldnot be left blank");
		document.addmodify.tdtime.focus();
		return false;
	}
	if(document.addmodify.taseats.value==""){
		alert("Ac Seats shouldnot be left blank");
		document.addmodify.taseats.focus();
		return false;
	}
	if(document.addmodify.tnaseats.value==""){
		alert("NonAc Seats shouldnot be left blank");
		document.addmodify.tnaseats.focus();
		return false;
	}
	if(document.addmodify.tafare.value==""){
		alert("AcFare shouldnot be left blank");
		document.addmodify.tafare.focus();
		return false;
	}
	if(document.addmodify.tnafare.value==""){
		alert("NonAc Fare shouldnot be left blank");
		document.addmodify.tnafare.focus();
		return false;
	}
}
</script>
</head>

<body onload="document.addmodify.tname.focus()">
<form id="addmodify" action ="ser3" name="addmodify" method="post" onsubmit="return display()">
<div id="topheader">
<div class="topmenu_area"><a href="#" class="home">Home</a> <a
	href="#" class="about">About</a> <a href="#" class="search">Search</a>
</div>
<div class="banner_textarea"></div>
<div class="search_menu_banner">
<div class="search_background"><!--   <div class="searchname">Search</div>-->
<div class="searchbox"><!-- <label>
         <input name="searchbox" type="text" class="searchtextbox" />
         </label>--></div>
<div class="searchbox"><!-- <div align="center"><a href="#" class="go">go</a></div>-->
</div>
</div>
<div class="menu_area"><a href="index.jsp" class="loginhere">Logout</a><a
	href="#" class="addidea">Add Ideas</a> <a href="#" class="comments">Comments</a>
<a href="#" class="contact">Contact Us </a></div>
</div>
</div>
<div id="body_area">
<div class="left">
<div class="morelinks_top"></div>
<div class="morelinks_area">
<div class="morelinks_head">More Links</div>
<div class="links_morearea"><a href="add_modifyTrain.jsp"
	class="morelink">Add/Modify Train<span class="links_text"></span></a> <a
	href="viewpass.jsp" class="morelink">View Passengers<span
	class="links_text"></span></a> <a href="http://localhost:8080/TRS/ser4" class="morelink">View All Trains<span class="links_text"></span></a> <a href="DelTrain.jsp"
	class="morelink">Delete Train<span class="links_text"></span></a> <br />
<br />
</div>
</div>
<div class="morelinks_bottom"></div>
</div>
<div class="body_area1">
<div class="banner_bottom"></div>
<div class="mid">
<div class="tick_head">Welcome <span class="tick_head1">Admin</span>
</div>
<br><br><br><br>
<p align="center"><font color="black">Please enter the
details to Add/Modify trains.<br><br>
<table>
	<tr>
		<td width="400" align="left">Train Name :</td>
		<td width="400"><input type="text" name="tname" id="tname"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<td></td>
	</tr>
	<tr>
		<td width="229" align="left">Train Id:</td>
		<td width="347"><input name="tid" id="tid" type="text" size="25"
			value="" maxlength="25" autocomplete="off"></td>
		<tdcolspan="4:">
		</td>
	</tr>
	<tr>
		<td width="400" align="left">Train Source :</td>
		<td width="400"><input name="tsource" type="text" id="tsource"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<td></td>
	</tr>
	<tr>
		<td width="229" align="left">Train Destination:</td>
		<td width="347"><input name="tdest" id="tdest" type="text"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<tdcolspan="4:">
		</td>
	</tr>
	<tr>
		<td width="400" align="left">Train Arrival time :</td>
		<td width="400"><input name="tatime" type="text" id="tatime"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<td></td>
	</tr>
	<tr>
		<td width="229" align="left">Train Departure time:</td>
		<td width="347"><input name="tdtime" id="tdtime" type="text"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<tdcolspan="4:">
		</td>
	</tr>
	<tr>
		<td width="400" align="left">Train Ac Seats :</td>
		<td width="400"><input name="taseats" type="taseats" id="tsource"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<td></td>
	</tr>
	<tr>
		<td width="229" align="left">Train NonvAc Seats:</td>
		<td width="347"><input name="tnaseats" id="tnaseats" type="text"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<tdcolspan="4:">
		</td>
	</tr>
	<tr>
		<td width="400" align="left">Train Ac Fare :</td>
		<td width="400"><input name="tafare" type="tafare" id="tsource"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<td></td>
	</tr>
	<tr>
		<td width="229" align="left">Train NonvAc Fare:</td>
		<td width="347"><input name="tnafare" id="tnafare" type="text"
			size="25" value="" maxlength="25" autocomplete="off"></td>
		<tdcolspan="4:">
		</td>
	</tr>
	<tr>
		<br>
		<tr>
			<td></td>
			<td></td>
			<td><input type="submit" value="Save" name="save"></td>
			<td></td>
			<td><input type="reset" value="clear" name="clear"></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
</table>
</font></p>
</div>

</div>
</div>
</div>
<br><br><br><br>

<div id="fotter">
<div id="fotter_1">
<div class="fotter_leftarea">
<div class="fotter_links"><a href="#" class="fotterlink">Home</a>
| <a href="#" class="fotterlink">About Us</a> | <a href="#"
	class="fotterlink">Production</a> | <a href="#" class="fotterlink">Our
Goals</a> | <a href="#" class="fotterlink">Forum</a> | <a href="#"
	class="fotterlink">More Blogs</a> | <a href="#" class="fotterlink">Updates</a>
| <a href="#" class="fotterlink">Contact</a></div>
<div class="fotter_designed">Designed by: TCS/CHN16/MS98/G03</div>
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
