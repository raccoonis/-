<%@page import="java.sql.*"%>
<%@ page import="db.DB" %>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");
String id = request.getParameter("member_id");
String pw = request.getParameter("member_passwd");

try{
	DB db = new DB();
	String queryStr = "SELECT * FROM login WHERE id = ? AND pw = ?";
	ResultSet rs = db.query(queryStr, new String[] {id, pw});
	
	
	if(rs.next()){
		id = rs.getString("id");
		String name = rs.getString("name");
	
		session.setAttribute("user_id", id);
		session.setAttribute("user_name", name);
		
		response.sendRedirect("login_welcome.jsp"); // 페이지이동
		
	} else{ // 로그인 실패
		response.sendRedirect("login_fail.jsp"); // 실패 페이지
	}
}catch(Exception e){
	e.printStackTrace();
}

%>