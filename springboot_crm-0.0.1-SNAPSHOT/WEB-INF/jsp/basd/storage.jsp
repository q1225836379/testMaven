<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>产品查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../script/common.js"></script>
</head>
<body>

<div class="page_title">产品查询</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="save('storage');">查询</button>  
</div>
<form action="../storage/list.action" id="storage">
<table class="query_form_table">
	<tr>
		<th>产品</th><!-- 后端使用Storage接收  商品的名字;传递到前端是pageInfo-->
		<td><input name="product.prodName" value="${pageInfo.entity.product.prodName}"/></td>
		<th>仓库</th>
		<td><input name="stkWarehouse" value="${pageInfo.entity.stkWarehouse}"/></td>
		<th>&nbsp;</th>
		<td>&nbsp;</td>
	</tr>
</table>
<br />
</form>
<table class="data_list_table">
	<tr>
		<th>序号</th>
		<th>产品</th>
		<th>仓库</th>
		<th>货位</th>
		<th>件数</th>
		<th>备注</th>
	</tr>
	<c:forEach items="${pageInfo.lists}" var="storage">
	<tr>
		<td class="list_data_number">${storage.stkId}</td>
		<td class="list_data_ltext">${storage.product.prodName}-${storage.product.prodType}-${storage.product.prodBatch}</td>
		<td class="list_data_ltext">${storage.stkWarehouse}</td>
		<td class="list_data_text">${storage.stkWare}</td>
		<td class="list_data_number">${storage.stkCount}</td>
		<td class="list_data_ltext">${storage.stkMemo}</td>		
	</tr>
	</c:forEach>
	<tr>
		<th colspan="100" class="pager">
<div class="pager">
	共59条记录 每页<input value="10" size="2" />条
	第<input value="1" size="2"/>页/共5页
	<a href="#">第一页</a>
	<a href="#">上一页</a>
	<a href="#">下一页</a>
	<a href="#">最后一页</a>
	转到<input value="1" size="2" />页
	<button width="20" onclick="reload();">GO</button>
</div>
		</th>
	</tr>
</table>
</body>
</html>