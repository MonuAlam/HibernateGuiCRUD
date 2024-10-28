<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CREATE OPERATION</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
<%
		String email = (String) session.getAttribute("email");
	%>
	<div class="container text-center text-success mrgn-top">
			<h1>
				<%=email%>
			</h1>
		</div>
	
	<div class="container w-50  addformcolorbody">
		<form action="SaveNoteServlet" method="post">
			<div class="mb-3 ">
				<label for="exampleInputEmail1" class="form-label">Note
					Title</label> 
					<input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" name="title" required >
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Node Content</label>
	<textarea id="content" class="form-control" rows="10" cols="10" required name="content"></textarea>
	
			</div>
			<div class="container text-center mb-3">
						<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
			<%@include file="footer.jsp"%>
	
</body>
</html>