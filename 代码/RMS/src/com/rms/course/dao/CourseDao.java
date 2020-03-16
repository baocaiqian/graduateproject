package com.rms.course.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Course;

@Repository
public class CourseDao {
	@Resource
	private SessionFactory sf;
	public List<Course> getCourse(int systemid,int teacherid){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Course where system="+systemid+"and teacher="+teacherid);
		return q.list();
	}
}
