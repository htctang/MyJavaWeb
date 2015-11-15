<%@page import="java.net.URLEncoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'result.jsp' starting page</title>
    
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">

  </head>
  
  <body>
 HELLO WORLD
 现在时间是:<%=new Date().toString() %>
 <!-- include可以包含其他的jsp -->
 <%@include file="testresult.jsp"%><br>
 <% 
 	long startTime = System.nanoTime();
 %>
 输出九九乘法表<br>
<%
	for(int i=1;i<9;i++){
		for(int j=1;j<=i;j++){
			String str = j+"*"+i+"="+j*i;
			out.print(str+"&nbsp");
		}
		out.print("<br>");
	}
	long time = System.nanoTime()-startTime;
 %>
生成九九乘法表耗时<%
	out.println(time/1000);
 %>
 毫秒
 <!--  跳转传值的时候基本上就是跟get方法访问是一样的-->
 <a href="testresult.jsp?id=001&name=我擦">跳转实验</a>
 
 
<form action="testresult.jsp" method="get">
	<ul style="list-style: none;line-height: 30px">
		<li>输入用户姓名：<input type="text" name="name"/><br></li>
		<li>选择姓名:
			<input name="sex" type="radio" value="男"/>男
			<input name="sex" type="radio" value="女"/>女
		</li>
		<li>
			选择密码提示问题:
			<select name="question">
			<option value="母亲的生日">母亲的生日</option>
			<option value="宠物的名字">宠物的名字</option>
			<option value="电脑的配置">电脑的配置</option> 
			</select>
			</li>
		<li>
			请输入问题的答案：<input type="text" name="key" name="key"/>
		</li>
		<li>
		请选择个人爱好:
			<div style="width: 400px">
				<input name="like" type="checkbox" value="唱歌跳舞"/>唱歌跳舞
				<input name="like" type="checkbox" value="上网冲浪"/>上网冲浪
				<input name="like" type="checkbox" value="户外登录"/>户外登陆
				<input name="like" type="checkbox" value="体育运动"/>体育运动
				<input name="like" type="checkbox" value="读书看报"/>读书看报
				<input name="like" type="checkbox" value="欣赏电影"/>欣赏电影
			
			</div>
		</li>
		<li><input type="submit" value="提交"/></li>
	</ul>
</form>
  </body>
</html>
