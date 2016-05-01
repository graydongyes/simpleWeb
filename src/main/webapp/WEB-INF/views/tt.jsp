<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>simpleWeb</title>
<link href="/comm/skin/css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div width="100%" height="20%">
	<div >&nbsp;</div>
	<form method="post" action="/comm/tt/queryComm.htm" >
		<table>
			<tr>
				<td width="5%" align="center">
					<input is="addButton" type="button" value="新增" />
				</td>
				<td width="10%" align="left">
					col1:&nbsp;<input id="col1" name="col1" />
				</td>
				<td width="10%" align="left">
					col2:&nbsp;<input id="col2" name="col2" />
				</td>
				<td width="10%" align="left">
					col3:&nbsp;<input id="col3" name="col3" />
				</td>
				<td width="10%" align="left">
					<input type="submit" value="提交"/>
				</td>
			</tr>
		</table>
	</form>
	<div >&nbsp;</div>
	<div class="line" ></div>
</div>
<div>
	<table>
		<tr>
			<td>${map.tt}</td>
		</tr>
	</table>
</div>

</body>
</html>