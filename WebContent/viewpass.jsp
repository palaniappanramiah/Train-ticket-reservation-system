<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>View Passengers</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="dhtmlgoodies_calendar.css?random=20051112" media="screen"/>
<SCRIPT type="text/javascript" src="dhtmlgoodies_calendar.js?random=20060118"></script>
<script language="javascript">
function display()
{
alert("entered");
if(document.enterpass.tid.value==""){
alert("train ID must not be left blank");
return false;
}
else if(document.enterpass.theDate.value==""){
alert("train Date must not be left blank");
return false;
}
var datePat=/^(\d{4})\/(\d{1,2})\/(\d{1,2})/ ;
//To require a 4 digit year entry, use this line instead:
//var datePat = /^(\d{1,2})(\/|-)(\d{1,2})\2(\d{4})$/;
var dateStr=document.enterpass.theDate.value;
var matchArray = dateStr.match(datePat); // is the format ok?
if (matchArray == null) {
alert("Date is not in a valid format.")
return false;
}
month =parseInt(matchArray[2]); // parse date into variables
day = parseInt(matchArray[3]);
year = parseInt(matchArray[1]);
var d=new Date();
var nowdate=d.getDate();
var nowmonth=d.getMonth()+1;
var nowyear=d.getYear();
var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
alert(nowyear+" "+nowdate+" "+nowmonth);
alert(day+" "+month+" "+year);
if (month < 1 || month > 12) { // check month range
alert("Month must be between 1 and 12.");
return false;
}
if (day < 1 || day > 31) {
alert("Day must be between 1 and 31.");
return false;
}
if ((month==4 || month==6 || month==9 || month==11) && day==31) {
alert("Month "+month+" doesn't have 31 days!")
return false
}
if (month == 2) { // check for february 29th
if (day>29 || (day==29 && !isleap)) {
alert("February " + year + " doesn't have " + day + " days!");
return false;
}
}
document.enterpass.date.value=(day-nowdate);
alert(document.enterpass.date.value);
if((day-nowdate)>7){
alert("passenger viewing is only for 7 days");
return false;
}
if((day<nowdate && (month-nowmonth==1))||(day<nowdate && month==1))
{
	if(nowmonth==4|| nowmonth==6|| nowmonth==9||nowmonth==11)
	{
		if((30-nowdate+day)>7){
		alert("u can only see for 7 days");
		return false;
		}
		else
		return true;
	}
	else if(nowmonth==2 ){
	if((isleap)&&((29-nowdate+day)>7))
	{	
	alert("u can only see for 7 days");
	return false;
	}
	}
	else if(nowmonth==1||nowmonth==3||nowmonth==5||nowmonth==7||nowmonth==8||nowmonth==10||nowmonth==12){
		if((31-nowdate+day)>7){
		alert("u can only see for 7 days");	
		return false;
		}
		else
		return true;
	}	
}
else if(day<nowdate){
alert("u cannot see for past dates");
return false;}
else if((day-nowdate)>7){
alert("u cannot see for past dates");
return false;
}
else
return true;  // date is valid
}
//End -->
</script>

</head>

<body onload="document.enterpass.tid.focus()">
<form id="enterpass" name="enterpass" method="get" action="serv1" onsubmit="display()">
 <div id="topheader">
   <div class="topmenu_area"><a href="index.html" class="home">Home</a> <a href="#" class="about">About</a> <a href="#" class="search">Search</a> </div>
   <div class="banner_textarea">
</div>
   <div class="search_menu_banner">
     <div class="search_background">
      <!--   <div class="searchname">Search</div>-->
       <div class="searchbox">
        <!--  <label>
         <input name="searchbox" type="text" class="searchtextbox" />
         </label>-->
       </div>
       <div class="searchbox">
         <!--<div align="center"><a href="#" class="go">go</a></div>-->
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
	<p  align="center"><font color="black">Please enter the details of the train for which you want to see the passengers.<br><br>
	<table>
                    <tr>
            	<td width="229" align="left" >Train Id:</td>
            <td width="347"><input name="tid" id="tid" type="text" size="25" value="" maxlength="25" autocomplete="off" ></td></tr>
             <input type="hidden" name="date" id="date" value="">
	<tr>
	<td width="229" align="left" >Train Date:</td>
            	<td><input type="text" size="20" name="theDate"  alt="Date"/>
	       <input type="button" value="Cal" onclick="displayCalendar(document.enterpass.theDate,'yyyy/mm/dd',this)">
	</td></tr>
                		<br><tr><td></td><td><input type="submit" value="Get Them" name="save"></td>
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
         <a href="#" class="fotterlink">Home</a>  |  <a href="#" class="fotterlink">About Us</a>  | <a href="#" class="fotterlink">Contact</a> </div>
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
