<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'input.jsp' starting page</title>
    
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
   <center>
   <form action="input.action" method="post">
   <table>
   		<tr><td colspan="2">录入</td></tr>
   		<tr><td colspan="2"><s:actionmessage/></td></tr>
<!--    		 <tr> -->
<!--    				//<td>编号:</td> -->
<!--    				//<td><input type="text" name="ID"/></td> -->
<!--    		</tr>  -->
   		<tr>
   				<td>姓名:</td>
   				<td><input type="text" name="name"/></td>
   		</tr>
   		<tr>
   			<td colspan="2">
   					<input type="submit" value="录入"/>
   					<input type="reset"  value="重置"/>
   					<a href="select.action">查询</a>
   					</td>
   					
   		</tr>
   
   
   
   </table>
   </form>  
   
   </center>
  </body>
</html>
