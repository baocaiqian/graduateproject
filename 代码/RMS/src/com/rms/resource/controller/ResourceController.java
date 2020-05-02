package com.rms.resource.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rms.course.service.CourseService;
import com.rms.entity.Resources;
import com.rms.entity.Users;
import com.rms.resource.service.ResourceService;

@Controller
public class ResourceController {
	@Resource
	private CourseService cs;
	@Resource
	private ResourceService rs;
	//进入资源检索页面，获取课程名称们
	@RequestMapping(value="/research",method=RequestMethod.GET)
	public String getallCourse(HttpSession session,HttpServletRequest request) {
		List<String> coursenames = cs.getallcoursename();
		request.setAttribute("names", coursenames);
		return "research";
	}
	@RequestMapping(value="/myresourceresearch",method=RequestMethod.GET)
	public String getmyresource(HttpSession session,HttpServletRequest request) {
		Users u = (Users)session.getAttribute("user");
		List<Resources> resources = rs.getmyresource(u);
		List<String> coursenames = cs.getmycoursename(u);
		request.setAttribute("names", coursenames);
		request.setAttribute("resources",resources);
		return "myresourceresearch";
	}
}
