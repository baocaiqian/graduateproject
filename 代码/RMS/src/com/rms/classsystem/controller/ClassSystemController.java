package com.rms.classsystem.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rms.classsystem.service.ClassSystemService;
import com.rms.entity.ClassSystem;
import com.rms.entity.Users;

@Controller
@RequestMapping("/system")
public class ClassSystemController {
	@Resource
	private ClassSystemService css;
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addSystem(ClassSystem system,HttpSession session,HttpServletRequest request) {
		Users u = (Users)session.getAttribute("user");
		List<ClassSystem> systems;
		if(u.getClasssystem()==null) {
			systems =new ArrayList<ClassSystem>();
		}
		else {
			systems =u.getClasssystem();
		}
		/*
		system.setOwner(u);
		
		systems.add(system);
		u.setClasssystem(systems);
		*/
		boolean ifrename = css.addSystem(system,u);
		if(ifrename) {
			session.setAttribute("user", u);
			return "classSystem";
		}
		else {
			String error = "课程体系不许重名";
			request.setAttribute("error",error);
			return "error";
		}
		
	}
	public String getSystem(HttpSession session,HttpServletRequest request) {
		return "classSystem";
	}
}
