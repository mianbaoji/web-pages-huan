<%@page import="com.bit.common.userInfoTable"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String user = (String)session.getAttribute("user");
if(user == null)
{
%>
<jsp:forward page = "index.jsp"></jsp:forward>
<%}%>