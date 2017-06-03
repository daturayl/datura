<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
	<link rel="stylesheet" type="text/css" href="css/list.css">
	<SCRIPT type="text/javascript">
	 
	</SCRIPT>
  </head>
  
  <body>
  <form action="getAll" method="post">
	<table align="center">
		<tr>
			<td>请选择区域:</td>
			<td><select name="goods.goodsdistrict">
				<option>--请选择--</option>
				<option>海淀区订单</option>
				<option>朝阳区订单</option>
				<option>丰台区订单</option>
				<option>西城区订单</option>
				<option>昌平区订单</option>
			</select>
			<input type="submit" value="查询" /></td>
		</tr>
	</table>

     <table align="center" width="600px" height="" border="1" cellpadding="0" cellspacing="0">
       <tr height="40" align="center">
         <td>商品编号</td>
         <td>商品名称</td>
         <td>商品价格</td>
         <td>库存数量</td>
         <td>订单状态</td>
         <td>操作</td>
       </tr>
	       <s:iterator  value="list" status="status">
		       <tr height="40" align="center" <s:if test="#status.count%2==0">style="background-color: gray;"</s:if>>
		         <td><s:property value="id"/></td>
		         <td><s:property value="goodsname"/></td>
		         <td><s:property value="goodsprice"/></td>
		         <td><s:property value="goodscount"/></td>
		         <td><s:property value="billstatus"/></td>
		         <td>
		           <a href="javascript:get('<s:property value="id"/>')">修改</a>&nbsp;
		         </td>
		       </tr>
	       </s:iterator>
     </table>
     </form>
  </body>
</html>
