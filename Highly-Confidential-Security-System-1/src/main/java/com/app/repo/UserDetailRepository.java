package com.app.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.model.UserDetail;

public interface UserDetailRepository extends JpaRepository<UserDetail, Integer>{
   //public void deleteById(Integer id);
}
