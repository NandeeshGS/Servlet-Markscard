<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student</title>
<%@include file="studentsignupcomponent/allcss.jsp" %>
</head>
<body>
<%@include file="studentsignupcomponent/navbar.jsp" %>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Welcome to Student Details</p>
						<form action="studentsignup" method="post" enctype="multipart/form-data">
						<div class="mb-3">
								<label class="form-label">Full Name</label> <input 
									name="name" type="text" class="form-control" placeholder="Enter your name" required="required">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Email</label> <input 
									name="email" type="email" class="form-control" placeholder="Enter your email" required="required">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Mobile</label> <input 
									name="mobile" type="tel" class="form-control" placeholder="Enter your phone number" required="required" pattern="[0-9]{10}" maxlength="10">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="standard"
									required class="form-control">
									<option>--select--</option>
									<option value="8">--8--</option>
									<option value="9">--9--</option>
									<option value="10">--10--</option>
								</select>
							</div>
							
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" class="form-control" placeholder="Enter your password" required="required">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Upload your Picture</label> <input
									name="pic" type="file" class="form-control" required="required">
							</div>
							
							<button type="submit" class="btn bg-success text-white col-md-12">Submit</button><br><br>
							<button type="reset" class="btn bg-success text-white col-md-12">reset</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>