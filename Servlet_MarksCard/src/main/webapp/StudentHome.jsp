<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Home</title>
<%@include file="studenthomecomponent/allcss.jsp" %>
</head>
<body>
<%@include file="studenthomecomponent/navbar.jsp"%>
<center>
<div style="color: lightblue" >
<h1>Welcome to Student Home</h1><br>
<a href="SelectClass.jsp"><button>Add Marks</button></a><br><br>
<a href="selectMarksCard.jsp"><button>View MarksCard</button></a>
</div>
</center>
</body>
</html>