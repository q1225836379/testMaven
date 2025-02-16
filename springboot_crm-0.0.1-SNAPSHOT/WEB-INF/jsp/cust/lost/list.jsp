<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>     
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>客户流失管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
</head>
<body>

<div class="page_title">客户流失管理</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="save('lost');">查询</button>  
</div>
<form action="../lost/list.action" id="lost">
<table class="query_form_table">
	<tr>
		<th>客户</th>
		<td><input name="lstCustName" value="${pageInfo.entity.lstCustName}"/></td>
		<th>客户经理</th>
		<td><input name="lstCustManagerName" value="${pageInfo.entity.lstCustManagerName}"/></td>
		<th>状态</th>
		<td>
			<!--  预警，暂缓，确认 对应1,2,3 -->
			<select name="lstStatus">
				<option value="">全部</option>
				<option value="1">预警</option>
				<option value="2">暂缓流失</option>
				<option value="3">确认流失</option>
			</select>
		</td>
	</tr>
	</table>
</form>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户</th>
		<th>客户经理</th>
		<th>上次下单时间</th>
		<th>确认流失时间</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${pageInfo.lists}" var="lost" >
	
	<tr>
		<td class="list_data_number">${lost.lstId}</td>
		<td class="list_data_text">${lost.lstCustName}</td>
		<td class="list_data_ltext">${lost.lstCustManagerName}</td>
		<td class="list_data_text">${lost.lstLastOrderDate}</td>
		<td class="list_data_text">${lost.lstLostDate}</td>
		<td class="list_data_text">
		<!-- 1,2,3换成对应的展示-->
		<c:if test="${lost.lstStatus==1}">预警</c:if>
		<c:if test="${lost.lstStatus==2}">暂缓流失</c:if>
		<c:if test="${lost.lstStatus==3}">确定流失</c:if>
		</td>
		<td class="list_data_op">
			<c:if test="${lost.lstStatus==1}">
				<img onclick="to('../lost/toConfirm.action?lstId=${lost.lstId}&page=confirm');" title="确认流失" src="${pageContext.request.contextPath}/images/bt_confirm.gif" class="op_button" />
				<img onclick="to('../lost/toRelay.action?lstId=${lost.lstId}&page=relay');" title="暂缓流失" src="${pageContext.request.contextPath}/images/bt_relay.gif" class="op_button" />
				<img onclick="to('../lost/toDetail.action?lstId=${lost.lstId}&page=detail');" title="详情" src="${pageContext.request.contextPath}/images/bt_detail.gif" class="op_button" />
			
			</c:if>
			<c:if test="${lost.lstStatus==2}">
				<img onclick="to('../lost/toConfirm.action?lstId=${lost.lstId}&page=confirm');" title="确认流失" src="${pageContext.request.contextPath}/images/bt_confirm.gif" class="op_button" />
			    <img onclick="to('../lost/toDetail.action?lstId=${lost.lstId}&page=detail');" title="详情" src="${pageContext.request.contextPath}/images/bt_detail.gif" class="op_button" />
			
			</c:if>
			<c:if test="${lost.lstStatus==3}">
				<img onclick="to('../lost/toRelay.action?lstId=${lost.lstId}&page=relay');" title="暂缓流失" src="${pageContext.request.contextPath}/images/bt_relay.gif" class="op_button" />
				<img onclick="to('../lost/toDetail.action?lstId=${lost.lstId}&page=detail');" title="详情" src="${pageContext.request.contextPath}/images/bt_detail.gif" class="op_button" />
			
			</c:if>

		</td>
	</tr>
	</c:forEach>
	<tr>
		<th colspan="7" class="pager">
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