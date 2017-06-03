<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
		<form>
			<table  align="center" border="1" width="" height="" cellpadding="0" cellspacing="0">
				<tr height="40">
					<td>商品编号</td>
					<td><input type="text" value="${goods.id} "/></td>
				</tr>
				<tr height="40">
					<td>商品名称</td>
					<td><input type="text" value="${goods.goodsname }"/></td>
				</tr>
				<tr height="40">
					<td>商品价格</td>
					<td><input type="text" value="${goods.goodsprice }"/></td>
				</tr>
				<tr height="40">
					<td>库存数量</td>
					<td><input type="text" value="${goods.goodscount }"/></td>
				</tr>
				<tr height="40">
					<td>订单状态</td>
					<td>
						<select>
							<option>已处理</option>
							<option>处理中</option>
						</select>
					</td>
				</tr>
				<tr height="40">
					<td>
						<input type="submit" value="提交"/>
						<input type="submit" value="返回"/>	
					</td>
				</tr>
			</table>
		</form>
  </body>
</html>
