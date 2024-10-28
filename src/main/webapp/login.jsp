<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="all_css_js.jsp"%>

</head>
<body>


	<div class="login-page bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="bg-white shadow rounded mt-4">
						<div class="row">
							<div class="col-md-7 pe-0">
								<div class="form-left h-100 py-5 px-5">
									<form action="LoginServlet" method="post" class="row g-4">
										<div class="col-12">
											<label>Username/Email<span class="text-danger">*</span></label>
											<div class="input-group">
												<div class="input-group-text">
													<i class="bi bi-person-fill"></i>
												</div>
												<input type="text" class="form-control" name="email"
													placeholder="Enter Username/Email">
											</div>
										</div>

										<div class="col-12">
											<label>Password<span class="text-danger">*</span></label>
											<div class="input-group">
												<div class="input-group-text">
													<i class="bi bi-lock-fill"></i>
												</div>
												<input type="password" class="form-control" name="pass"
													placeholder="Enter Password">
											</div>
										</div>


										<div class="col-sm-12">
											<a href="forgotpassword.jsp" class="float-end text-primary">Forgot
												Password?</a>
										</div>

										<div class="container text-center mt-2">
											<button type="submit" class="btn btn-primary">Login</button>

											<a href="register.jsp" class="btn btn-danger">Register</a>

										</div>

									</form>
								</div>
							</div>
							<div class="col-md-5 ps-0 d-none d-md-block">
								<div
									class="form-right h-100 nav-color text-white text-center pt-5">
									<h2 class="fs-1">
										HIBERNATE GUI CRUD<br> <span class="text-dark">LOGIN</span>
										<%
											String message = request.getParameter("message");
										%>

										<%
											if (message != null) {
										%>
										<p style="color: rgb(25, 252, 25);">
											<%=message%>
										</p>
										<%
											}
										%>
									</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>