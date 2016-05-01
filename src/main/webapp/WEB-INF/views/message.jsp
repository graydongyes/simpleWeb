<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>simpleWeb</title>
</head>
<body>
<div style="overflow:auto" id="main">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>
	<br>
	<table width="98%" border="3" align="center" cellpadding="20" cellspacing="0" bordercolor="#DEEFFA" bordercolordark="#FFFFFF" frame="hsides" rules="rows">
		<tr>
			<td width="100%" height="100" align="center" bgcolor="#F1F8FE"> <strong class="blue t14">${map.message}</strong> <br>
					<script>
						var time= 2;						
						var timer =	setInterval(function(){
							if (time > 0)
							{
								document.getElementById("timeGap").innerHTML = '<font color="red"> '+time+' </font>' ;														
							}
							else 
							{
									location.href='${map.refererURL}';
									clearInterval(timer);
							}
							time--;
						}, 1000);
					</script>
					<br>
						
				<span id="timeGap">
					<font color="red">3</font>
				</span>秒后返回 列表页面. 
			</td>
		</tr>
	</table>
	<br>	
</div>
</body>
</html>