<%@page import="java.sql.Date"%>
<%@page import="dxc.comp.ComplaintCrud"%>
<%@page import="dxc.comp.Complaint"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="Complaint.jsp">
	<center>
	Complaint Id:
<input type="text" name="complaintId" /> <br/><br/>
Complaint Type:
<select name="complaintType">
<option value="Keyboard">keyboard</option>
<option value="mouse">Mouse</option>
<option value="network">Network</option>
<option value="permission">permission</option>
</select><br></br>
Description
<input type="text" name="description" /> <br/><br/>

Complaint date:
<input type="date" name="cDate" /> <br/><br/>

Turn Around Time:
<input type="text" name="tat" /> <br/><br/>


Severity :
<input type="number" name="severity" /> <br/><br/>

 Complaint Status:
<input type="text" name="cStatus" value="pending"  readonly="readonly" /> <br/><br/>


<input type="submit" value="Register" /> <br/><br/>
<jsp:useBean id="complaint" class="dxc.comp.Complaint"/>
<jsp:setProperty property="complaintType" name="complaint"/>
<jsp:setProperty property="description" name="complaint"/>
<jsp:setProperty property="severity" name="complaint"/>
<jsp:setProperty property="cStatus" name="complaint"/>
<%
	if(request.getParameter("complaintType")!=null 
	&& request.getParameter("description")!=null
	&& request.getParameter("severity")!=null
	&& request.getParameter("cStatus")!=null){
		String date=request.getParameter("cDate");
		Date sd= Date.valueOf(cDate);
		complaint.setcDate(sd);
	}
%>
<%=new ComplaintCrud().addComplaint(complaint) %>

</form>
</center>
</body>
</html>