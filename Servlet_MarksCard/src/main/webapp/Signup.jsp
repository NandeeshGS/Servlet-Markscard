<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
<%@include file="component/allcss.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Choose your role</p>
						<form action="signup">
							<div class="mb-3">
							Teacher <input type="radio" name="role" value="Teacher" >
							</div>
							<div class="mb-3">
							Student <input type="radio" name="role" value="Student" ><br> <br>
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Submit</button><br><br>
							<a href="login.jsp" class="btn bg-success text-white col-md-12">Back</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>