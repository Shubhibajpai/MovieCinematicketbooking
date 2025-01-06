package com.ticket.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


import com.ticket.model.bookingdata;
import com.ticket.service.UserRepoImpl;

/**
 * Servlet implementation class Controllerbooking
 */
@WebServlet("/Controllerbooking")
public class Controllerbooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		

    		
    		String SelectMovie = request.getParameter("movie_name");
			String  Date= request.getParameter("show_date");
			String Time = request.getParameter("show_time");
			String TicketNo = request.getParameter("num_tickets");
			String SeatType = request.getParameter("seat_type");
			String Name = request.getParameter("full_name");
			String Email = request.getParameter("email");
			String Phoneno = request.getParameter("phone");
			String Price = request.getParameter("Price");
			
			bookingdata obj= new bookingdata(SelectMovie,Date,Time,TicketNo,SeatType,Name,Email,Phoneno,Price);
			UserRepoImpl user= new UserRepoImpl();
			user.bookingUser(obj);
			
			request.setAttribute("message1", "you successfully booked your movie slot..."); 
        	request.getRequestDispatcher("webfile/index.jsp").forward(request, response);
			
    	}
	}
