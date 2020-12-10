package com.app.service;

import java.util.List;

import com.app.model.UserDetail;

public interface UserDetailService {
	//insert user
	public Integer saveUserDtls(UserDetail user);
	
	//fetch all user details
	public List<UserDetail> fatchUser();
	
	//delete user
	public void deleteOneUser(Integer id);
	
	//fetch one user 
	public UserDetail getData(Integer id);
	
   //update data
	public void updateUser(UserDetail detail);
	
   //check record availability	
	public boolean isExist(Integer id);
}
