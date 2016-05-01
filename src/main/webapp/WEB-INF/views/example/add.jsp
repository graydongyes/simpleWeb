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
<div width="100%" height="1000px">
	<div height="2px"></div>
	<div ><h3>&nbsp;&nbsp;&nbsp;新增页面</h3></div>
	<div class="line" ></div>
	<div >&nbsp;</div>
	<form method="post" action="/yuan/example/save.htm" >
		<table>
			<tr>
				<td width="10%" align="left">
					col1:&nbsp;<input id="col1" name="col1" />
				</td>
			</tr>
			<tr>
				<td width="10%" align="left">
					col2:&nbsp;<input id="col2" name="col2" />
				</td>
			</tr>
			<tr>
				<td width="10%" align="left">
					col3:&nbsp;<input id="col3" name="col3" />
				</td>	
			</tr>
			<tr>
				<td width="10%" align="left">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="保存" />
				</td>	
			</tr>
		</table>
	</form>
	<div >&nbsp;</div>
	<div class="line" ></div>
</div>
</body>
</html>