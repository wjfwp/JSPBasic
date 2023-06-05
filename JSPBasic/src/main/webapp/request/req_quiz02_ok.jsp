<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	double cm = Double.parseDouble(request.getParameter("cm"));
	double kg = Double.parseDouble(request.getParameter("kg")) ;
	
	double bmi = kg / (cm/100 * cm/100);
	
	
	//String str = "";
	
	//if(bmi >= 25){
	//	str = "과체중";
	//} else if(bmi <= 18){
	//	str = "저체중";
	//} else {
	//	str = "정상";
	//}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	이름 : <%=name %><br>
	신장 : <%=cm %><br>
	몸무게 : <%=kg %><br>
	
	<% if(bmi <= 18){%>
		<b>과체중 입니다(운동 하세요)</b>
	<% } else if(bmi >= 25){%>
		<b>저체중 입니다(밥좀 드세요)</b>
	<% } else {%>
		<b>정상 입니다(보기 좋구나)</b>
	<% }%>

</body>
</html>