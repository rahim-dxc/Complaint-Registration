<%@page import="dxc.comp.ComplaintCrud"%>
<%@page import="dxc.comp.Complaint"%>
<%@page import="dxc.comp.Resolve"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="addResolve.jsp">
	<center>
	
Complaint Id:
<input type="text" name="complaintId" /> <br/><br/>
Resolved By:
<input type="text" name="resolvedBy" /> <br/><br/>

Resolved Comments:
<input type="text" name="rComments" /> <br/><br/>
<input type="submit" value="submit" /> <br/><br/>
<%
	String id="";	
	String resolve="";
	String comment="";
if (request.getParameter("complaintId") != null){
	id=request.getParameter("complaintId");
	resolve=request.getParameter("resolvedBy");
	comment=request.getParameter("rComments");
%>
<jsp:useBean id="complaintId" class="dxc.comp.Resolve" />
	<jsp:setProperty property="*" name="complaintId"/>
	<%=new ComplaintCrud().addResolve(complaintId) %>
	<%
		}
	%>
</body>
</html>