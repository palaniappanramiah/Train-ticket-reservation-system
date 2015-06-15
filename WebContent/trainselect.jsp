<%@page import="trs.rs.s.UserDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Reservation Enquiry</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="dhtmlgoodies_calendar.css?random=20051112" media="screen"/>
<SCRIPT type="text/javascript" src="dhtmlgoodies_calendar.js?random=20060118"></script>
<SCRIPT LANGUAGE="JavaScript">
function isValidDate() {
	
	if(document.reserve.source.value==""){
		alert("source should not be left blank");
		document.reserve.source.focus();
		return false;
	}
	if(document.reserve.dest.value==""){
		alert("destination should not be left blank");
		document.reserve.dest.focus();
		return false;
	}
// Checks for the following valid date formats:
// MM/DD/YY   MM/DD/YYYY   MM-DD-YY   MM-DD-YYYY
// Also separates date into month, day, and year variables

//var datePat = /^(\d{1,2})(\/|-)(\d{1,2})\2(\d{2}|\d{4})$/;
var datePat=/^(\d{4})\/(\d{1,2})\/(\d{1,2})/ ;
// To require a 4 digit year entry, use this line instead:
// var datePat = /^(\d{1,2})(\/|-)(\d{1,2})\2(\d{4})$/;
var dateStr=document.reserve.theDate.value;
var matchArray = dateStr.match(datePat); // is the format ok?
if (matchArray == null) {
alert("Date is not in a valid format.")
		document.reserve.theDate.focus();
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
if (month < 1||month > 12) { // check month range
alert("Month must be between 1 and 12.");
return false;
}
if (day <1 || day>31) {
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
document.reserve.date.value=(day-nowdate);
alert(document.reserve.date.value);
if((day-nowdate)>6){
alert("advance booking is only for 7 days");
document.reserve.theDate.focus();
return false;
}
if((day<nowdate && (month-nowmonth==1))||(day<nowdate && month==1))
{
	if(nowmonth==4|| nowmonth==6|| nowmonth==9||nowmonth==11)
	{
		if((30-nowdate+day)>7){
		alert("u can only book for 7 days");
		document.reserve.theDate.focus();
		return false;
		}
		else
		return true;
	}
	else if(nowmonth==2 ){
	if((isleap)&&((29-nowdate+day)>7))
	{	
	alert("u can only book for 7 days");
	document.reserve.theDate.focus();
	return false;
	}
	}
	else if(nowmonth==1||nowmonth==3||nowmonth==5||nowmonth==7||nowmonth==8||nowmonth==10||nowmonth==12){
		if((31-nowdate+day)>7){
		alert("u can only book for 7 days");
		document.reserve.theDate.focus();	
		return false;
		}
		else
		return true;
	}	
}
else if(day<nowdate){
alert("u cannot book for past dates");
document.reserve.theDate.focus();
return false;}
else if((day-nowdate)>6){
alert("u cannot book for past dates");
document.reserve.theDate.focus();
return false;
}
else
return true;  // date is valid
}
//  End -->
</script>


</head>

<body onload="document.reserve.source.focus()">
<form id="reserve" name="reserve" method="post" action="serv1" onsubmit="return isValidDate()">
 <div id="topheader">
   <div class="topmenu_area"><a href="#" class="home">Home</a> <a href="#" class="about">About</a> <a href="#" class="search">Search</a> </div>
   <div class="banner_textarea">
</div>
   <div class="search_menu_banner">
     <div class="search_background">
       <div class="searchname">Search</div>
       <div class="searchbox">
       <!--  <label>
         <input name="searchbox" type="text" class="searchtextbox" />
         </label>-->
       </div>
       <div class="searchbox">
       <!--  <div align="center"><a href="#" class="go">go</a></div>-->
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
      <div class="tick_head">Welcome <span class="tick_head1"><!--  details.getUserName(); --></span> to Railway Reservation System </div><br><br><br><br>
	<p  align="center"><font color="black">Please enter the following fields to search for trains<br><br>
	<table>
                    <tr>
            <td width="229" align="left" >From :</td>
            <td width="347"><input style="" name="source"  type="" id="source" onfocus="focustxt=this;" size="25" value="" maxlength="25" autocomplete="off"  >
		    </td><td></td>
	<td width="229" align="left" >To :</td>

            <td width="347"><input style="" name="dest" id="dest" onfocus="focustxt=this;" size="25" value="" maxlength="25" autocomplete="off" type="text"  >
              <input type="hidden" name="date" value="">
            </td><tdcolspan="4:"></td>
	<tr><td></td></tr><tr><td></td><td></td></tr>
                  <tr><td>&nbsp;Class:</td>
                  <td><select name="classopt" size="1" class="text_input">
                      <option value="AC"> FIRST AC</option>
                      <option selected value="NAC"> NON AC</option>
                      </select>                  </td><td></td>
	<td>&nbsp;Journey Date:</td>
                  <td><input type="text" size="20" name="theDate" MAXLENGTH="2" alt="Date"/></td>
	<td><input type="button" value="Cal" onclick="displayCalendar(document.reserve.theDate,'yyyy/mm/dd',this)"></td></tr>
<tr><td colspan="4:"></td> </tr><tr><td colspan="4:"></td> </tr><tr><td colspan="4:"></td> </tr>
<tr><br>
                  <td align="left"  colspan="40">&nbsp;Depature Time After:
                   &nbsp;&nbsp;<select name="dtime" size="1" class="text_input">
		     <option value="0" selected> Any Time</option>
                     <option value="0"> 00:00 Hr.</option>
		     <option value="1"> 01:00 Hr.</option>
                     <option value="2"> 02:00 Hr.</option>
                     <option value="3"> 03:00 Hr.</option>     
                     <option value="4"> 04:00 Hr.</option>
                     <option value="5"> 05:00 Hr.</option>
                      <option value="6"> 06:00 Hr.</option>
                      <option value="7"> 07:00 Hr.</option>
                      <option value="8"> 08:00 Hr.</option>
                      <option value="9"> 09:00 Hr.</option>
                      <option value="10"> 10:00 Hr.</option>
                      <option value="11"> 11:00 Hr.</option>
                      <option value="12"> 12:00 Hr.</option>
                      <option value="13"> 13:00 Hr.</option>
                      <option value="14"> 14:00 Hr.</option>
                      <option value="15"> 15:00 Hr.</option>
                      <option value="16"> 16:00 Hr.</option>
                      <option value="17"> 17:00 Hr.</option>
                      <option value="18"> 18:00 Hr.</option>
                      <option value="19"> 19:00 Hr.</option>
                      <option value="20"> 20:00 Hr.</option>
                      <option value="21"> 21:00 Hr.</option>
                       <option value="22"> 22:00 Hr.</option>
                       <option value="23">23:00 Hr.</option>
                       <option value="24"> 24:00 Hr.</option>
                    </select></td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td colspan="4:"></td> </tr><tr>
                  <td align="left" colspan="40">&nbsp;Arrival Time After:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <select name="atime" size="1" class="text_input">
		     <option value="0" selected> Any Time</option>
                     <option value="0"> 00:00 Hr.</option>
                     <option value="1"> 01:00 Hr.</option>
                     <option value="2"> 02:00 Hr.</option>
                     <option value="3"> 03:00 Hr.</option>
                     <option value="4"> 04:00 Hr.</option>
                     <option value="5"> 05:00 Hr.</option>
                      <option value="6"> 06:00 Hr.</option>
                      <option value="7"> 07:00 Hr.</option>
                      <option value="8"> 08:00 Hr.</option>
                      <option value="9"> 09:00 Hr.</option>
                      <option value="10"> 10:00 Hr.</option>
                      <option value="11"> 11:00 Hr.</option>
                      <option value="12"> 12:00 Hr.</option>
                      <option value="13"> 13:00 Hr.</option>
                      <option value="14"> 14:00 Hr.</option>
                      <option value="15"> 15:00 Hr.</option>
                      <option value="16"> 16:00 Hr.</option>
                      <option value="17"> 17:00 Hr.</option>
                      <option value="18"> 18:00 Hr.</option>
                      <option value="19"> 19:00 Hr.</option>
                      <option value="20"> 20:00 Hr.</option>
                      <option value="21"> 21:00 Hr.</option>
                       <option value="22"> 22:00 Hr.</option>
                       <option value="23">23:00 Hr.</option>
                       <option value="24"> 24:00 Hr.</option>
				</select></td></tr>  
               <tr>
                  <td colspan="4">&nbsp;</td>
                </tr><td></td>
	<br><tr><td></td><td></td><td><input type="submit" value="search" name="submit"></td><td></td>
	<td><input type="reset" value="clear" name="clear"></td><td></td></tr>
	
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
