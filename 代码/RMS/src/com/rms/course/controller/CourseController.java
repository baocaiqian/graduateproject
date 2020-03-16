package com.rms.course.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rms.classsystem.service.ClassSystemService;
import com.rms.course.service.CourseService;
import com.rms.entity.ClassSystem;
import com.rms.entity.Course;
import com.rms.entity.Users;

@Controller
@RequestMapping("/classsystem")
public class CourseController {
	@Resource
	private CourseService cs;
	@Resource
	private ClassSystemService css;
	@RequestMapping(value="/getsystem",method=RequestMethod.GET)
	public String getCourse(HttpSession session,HttpServletRequest request,@RequestParam("id") int id){
		Users u = (Users)session.getAttribute("user");
		ClassSystem system = css.getSystemById(id);
		List<Course> courses=cs.getCourse(id, u.getId());
		system.setCourses(courses);
		request.setAttribute("system", system);
		//request.setAttribute("courses", courses);
		return "class";
	}
}
