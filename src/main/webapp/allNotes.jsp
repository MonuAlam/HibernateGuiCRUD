<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>READ OPERATION</title>
<%@include file="all_css_js.jsp"%>

</head>
<body>
	<div class="container-fluid g-0">
		<%@include file="navbar.jsp"%>
	</div>
	<%
		String email = (String) session.getAttribute("email");
		String message = request.getParameter("message");
	%>
	<div class="container text-center text-success mrgn-top">
		<h1>
			<%=email%>
		</h1>
	</div>

	<div class="container text-center">
		<h3><%
		if(message!=null){%>
			<%=message%>
			<%} %>
		</h3>
	</div>
	<div class="container w-50  ">
		<div class="row mrgn-top mb-3 ">
			<%
				Session session2 = FactoryProvider.getFactory().openSession();
				Query query = session2.createQuery("from Note where email = :userEmail");
				query.setParameter("userEmail", email);

				List<Note> list = query.list();
				for (Note note : list) {
			%>
			<div class="card text-center p-0 mt-2 allNotecard">
				<div class="card-header allNoteheadfoot">
					<h3><%=note.getId()%></h3>
				</div>
				<div class="card-body">
					<h5 class="card-title"><%=note.getTitle()%></h5>
					<p class="card-text"><%=note.getContent()%></p>
					<a href="DeleteServlet?note_id=<%=note.getId()%>"
						class="btn btn-danger">Delete</a> <a
						href="update.jsp?note_id=<%=note.getId()%>"
						class="btn btn-primary">Update</a>

				</div>
				<div class="card-footer text-muted allNoteheadfoot"><%=note.getAddedDate()%></div>
			</div>
			<%
				}
				session2.close();
			%>
		</div>

	</div>

	<%@include file="footer.jsp"%>


</body>
</html>