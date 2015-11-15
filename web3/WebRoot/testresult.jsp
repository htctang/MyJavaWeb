<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'testresult.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
    这是唐川的测试 <br>
    id参数传递的值是:<%=request.getParameter("id")%>
    <li>输入的用户的姓名：<%=request.getParameter("name") %></li>
    <li>选择的性别：<%=request.getParameter("sex") %></li>
    <%-- name参数传递的值是:<%=new String(request.getParameter("name").getBytes("utf-8")) %> --%>
  </body>
</html>
