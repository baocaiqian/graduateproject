package com.rms.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rms.entity.Users;
import com.rms.user.service.UserService;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	private Boolean issigned=false;
	//登录控制器
		@RequestMapping(value="/loginController",method=RequestMethod.POST)
		public String getLoginPerson(Users users,HttpSession session,HttpServletRequest request) {
			if(this.userService.getLoginPerson(users)==true) {
				issigned=true;
				Users user = this.userService.UserCenter(users.getName());
				session.setAttribute("isSigned",issigned);//定义一个是否已登录的接口
				session.setAttribute("user", user);
				return "index";
			}
			else {
				issigned=false;
				request.getSession().setAttribute("isSigned",issigned);//定义一个是否登录的接口
				request.setAttribute("errormessage", "该邮箱未注册或密码错误，请重新输入");
				return "mylogin";
			}
		}
}
