<%@page import="com.bit.common.userInfoTable"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<%userInfoTable user = (userInfoTable)session.getAttribute("user");
if(user == null)
{
%>
<jsp:forward page = "index.jsp"></jsp:forward>
<%}%>