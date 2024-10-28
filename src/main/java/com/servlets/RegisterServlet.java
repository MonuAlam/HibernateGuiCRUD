package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.FactoryProvider;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			String email = request.getParameter("email");
			String pass = request.getParameter("pass");

			Session session = FactoryProvider.getFactory().openSession();
			Transaction transaction = session.beginTransaction();

			User user = new User(email, pass);

			User user2 = (User) session.get(User.class, email);
			if (user2.getEmail().equals(email)) {
				response.sendRedirect("login.jsp?message=User Allready registered!");
			} else {
				session.save(user);
				transaction.commit();

				response.sendRedirect("login.jsp?message=User Register Succussfully!");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
