
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="isLogin.jsp"></jsp:include>
<%
session.removeAttribute("user");
%>
<jsp:forward page = "index.jsp"></jsp:forward>
<%%>