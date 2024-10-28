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

public class FogotPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String email=request.getParameter("email");
			String pass=request.getParameter("pass");
			
			Session session=FactoryProvider.getFactory().openSession();
			Transaction transaction=session.beginTransaction();
		User user=(User)session.get(User.class, email);
		if(user==null) {
			System.out.println("User not found");
			response.sendRedirect("register.jsp");
		}
		
		String currentUserEmail=user.getEmail();
		System.out.println(currentUserEmail);
		
		if(currentUserEmail.equals(email)) {
			user.setPassword(pass);
			response.sendRedirect("login.jsp?message=PasswordSuccessfully Forgoted!");
		}
			transaction.commit();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
