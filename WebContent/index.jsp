<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="org.apache.shiro.subject.Subject,org.apache.shiro.SecurityUtils"%>
<!DOCTYPE html>
<html>
<head>
	<title>java-shiro-cas-client-demo</title>
	<meta charset="UTF-8" />
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="active"><a href="${pageContext.request.contextPath}/index.jsp">You are on the /index.jsp page</a></li>
			<li><a href="${pageContext.request.contextPath}/protected/index.jsp">Call the /protected/index.jsp page</a></li>
			<!-- #### change with your own CAS server and your host name #### -->
			<li><a href="http://cas.test1:8888/cas/logout?service=http://cas.client3:8080/shiro-cas">Call the CAS logout</a></li>
		</ul>
		<% Subject subject = SecurityUtils.getSubject(); %>
		<h3>
			<p>用户名 : <%=subject.getPrincipals()%></p>
			<p>是否登录 : <%=subject.isAuthenticated()%></p>
		</h3>
	</div>
</body>
</html>
