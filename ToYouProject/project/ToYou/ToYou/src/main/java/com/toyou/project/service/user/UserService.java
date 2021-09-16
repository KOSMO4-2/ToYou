package com.toyou.project.service.user;

import org.springframework.security.core.userdetails.UserDetails;

import com.toyou.project.model.User;

public interface UserService {
	
	public void userJoin(User user);
	
	public void userUpdate(User user);
	
	public User userFind(String username);
}
