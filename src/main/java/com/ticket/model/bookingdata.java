package com.ticket.model;

public class bookingdata {
	 
	private String usmovie;
	private String udate;
	private String utime;
	private String uticketno;
	private String useattype;
	private String uname;
	private String uemail;
	private String uphoneno;
	private String uprice;
	
	public bookingdata() {

	}
	
	public bookingdata(String smovie, String date ,String time,String ticketno,String seattype,String name,String email,String phoneno,String price) {
		this.usmovie = smovie;
		this.udate = date;
		this.utime = time;
		this.uticketno = ticketno;
		this.useattype =seattype ;
		this.uname = name;
		this.uemail= email;
		this.uphoneno = phoneno;
		this.uprice = price;
	}

	public String getSmovie() {
		return usmovie;
	}

	public String getDate() {
		return udate;
	}

	public String getTime() {
		return utime;
	}

	public String getTicketno() {
		return uticketno;
	}

	public String getSeattype() {
		return useattype;
	}

	public String getName() {
		return uname;
	}

	public String getEmail() {
		return uemail;
	}

	public String getPhoneno() {
		return uphoneno;
	}

	public String getPrice() {
		return uprice;
	}

	  
}
