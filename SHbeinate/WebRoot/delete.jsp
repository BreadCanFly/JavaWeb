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
    
    <title>My JSP 'delete.jsp' starting page</title>
    
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
   <form action="delete.action" method="post">
   <table>
   		<tr><td colspan="2">É¾³ý</td></tr>
   		<tr><td colspan="2"><s:actionmessage/></td></tr>
  		 <tr> 
 				<td>±àºÅ:</td> 
  				<td><input type="text" name="id"/></td> 
   		</tr>  
  		<tr> 
    				<td>ÐÕÃû:</td> 
				<td><input type="text" name="name"/></td> 
    		</tr> 
   		<tr>
   			<td colspan="2">
   					<input type="submit" value="É¾³ý"/>
   					<input type="reset"  value="ÖØÖÃ"/>
   					<a href="select.action">²éÑ¯</a>
   					</td>
   					
   		</tr>
   
   
   
   </table>
   </form>  
   
   </center>
  </body>
</html>
