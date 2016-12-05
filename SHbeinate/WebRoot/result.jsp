<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib prefix="s" uri="/struts-tags"%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'result.jsp' starting page</title>
    
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
   <table border="1">
   <tr>
   		<td>±àºÅ</td><td>ÐÕÃû</td>
   		
   		</tr>
   		<s:iterator value="#request.TestList" var="Test">
   		<tr>
   			<td><s:property value="#Test.id"/></td>
   			<td><s:property value="#Test.name"/></td>
   		</tr>
   		
   		
   		</s:iterator>
   		
   
   
   </table>
   </center>
  </body>
</html>
