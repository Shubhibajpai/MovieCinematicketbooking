package com.ticket.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.ticket.service.UserRepoImpl;


/**
 * Servlet implementation class Controllerlogin
 */
@WebServlet("/Controllerlogin")
public class Controllerlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UserRepoImpl user= new UserRepoImpl();
        boolean validUser = user.validateUser(email, password);

        if (validUser) {
        	HttpSession session = request.getSession();
			session.setAttribute("username",request.getParameter("email"));
			request.setAttribute("showPopup",true);
			request.setAttribute("msg", "Logged in Successfully..."); 
        	request.getRequestDispatcher("webfile/index.jsp").forward(request, response);
        } 
        else {
            // Invalid credentials, show error message
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.setAttribute("showPopup",true);
            request.getRequestDispatcher("webfile/signup.jsp").forward(request, response);
            
           
        }
	}      
}