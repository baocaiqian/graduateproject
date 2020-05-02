package com.rms.combobox.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rms.combobox.service.ComboxService;
import com.rms.entity.Users;

@Controller
public class ComboxController {
	@Resource
	private ComboxService cs;
	
	//下拉框内容控制器
	@RequestMapping(value="/combobox",method=RequestMethod.GET)
	public String getComboContent(HttpSession session,HttpServletRequest request) {
		//获得登陆者的id
		Object obj=session.getAttribute("user");
		Users myuser=(Users)obj;
		int userid=myuser.getId();
		List<String> allcs=cs.getallcs(userid);
		request.setAttribute("allcs",allcs); //存储着所有课程体系
		List<String> allcource=cs.getallcource(userid);
		request.setAttribute("allcource", allcource);//所有的课程
		/*
		List<String> allgroup=cs.getAllgroup(userid);
		request.setAttribute("allgroup", allgroup);
		*/
		return "upload";
	}

}
