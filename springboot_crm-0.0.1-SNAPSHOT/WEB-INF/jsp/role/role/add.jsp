<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>      
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>新建角色</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
</head>
<body>

<div class="page_title">新建角色</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="back();">返回</button>
	<button class="common_button" onclick="save('role');">保存</button>  
</div>
<form action="../role/roleAdd.action" id="role">
<table class="query_form_table">
	<tr>
		<th>编号</th>
		<td><input value="自动生成" readonly="readonly"/><span class="red_star">*</span></td>
		<th>角色名称</th>
		<td>
			<input name="roleName" value="" /><span class="red_star">*</span>	
		</td>
	</tr>
	<tr>
		<th>角色描述</th>
		<td colspan="3"><textarea rows="6" name="roleDesc" cols="50"></textarea><span class="red_star">*</span></td>
		
	</tr>	
	<tr>
		<th>是否可用</th>
		<td colspan="3"><input type="radio" name="roleFlag" value="1">是
			<input type="radio" name="roleFlag" value="0">否</td>
	</tr>
</table>
</form>
</body>
</html>