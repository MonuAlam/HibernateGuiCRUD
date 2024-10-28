<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HIBERNATE GUI CRUD</title>
<%@include file="all_css_js.jsp"%>

</head>
<body>
	<div class="container-fluid g-0">
		<%@include file="navbar.jsp"%>
	</div>
	<%
		String email = (String) session.getAttribute("email");
	%>
	
	<div class="container-fluid g-0 relative-top ">
		<div id="carouselExampleAutoplaying" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleAutoplaying"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleAutoplaying"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleAutoplaying"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleAutoplaying"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
				<button type="button" data-bs-target="#carouselExampleAutoplaying"
					data-bs-slide-to="4" aria-label="Slide 5"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/img1.jpg" class="d-block w-100 slider-height"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="img/img2.png" class="d-block w-100 slider-height"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="img/img3.png" class="d-block w-100 slider-height"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="img/img4.png" class="d-block w-100 slider-height"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="img/img5.png" class="d-block w-100 slider-height"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<div class="container text-center text-success">
			<h1>
				<%=email%>
			</h1>
		</div>

		<div class="container-fluid">
			<div class="row " id="showApiData"></div>
		</div>
		<%@include file="footer.jsp"%>
</body>
</html>