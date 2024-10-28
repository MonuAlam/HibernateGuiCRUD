<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FORGOT PASSWORD</title>
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
									<form action="FogotPassServlet" method="post" class="row g-4">
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



										<div class="container text-center mt-3">
											<a href="login.jsp" class="btn btn-warning">Login</a>

											<button type="submit" class="btn btn-success">Update</button>


										</div>

									</form>
								</div>
							</div>
							<div class="col-md-5 ps-0 d-none d-md-block">
								<div
									class="form-right h-100 nav-color text-white text-center pt-5">
									<h2 class="fs-1">
										HIBERNATE GUI CRUD<br> <span class="text-dark">FORGOT
											PASSWORD</span>
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