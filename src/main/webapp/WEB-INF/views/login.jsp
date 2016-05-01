<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>simpleWeb</title>
<link href="/comm/skin/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function login()
	{
		var uname = document.getElementById('userName');
		var passwd = document.getElementById("pass");
		var loginMessage = document.getElementById('loginMessage');

		if (uname.value == '' || passwd.value == '')
		{
			loginMessage.innerHTML = '请输入用户名和密码！';
			return false;
		}
	    document.frmLogin.action = '/login.htm';
	    document.frmLogin.submit();
	}

	 function keypress(e)
	  {
		var currKey=0,e=e||event;
	  	if(e.keyCode==13)
	  	{
	  	   login();
	  	}
	  }
	 document.onkeydown=keypress;
	 document.onkeypress=keypress;

</script>
</head>
<body style="overflow:hidden;">
<table width="100%" height="39" border="0" cellpadding="0" cellspacing="0" background="/comm/skin/images/LoginTopBg.jpg">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<div id="pageTopBar" >
<div style="position:absolute; top:50%; left:50%; margin-left:-327px; margin-top:-180px;">
<table width="654" height="258" border="0" align="center" cellpadding="10" cellspacing="0" background="/comm/skin/images/loginbg.png" bgcolor="#FFFFFF">
	<tr>
		<td width="273" height="60"><img src="/comm/skin/images/tt.png"/></td>
		<td width="341">
			<form id="frmLogin" name="frmLogin" method="post" target="_self">
				<table width="97%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="19%" height="30">用户名：</td>
						<td width="81%">
							<input name="userName" id="userName" type="text" style="width:160px; font-family:Arial" value="" size="20" />
							<span id="userNameDiv" style="display:none"></span>
						</td>
					</tr>
					<tr>
						<td height="30">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
						<td>
							<input name="password" id="pass" type="password" size="20" style="width:160px;font-family:Arial" />
							<span id="passDiv" style="display:none"></span>
						</td>
					</tr>
					<tr>
						<td height="55">&nbsp;</td>
						<td>
							<a href="javascript:void(0);" onclick="login();"><img src="/comm/skin/images/login.png" border="0"/></a>
						</td>
					</tr>
					 <tr>
                        <td width="60" valign="middle"></td>
                        <td valign="middle" class="checkbox-box">
                    		<font color="#FF6D0C" id="loginMessage">&nbsp;</font>
                    	</td>
					 </tr>
				</table>
			</form>
		</td>
	</tr>
</table>
</div>
</div>
<script type="text/javascript">
if (window.top && window.top != window)
{
	top.location.href = '/login.htm';
}
</script>
</body>
</html>