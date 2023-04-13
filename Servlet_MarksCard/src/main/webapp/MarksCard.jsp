
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.util.List"%>
<%@page import="dao.MarksCardDao"%>
<%@page import="dto.MarksCard"%>
<%@page import="dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MarksCard</title>
</head>
<body><table style="border: 1px solid;color: black;background-color: lightgreen;width: 50%";class="center">
	<%
	Student student = (Student) session.getAttribute("student");
	MarksCard card = null;
	int std = Integer.parseInt(request.getParameter("std"));
	List<MarksCard> list = student.getCards();
	for (MarksCard card2 : list) {
		if (card2.getStandard() == std) {
			card = card2;
		}
	}
	%>
	
	
	<tr>
	<td>
	<h1 align="center">
		MarksCard for Class-
		<%=card.getStandard()%></h1>
	<br>
	<br>
    <tr>
	<td>
	<%
	String base64= Base64.encodeBase64String(student.getPicture());
	%>
	<img height="100" width="100" alt="unknown"
		src="data:image/jpeg;base64,<%=base64%>">

	<br>
	<br>
	<tr>
	<td>
	<h1 style="color: black">
		Name:
		<%=student.getName()%><br> Register Number:
		<%=student.getRegno()%><br>
	</h1>
	<br>
	<tr style="padding-left: 70px">
	<td>
	<table border="1" >
		<tr>
			<th>Subject</th>
			<th>Total Marks</th>
			<th>Marks Obtained</th>
		</tr>
		<tr>
			<th>Kannada</th>
			<th>100</th>
			<th><%=card.getKannada()%></th>
		</tr>
		<tr>
			<th>English</th>
			<th>100</th>
			<th><%=card.getEnglish()%></th>
		</tr>
		<tr>
			<th>Hindi</th>
			<th>100</th>
			<th><%=card.getHindi()%></th>
		</tr>
		<tr>
			<th>Mathematics</th>
			<th>100</th>
			<th><%=card.getMathematics()%></th>
		</tr>
		<tr>
			<th>Science</th>
			<th>100</th>
			<th><%=card.getScience()%></th>
		</tr>
		<tr>
			<th>Social Science</th>
			<th>100</th>
			<th><%=card.getSocialscience()%></th>
		</tr>
	</table>
	<br>
	<br>
	<tr>
	<td>
	<h1>
		Percentage:
		<%=card.getPercentage()%><br> Result:
		<%=card.getResult()%>
	</h1>
	
	</style>
	
</body>
</html>