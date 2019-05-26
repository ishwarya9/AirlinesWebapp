package com.ishwarya.app.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ishwarya.app.model.User;



@Repository
public interface UserRepository  extends JpaRepository<User, String>{
	
	//Optional<User> findByUserName(String username);
	
	User findByUserName(String username);
}
