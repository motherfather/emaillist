<%@page import="com.bit2016.emaillist.vo.EmailListVo"%>
<%@page import="com.bit2016.emaillist.dao.EmailListDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmailListVo vo = new EmailListVo();
	vo.setLastName(lastName);
	vo.setFirstName(firstName);
	vo.setEmail(email);
	
	EmailListDao dao = new EmailListDao();
	dao.insert(vo);
	
	// redirect
	response.sendRedirect("/emaillist");
%>