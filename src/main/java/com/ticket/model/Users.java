package com.ticket.model;

public class Users {

	  private String ufname;
	  private String ulname;
	  private String uemail;
	  private String upassword;
	  private String uconfirmpw;
	  
	  public Users() {
			
	  }
	  
	  public Users(String fname, String lname, String email, String password,String confirmpw) {
		this.ufname = fname;
		this.ulname = lname;
		this.uemail = email;
		this.upassword = password;
		this.uconfirmpw = confirmpw;
	}
	  
	  public String getFname() {
			return ufname;
		}
	  
	  public String getLname() {
		  return ulname;
	  }
	  public String getEmail() {
		  return uemail;
	  }
	  public String getPassword() {
		  return upassword;
	  }
	  public String getConfirmpw() {
		  return uconfirmpw;
	  }
}