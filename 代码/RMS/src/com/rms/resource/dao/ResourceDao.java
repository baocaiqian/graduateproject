package com.rms.resource.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.course.dao.CourseDao;
import com.rms.entity.Course;
import com.rms.entity.Researchcontent;
import com.rms.entity.Resources;
import com.rms.entity.Users;

@Repository
public class ResourceDao {
	@Resource
	private SessionFactory sf;
	@Resource
	private CourseDao cd;
	//获取当前用户所有资源
	public List<Resources> getallResource(Users u){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Resources where owner = "+u.getId());
		return q.list();
	}
	//个人资源库的查找
	public List<Resources> getsearchResource(Researchcontent rc,Users u){
//按课程名字搜索
		List<Resources> searchrecourses = new ArrayList<Resources>();
		//获取下来课程
		if(rc.getCourse()!=null&&rc.getRedom()==null&&rc.getTitle()==null&&rc.getType()==null) {
		Course c=cd.getCourseBynameAndUser(rc.getCourse(), u);
		List<Resources> courseresources = findResourceByCourse(c);
		}
		
		return null;
	}
	//根据课程id查找资源列表
	public List<Resources> findResourceByCourse(Course c){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Resources where course = "+c.getCourseid());
		return q.list();
	}
}
