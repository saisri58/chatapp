package com.niit.Backend.dao;

import java.util.List;

import com.niit.Backend.model.UserDetails;

public interface UserDetailsDAO {


	public List<UserDetails> list();

	public UserDetails get(int id);

	public void saveOrUpdate(UserDetails user);

	public void delete(int id);
	public UserDetails get(String userName);
	

}
