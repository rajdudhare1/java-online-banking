<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*,com.onlinebank.BankCommons" errorPage="" %>
<%
//java Code
String op = "DEPOSITE";
String date = (new java.util.Date()).toString();
String uname = request.getParameter("uname");
int accno = Integer.parseInt(request.getParameter("accNo"));
int amt = Integer.parseInt(request.getParameter("Amount"));
String bal_sql = "SELECT balance FROM tx_details WHERE uname='"+uname+"' AND acc_no = "+accno+" AND isnew = 'YES'";
int bal = BankCommons.getBalance(bal_sql);
if(bal == 0){
	System.out.println("Current Balance : "+bal);
	bal = bal + amt;
}else {
	bal = bal + amt;
	String sql_up = "UPDATE tx_details SET isnew = 'NO' WHERE uname='"+uname+"' AND acc_no = "+accno+" AND isnew = 'YES'";
	int up = BankCommons.update(sql_up);
}
String sql = "INSERT INTO tx_details (uname, acc_no, operation, amt, balance, time1, isnew ) VALUES ('"+uname+"',"+accno+",'DEPOSITE',"+amt+","+bal+", '"+date+"', 'YES' )";
//System.out.println(sql);
int update = BankCommons.update(sql);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online Bank</title>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
html,body{
    background-image: url(images/img.gif);
}
</style>
</head>

<body>
<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="90">
      <param name="movie" value="images/banks.swf" />
      <param name="quality" value="high" />
      <embed src="images/banks.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="900" height="90"></embed>
    </object></th>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
<td width="160" >
<div id="ddblueblockmenu">
  <div class="menutitle">Account Operations</div>
  <ul>
    <li><a href="main.jsp">Welcome,&nbsp;<%= (String)session.getAttribute("cust_name")%></a></li>
    <li><a href="account.jsp">Create Account</a></li>
	<li><a href="deposite.jsp">Deposite</a></li>
    <li><a href="withdraw.jsp">Do Withdraw</a></li>
    <li><a href="get-balance.jsp">Get Balance</a></li>
	<li><a href="transfer.jsp">Trasnsfer Amount</a></li>
	<li><a href="view-reports.jsp">View Report</a></li>
	<li><a href="logOff.jsp">LogOut</a></li>
  </ul>
  <div class="menutitle">&nbsp;</div>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;line-height:20px;">
	<div class="box1">
	<marquee><h2><font color="#FF0000">Online Bank.</font></h2></marquee>
	</div>
	<br/>
	<br/>
	<div class="box2">
	Your Amount is Successfully Deposited into Acount. Your current Balance is: <font color="#FF0000"><%=bal%> Rs.</font><br/>
	To Deposit Amount in Your Account <a href="deposite.jsp">Click Here</a><br/>
	To Withdrow From Account <a href="withdraw.jsp">Click Here</a>
	</div>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>

</html>
