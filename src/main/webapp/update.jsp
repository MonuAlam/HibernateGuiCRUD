<!doctype html>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<title>UPDATE OPERATION</title>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="all_css_js.jsp"%>

</head>
<body>
	<div class="container-fluid g-0">
		<%@include file="navbar.jsp"%>
	</div>


	<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session session2 = FactoryProvider.getFactory().openSession();
		Note note = (Note) session2.get(Note.class, noteId);
	%>
	<div class="container mt-5 w-50">
		<form action="UpdateServlet" method="post">
			<div class="mb-3 ">
				 <input type="hidden"  class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" name="note_id"
					required value="<%=note.getId()%>">
			</div>

			<div class="mb-3 ">
				<label for="exampleInputEmail1" class="form-label">Note
					Title</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp" name="title"
					required value="<%=note.getTitle()%>">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Node Content</label>
				<textarea id="content" class="form-control" rows="8" cols="10"
					required name="content"><%=note.getContent()%></textarea>

			</div>
			<div class="container text-center mb-3">
				<button type="submit" class="btn btn-success">Update</button>
			</div>
		</form>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>