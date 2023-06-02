<%@page import="java.util.Set"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//실행될때마다 랜덤한 로또번호를 저장하고 출력해주는 프로그램코드를 작성해보세요.
	//방법은 자유

	Set<Integer> num = new HashSet<>();
	Random r = new Random();

	while(num.size()<6){
		int n = r.nextInt(45) + 1;
		num.add(n);
	}
	
	
	

%>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%= num.toString() %>
	
	<% for(int a : num) { %>
		<%=a %>
	<% } %>

</body>
</html>