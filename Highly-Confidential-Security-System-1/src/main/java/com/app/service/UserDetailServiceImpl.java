package com.app.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.app.model.UserDetail;
import com.app.repo.UserDetailRepository;

@Service
public class UserDetailServiceImpl implements UserDetailService{
	@Autowired
    private UserDetailRepository repo;
    
	@Override
	public Integer saveUserDtls(UserDetail user) {
            Integer id = repo.save(user).getId();
		return id;
	}
	
	@Override
	public List<UserDetail> fatchUser() {
         List<UserDetail> list = repo.findAll();
		return list;
	}

	@Override
	public void deleteOneUser(Integer id) {
       repo.deleteById(id);	
	}

	@Override
	public UserDetail getData(Integer id) {
		     UserDetail detail=null;
		     //avoid null pointer exception
            Optional<UserDetail> op = repo.findById(id);
            if(op.isPresent()) {
            	 detail = op.get();
            }
		return detail;
	}

	@Override
	public void updateUser(UserDetail detail) {
		//if id exist then peform update other wise insert
		repo.save(detail);
	}

	@Override
	public boolean isExist(Integer id) {
          boolean id2 = repo.existsById(id);
		return id2;
	}
}
