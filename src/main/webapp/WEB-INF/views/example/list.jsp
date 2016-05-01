<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>simpleWeb</title>
<link href="/comm/skin/css/common.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function addUrl(obj){
	location.href = "/yuan/example/toAddPage.htm";
}

function deleteLine(id, obj){
	location.href = "/yuan/example/delete.htm?id="+id;
}

function editLine(){
	
}
</script>
</head>
<body>
<div width="100%" height="20%">
	<div >&nbsp;</div>
	<form method="post" action="/yuan/example/queryByParam.htm" >
		<table>
			<tr>
				<td width="5%" align="center">
					<input id="addButton" type="button" value="新增" onclick="addUrl(this);" />
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
					<input type="submit" value="查询"/>
				</td>
			</tr>
		</table>
	</form>
	<div >&nbsp;</div>
	<div class="line" ></div>
</div>
<div>
	<table border="0" align="left" cellpadding="0" cellspacing="0">
		<tr >
			<th height="23px" width="15%" align="center" >ID</th>
			<th width="15%">col1</th>
			<th width="15%">col3</th>
			<th width="15%">col3</th>
			<th width="15%">操作</th>
		</tr>
		<c:forEach items="${map.list}" var="example" varStatus="s"> 
			<tr>
				<td align="center" >${example.id}</td>
				<td align="center" >${example.col1}</td>
				<td align="center" >${example.col2}</td>
				<td align="center" >${example.col3}</td>
				<td align="center" >
					<input type="button" value="删除" onclick="deleteLine(${example.id}, this);" /> &nbsp;
					<input type="button" value="编辑" onclick="editLine(${example.id}, this);" />
				</td>
			</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>