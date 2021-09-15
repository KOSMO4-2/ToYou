package com.toyou.project.controller.user.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.toyou.project.dto.ResponseDTO;
import com.toyou.project.model.RoleType;
import com.toyou.project.model.User;
import com.toyou.project.service.user.UserService;

@RestController
public class UserApiController {

	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@PostMapping("/auth/joinProc")
	public ResponseDTO<Integer> save(@RequestBody User user) { // username, password, email
		System.out.println("UserApiController : save 호출됨" + user.getUserPassword());
		System.out.println("UserApiController : save 호출됨" + user.getUserId());
		System.out.println("UserApiController : save 호출됨" + user.getUserEmail());
		System.out.println("UserApiController : save 호출됨" + user.getUserName());
		user.setUserRole(RoleType.USER);
		userService.userJoin(user);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(), 1); // 자바오브젝트를 JSON으로 변환해서 리턴 (Jackson)
	}
	
	@PutMapping("/user/userUpdateProc")
	public ResponseDTO<Integer> userUpdate(@RequestBody User user){
		userService.userUpdate(user);
//		트랜젝션 종료시점이기 때문에 DB값은 변경된 후
//		하지만 세션값 변경 X
//		세션정보도 다시 업데이트 해줘야함
		// 세션 등록
		Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(user.getUserId(), user.getUserPassword()));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(),1);
	}
}
