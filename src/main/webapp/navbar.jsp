
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="all_css_js.jsp"%>

</head>
<body>
	<nav class="navbar navbar-expand-lg nav-color fixed-top zIndex-3">
		<div class="container-fluid ">
			<a class="navbar-brand ms-2 nav-text-color" href="index.jsp">HIBERNATE
				GUI CRUD</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
					<li class="nav-item"><a class="nav-link active nav-text-color"
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link nav-text-color"
						href="addNotes.jsp">Add Note</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle nav-text-color" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Dropdown </a>
						<ul class="dropdown-menu nav-color mt-2 dropd">
							<li><a class="dropdown-item nav-text-color" href="#">Action</a></li>
							<li><a class="dropdown-item nav-text-color" href="#">Another
									action</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item nav-text-color"
								href="./LogoutServlet">LogOut</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link nav-text-color"
						aria-disabled="true" href="allNotes.jsp">Show Notes</a></li>
				</ul>
				<form class="d-flex" role="search">
					<button type="button" class="btn btn-outline-light me-2 tbtn"
						id="theme-btn">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" id="theme-icon"
							class="bi bi-brightness-high theme-icon" viewBox="0 0 16 16">
  <path id="theme-icon"
								d="M8 11a3 3 0 1 1 0-6 3 3 0 0 1 0 6m0 1a4 4 0 1 0 0-8 4 4 0 0 0 0 8M8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0m0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13m8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5M3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8m10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0m-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0m9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707M4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708"></path>
</svg>
					</button>

					<a href="./LogoutServlet" class="btn btn-outline-light me-2 tbtn"
						id="theme-btn">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 448 512">
							<path
								d="M144 144l0 48 160 0 0-48c0-44.2-35.8-80-80-80s-80 35.8-80 80zM80 192l0-48C80 64.5 144.5 0 224 0s144 64.5 144 144l0 48 16 0c35.3 0 64 28.7 64 64l0 192c0 35.3-28.7 64-64 64L64 512c-35.3 0-64-28.7-64-64L0 256c0-35.3 28.7-64 64-64l16 0z" /></svg>
					</a>



					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-light " type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>



</body>