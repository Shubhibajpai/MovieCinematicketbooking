package com.ticket.service;
import com.ticket.model.Users;

public interface UserRepo {

	public Users createNewUser(Users user);
	public boolean validateUser(String email, String password);
}
