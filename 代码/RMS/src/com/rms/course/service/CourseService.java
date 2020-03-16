package com.rms.course.service;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.course.dao.CourseDao;
import com.rms.entity.Course;

@Service
@Transactional(readOnly=false)
public class CourseService {
	@Resource
	private CourseDao cd;
	public List<Course> getCourse(int systemid,int teacherid){
		return cd.getCourse(systemid,teacherid);
	}
	
}
