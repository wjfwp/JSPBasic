<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String id_check = request.getParameter("id_ckeck"); //아이디 기억하기
	
	
	//아이디 기억하기
	if(id_check != null){
		Cookie coo = new Cookie("id_check", id);
		coo.setMaxAge(30);
		response.addCookie(coo);
	}
	
	
	//아이디 aaa123 비밀번호 1234라면 로그인 성공이라고 간주
	
	if(id.equals("aaa123") && pw.equals("1234")){
		
		//로그인 아이디를 저장하는 쿠키
		Cookie coo = new Cookie("user_id", id);
		coo.setMaxAge(1800); //30분
		response.addCookie(coo);
		
		
		response.sendRedirect("cookie_ex01_welcome.jsp"); //성공
		
	} else {	
		response.sendRedirect("cookie_ex01.jsp"); //실패
	}
	
	

%>
