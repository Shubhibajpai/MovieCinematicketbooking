package com.ticket.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.ticket.service.UserRepoImpl;
import com.ticket.model.Users;

@WebServlet("/Controller")
public class Controller extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action = "";
		PrintWriter out = response.getWriter();
		if(request.getParameter("action")!=null) 
		{
			action = request.getParameter("action");
			switch(action)
			{
			case "INSERT":	Users user = new UserRepoImpl().createNewUser(new Users(request.getParameter("firstname"),request.getParameter("lastname"),request.getParameter("email"),request.getParameter("password"),request.getParameter("confirmpw")));
			if(user != null) 
			{
				HttpSession session = request.getSession();
				session.setAttribute("username",request.getParameter("email"));
				request.setAttribute("showPopup",true);
				request.setAttribute("msg", "Login Successfully...");
				request.getRequestDispatcher("webfile/index.jsp").forward(request, response);
				System.out.println("User Insert/created :"+user);
			}
			else 
			{
				out.print("<h1>User not Craeted </h1>");
				request.getRequestDispatcher("webfile/signup.jsp").include(request, response);
				System.out.println("User not inserted :");
			}
			break;
			default:System.out.println("Action not matched ! error");

			}
		}
		else
		{
			System.out.println("Action not found ");
		}
		
	}


}