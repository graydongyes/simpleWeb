<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>simple-web</title>
	<script type="text/javascript" src="/comm/skin/js/jquery-1.7.1.min.js" ></script>
</head>
<body>  
hello, welcome to homepage

 <div style="background-color:black;height:40px;margin-bottom:10px;">
     <div style="width:1000px;margin:auto;height:100%;color:white;"><span style="font-size:20px;line-height:40px;">jQuery.AutoComplete 自动补全插件</span><span style="float:right;line-height:40px;"><a href="../doc/index.html" style="color:white;font-size:12px;text-decoration:none;" target="_blank">API文档</a>&nbsp;&nbsp;&nbsp;<a href="https://github.com/nswish/jQuery.AutoComplete" style="color:white;font-size:12px;text-decoration:none;" target="_blank">源代码</a></span></div>
    </div>
    <div style="width:1000px;margin:auto;">
        <div style="display:table-cell;">
            <div style="height:503px;width:330px;">
            
            	<form action="#" method="post">
            		<tr>
            			<td>
            				<input name="hiddelId" id="hiddelId" type="hidden" ></input>
            				<input type="text" name="testSubmit" id="down" placeholder="请输入" ></input>
            			</td>
            			<td><input type="submit" value="提交" /></td>
            		</tr>
            	</form>
            </div>
        </div>
    </div>
</body>
</html>