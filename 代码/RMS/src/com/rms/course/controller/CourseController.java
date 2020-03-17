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
@RequestMapping("/course")
public class CourseController {
	@Resource
	private CourseService cs;
	@Resource
	private ClassSystemService css;
	@RequestMapping(value="/getcourse",method=RequestMethod.GET)
	public String getCourse(HttpSession session,HttpServletRequest request,@RequestParam("id") int id){
		Users u = (Users)session.getAttribute("user");
		ClassSystem system = css.getSystemById(id);
		List<Course> courses=cs.getCourse(id, u.getId());
		system.setCourses(courses);
		session.setAttribute("system", system);
		//request.setAttribute("courses", courses);
		return "class";
	}
	@RequestMapping(value="/addcourse",method=RequestMethod.POST)
	public String getCourse(Course course,HttpSession session,HttpServletRequest request) {
		ClassSystem system =(ClassSystem)session.getAttribute("system");
		Users u =(Users)session.getAttribute("user");
		course.setTeacher(u);
		course.setSystem(system);
		course.setIcon("statics/base/images/classes.png");
		boolean ifnotrename = cs.addCourse(course);
		if(ifnotrename) {
			List<Course> courses = system.getCourses();
			courses.add(course);
			system.setCourses(courses);
			session.setAttribute("system", system);
			return "class";
		}
		else {
			String error = "课程不许重名";
			request.setAttribute("error",error);
			return "error";
		}
	}
}
