<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>服务归档</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
</head>
<body>

<div class="page_title">客户服务管理 &gt; 服务归档</div>
<div class="button_bar">
	<button class="common_button" onclick="help('');">帮助</button>
	<button class="common_button" onclick="reload();">查询</button>  
</div>
<table class="query_form_table">
	<tr>
		<th height="28">客户</th>
		<td><input /></td>
		<th height="28">概要</th>
		<td><input /></td>
		<th height="28">服务类型</th>
		<td>
			<select name="D1">
				<option>全部</option>
				<option>咨询</option>
				<option>建议</option>
				<option>投诉</option>
			</select>
		</td>
	</tr>
	<tr>
		<th height="32">创建日期</th>
		<td colspan="3">
			<input name="T2" size="10" /> - <input name="T1" size="10" /></td>
		<th height="32">状态</th>
		<td>
			<select name="D1">
				<option>全部</option>
				<option>新创建</option>
				<option>已归档</option>
				<option>已处理</option>
				<option>已反馈</option>
				<option>已归档</option>
			</select>
		</td>
	</tr>
</table>
<br />
<table class="data_list_table">
	<tr>
		<th>编号</th>
		<th>客户</th>
		<th>概要</th>
		<th>服务类型</th>
		<th>创建人</th>
		<th>创建日期</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<tr>
		<td class="list_data_number">456</td>
		<td class="list_data_text">太阳药业</td>
		<td class="list_data_ltext">询问收音机订单运费承担方式</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
						
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">455</td>
		<td class="list_data_text">太阳药业</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
									
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">454</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
									
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">453</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">建议</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		
		<td class="list_data_text">已归档</td>
		
		<td class="list_data_op">
									
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">452</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">咨询</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
									
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">451</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">投诉</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
									
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>	
	<tr>
		<td class="list_data_number" height="15">540</td>
		<td class="list_data_text" height="15">云南天河烟草公司</td>
		<td class="list_data_ltext" height="15">询问收音机价格</td>
		<td class="list_data_text" height="15">建议</td>
		<td class="list_data_text" height="15">小明</td>
		<td class="list_data_text" height="15">2007年12月02日</td>
		<td class="list_data_text" height="15">已归档</td>
		<td class="list_data_op" height="15">
						
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>	
	<tr>
		<td class="list_data_number" height="35">439</td>
		<td class="list_data_text" height="35">云南天河烟草公司</td>
		<td class="list_data_ltext" height="35">询问收音机价格</td>
		<td class="list_data_text" height="35">咨询</td>
		<td class="list_data_text" height="35">小明</td>
		<td class="list_data_text" height="35">2007年12月02日</td>
		<td class="list_data_text" height="35">已归档</td>
		<td class="list_data_op" height="35">
									
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">438</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">建议</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
									
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	<tr>
		<td class="list_data_number">437</td>
		<td class="list_data_text">云南天河烟草公司</td>
		<td class="list_data_ltext">询问收音机价格</td>
		<td class="list_data_text">建议</td>
		<td class="list_data_text">小明</td>
		<td class="list_data_text">2007年12月02日</td>
		<td class="list_data_text">已归档</td>
		<td class="list_data_op">
									
			<img onclick="to('detail.html');" title="查看" src="../../images/bt_detail.gif" class="op_button" /></td>
	</tr>
	<tr>
		<th colspan="8" class="pager">
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