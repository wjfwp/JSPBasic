<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
<%@ page errorPage="error_view.jsp" %> 
 --%>
<%@ page errorPage="error_view.jsp" %> 
<!-- 에러발생시 보여줄 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="/session_login.jsp">404에러발생</a>
	
	<%
		//error 500
		String num = request.getParameter("num");
		Integer.parseInt(num);
	
	%>


</body>
</html>