package com.toyou.project.service.user;

//import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.toyou.project.dao.user.UserRepository;
import com.toyou.project.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired
	private UserRepository userRepository;
	
	@Transactional
	public void userJoin(User user) {
		// 회원가입시 패스워드를 인코딩 하지 않으면 시큐리티 로그인을 이용할 수 없다.
		String rawPassword = user.getUser_password();
		String encPassword = encoder.encode(rawPassword);
		user.setUser_password(encPassword);
		userRepository.save(user);
	}
}