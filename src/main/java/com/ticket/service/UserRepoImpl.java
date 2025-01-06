package com.ticket.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ticket.database.DBconnection;

import com.ticket.model.Users;
import com.ticket.model.bookingdata;

public class UserRepoImpl implements UserRepo{

	public Users createNewUser(Users user) 
	{
		try(
				Connection con = DBconnection.getConnection();
				PreparedStatement ps1 = con.prepareStatement("insert into signup values(?,?,?,?,?)");
				
		)
		{
			ps1.setString(1,user. getFname());
			ps1.setString(2,user. getLname());
			ps1.setString(3,user. getEmail());
			ps1.setString(4,user. getPassword());
			ps1.setString(5,user. getConfirmpw());
			
			
			
			int i = ps1.executeUpdate();
			
			
			if(i>0)
			{
				System.out.println("user record inserted : "+user);
				return user;
			}
			else
			{
				System.out.println("Something went worng while inserting user record.");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean validateUser(String email, String password) {
        boolean isValid = false;

        try(
        		Connection con = DBconnection.getConnection();
        		PreparedStatement ps1 = con.prepareStatement("SELECT * FROM signup WHERE email = ? AND password = ?");
        		
        	)
        {
        	ps1.setString(1, email);
            ps1.setString(2, password);
    		ResultSet rs = ps1.executeQuery();
        	if (rs.next()) {
                isValid = true;  // User found in DB
                System.out.println("found");
            }
        }
        catch(Exception e)
		{
			e.printStackTrace();
		}
        return isValid;
	}
	public void bookingUser(bookingdata user)
	{
		try(
				Connection con = DBconnection.getConnection();
				PreparedStatement ps1 = con.prepareStatement("insert into booking values(?,?,?,?,?,?,?,?,?)");
				)
		{
			ps1.setString(1,user.getSmovie());
			ps1.setString(2,user.getDate());
			ps1.setString(3,user.getTime());
			ps1.setString(4,user.getTicketno());
			ps1.setString(5,user.getSeattype());
			ps1.setString(6,user.getName());
			ps1.setString(7,user.getEmail());
			ps1.setString(8,user.getPhoneno());
			ps1.setString(9,user.getPrice());
			
			int i = ps1.executeUpdate();
			
			if(i>0)
			{
				System.out.println("user record inserted: "+user);
//				return user;
			}
			else {
				System.out.println("something wrong while inserting user record");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}