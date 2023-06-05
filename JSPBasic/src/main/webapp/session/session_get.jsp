<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션값의 사용
	//한번 생성이 되었다면, 어디서든 기본값(30분)까지 사용할 수 있습니다.
	String id = (String)session.getAttribute("user_id"); //키를 주면 값을 줌
	String name = (String)session.getAttribute("user_name");
	
	//시간확인
	int time = session.getMaxInactiveInterval();
	
	//세션값의 특정값 삭제
	session.removeAttribute("user_id"); //user_id가 삭제
		
	//세션 값의 무효화(모든 값 삭제)
	session.invalidate();
	
%>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	세션에 저장된 user_id: <%=id %><br>
	세션에 저장된 user_name: <%=name %><br>
	세션에 유지시간: <%=time %> <br>

</body>
</html>