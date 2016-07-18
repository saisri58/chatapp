package com.niit.demo;

public class LoginDAO {
	public boolean isValidUser(String Username,String Password)
	{
		if(Username.equals(Password))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
		
}