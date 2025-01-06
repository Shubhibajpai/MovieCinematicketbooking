package com.ticket.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class Controllerlogout
 */
@WebServlet("/Controllerlogout")
public class Controllerlogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false); 
		 String loggedOutUser = null;
       if (session != null) {
       	loggedOutUser = (String) session.getAttribute("username");
           session.invalidate();
       }
       
       if (loggedOutUser != null) {
          
           request.setAttribute("message1",loggedOutUser + " has successfully logged out.");
       }

       request.setAttribute("message", "You have been successfully logged out.");
       request.getRequestDispatcher("webfile/login.jsp").forward(request, response);
		doGet(request, response);
	}

}
