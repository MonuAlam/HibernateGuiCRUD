package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.FactoryProvider;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");

            System.out.println(email + " " + pass);
            
            HttpSession httpSessions=request.getSession();
            httpSessions.setAttribute("email", email);
            httpSessions.setAttribute("pass", pass);

            Session session = FactoryProvider.getFactory().openSession();
            Transaction transaction = session.beginTransaction();

            User user = (User) session.get(User.class, email);

            if (user == null) {
                System.out.println("User not found");
                response.sendRedirect("register.jsp?message=User Not Found");
            }

            String currentUser = user.getEmail();
            String currentUserPass = user.getPassword();

            System.out.println(currentUser);
            System.out.println(currentUserPass);

            if (currentUser.equals(email) && currentUserPass.equals(pass)) {
                System.out.println("User true");
                response.sendRedirect("index.jsp");;
            } else {
                System.out.println("User false");
                response.sendRedirect("login.jsp");
            }

            transaction.commit();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
