<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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
<script type="text/JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>
</head>

<body>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
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
<td width="160" ><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2"><table width="98%" border="0" align="center" cellpadding="1" cellspacing="0">
      <tr>
        <th colspan="2" scope="col">
		<div class="box1">
	<marquee><h2><font color="#FF0000">Online Bank.</font></h2></marquee>
	</div>
	<br/>
	<br/>
		</th>
      </tr>
      <tr>
	  
        <th colspan="2" scope="col"><form id="form1" name="form1" method="post" action="doRegister.jsp">
          <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2" style="border:#000000 solid 2px;padding:5px;">
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="height:20px;"><font color="#FFFFFF">Customer Registration For new Account</font></th>
              </tr>
            <tr>
              <td width="28%" rowspan="12"><div align="center"><img src="images/kdmconfig.png" width="48" height="48" /></div></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td width="24%"><div align="left">Username:</div></td>
              <td width="48%"><label>
                <div align="left">
                  <input name="username" type="text" id="username" />
                  </div>
              </label></td>
            </tr>
            <tr>
              <td><div align="left">Password:</div></td>
              <td><div align="left">
                <input name="password" type="password" id="password" />
              </div></td>
            </tr>
            <tr>
              <td><div align="left">Security Question: </div></td>
              <td><div align="left">
                <select name="question">
                  <option value="Your First School Name">Your First School Name?</option>
                  <option value="Your Car Number">Your Car Number?</option>
                  <option value="Your Mothers Name">Your Mothers Name?</option>
                  <option value="Favorite Color">Favorite Color?</option>
                </select>
              </div></td>
            </tr>
            <tr>
              <td><div align="left">Answer:</div></td>
              <td><div align="left">
                <input name="answer" type="text" id="answer" size="30" />
              </div></td>
            </tr>
            <tr>
              <td><div align="left">Address:</div></td>
              <td><div align="left">
                <textarea name="address" id="address"></textarea>
              </div></td>
            </tr>
            <tr>
              <td><div align="left">E-mail:</div></td>
              <td><div align="left">
                <input name="email" type="text" id="email" />
              </div></td>
            </tr>
            <tr>
              <td><div align="left">Mobile:</div></td>
              <td><div align="left">
                <input name="mobile" type="text" id="mobile" />
              </div></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><label>
                <div align="right">
                  <input type="reset" name="Submit2" value="Reset" />
                  </div>
              </label></td>
              <td colspan="2"><label>
                
                    <div align="left">
                      <input name="Submit" type="submit" onclick="MM_validateForm('username','','R','answer','','R','email','','RisEmail','mobile','','R','address','','R','password','','R');return document.MM_returnValue" value="Create Account"  />
                    </div>
                  </label></td>
              </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
                </form>        </th>
        </tr>
      <tr>
        <td width="50%">&nbsp;</td>
        <td width="50%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>

</html>
