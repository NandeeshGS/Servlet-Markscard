<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@include file="component/allcss.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp"%>


<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Login</p>
						<form action="login" method="post">
							<div class="mb-3">
								<label class="form-label">Register Number/Employee Id</label> <input
									name="regemp" type="number" class="form-control" placeholder="Enter your Id" pattern="[0-9]{6}" required="required">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input 
									name="password" type="password" class="form-control" placeholder="Enter password" required="required">
							</div>
							
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button><br><br>
							<button type="reset" class="btn bg-success text-white col-md-12">cancel</button>
						</form>
						<br> Don't have an account? <a href="Signup.jsp"
							class="text-decoration-none"> create one</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>