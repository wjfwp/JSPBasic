<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//java
	//String name = (String)session.getAttribute("name");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>세션값은 sessionScope생략할 수 있지만, 적어 주는 게 좋습니다. </h3>
	${sessionScope.name }<br>
	${sessionScope.id }<br>

	${applicationScope.count }<br>


</body>
</html>