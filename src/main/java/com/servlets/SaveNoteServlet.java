package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import antlr.debug.NewLineEvent;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			// fetch tile and content

			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			HttpSession httpsession=request.getSession();
			String email=(String)httpsession.getAttribute("email");
			
		Note note = new Note(title, content, new Date(),email);

			// hibernate save()

			Session session = FactoryProvider.getFactory().openSession();

			Transaction transaction = session.beginTransaction();

			session.save(note);
			transaction.commit();
			session.close();

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			response.sendRedirect("allNotes.jsp?message=Note Added Successfully");
			/*
			 * out.println("<h1 style='text-align:center;'>Note Added Successfully</h1>");
			 * out.
			 * println("<h1 style='text-align:center;'><a href='allNotes.jsp'>View All notes</a></h1>"
			 * );
			 */
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
