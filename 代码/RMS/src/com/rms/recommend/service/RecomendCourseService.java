package com.rms.recommend.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.entity.ClassSystem;
import com.rms.entity.Course;
import com.rms.entity.Users;
import com.rms.recommend.dao.RecomendCourseDao;

@Service
@Transactional(readOnly=false)
public class RecomendCourseService {
	@Resource
	private RecomendCourseDao rcd;
	public List<String> findcourse(Users u,ClassSystem system){
		return rcd.findcourse(u, system);
	}
}
