package com.rms.register.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rms.entity.Users;



@Controller
public class RegisterController {
	//注册
	@RequestMapping(value="/RegisterController",method=RequestMethod.POST)
	public void UserRegister(Users user,HttpSession session,HttpServletRequest request) {
		System.out.println("注册啦啦啦");
		
	}
}
