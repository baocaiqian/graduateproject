package com.rms.fileoperate.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rms.entity.Resources;
import com.rms.entity.Users;
import com.rms.fileoperate.service.FileopService;


@Controller
public class Fileopcontroller {
	
	@Resource
	private FileopService fileopservice;
	
	@RequestMapping(value="getfiledetail",method=RequestMethod.GET)
	public String getfiledetail(HttpSession session,HttpServletRequest request,@RequestParam("courseid") int courseid , @RequestParam("type") String filetype) {
		//获得登录者的id
		Object obj=session.getAttribute("user");
		Users myuser=(Users)obj;
		int userid=myuser.getId();
		List<Resources> resourceslist = fileopservice.getAllTypeFilefir(filetype,courseid,userid);
		request.setAttribute("resourcelist", resourceslist);
		//System.out.println(resourceslist.get(0)+"-----------------看看这里有东西不");
		return "contentdetail";
	}
	
	

}
