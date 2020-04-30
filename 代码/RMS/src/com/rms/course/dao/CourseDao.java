package com.rms.course.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Course;
import com.rms.entity.Users;

@Repository
public class CourseDao {
	
	@Resource
	private SessionFactory sf;
	public List<Course> getCourse(int systemid,int teacherid){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Course where system="+systemid+"and teacher="+teacherid);
		return q.list();
	}
	public boolean addCourse(Course c) {
		Session session = sf.getCurrentSession();
		Query q=session.createQuery("from Course where name='"+c.getName()+"' and system = "+c.getSystem().getSystemId());
		if(q.list().size()!=0) {
			//课程不允许重名
			return false;
		}
		else
		{
			session.save(c);
			return true;
		}
	}
	public Course findCourseById(int id) {
		Session session = sf.getCurrentSession();
		Course c = (Course)session.createQuery("from Course where courseid="+id).uniqueResult();
		return c;
	}
	//获取所有不重复的课程名
	public List<String> findallcoursename(){
		Session session = sf.getCurrentSession();
		Query q=session.createQuery("select distinct name from Course");
		return q.list();
	}
	//获取我的不重复的课程名
	public List<String> findmycoursename(Users u){
		Session session = sf.getCurrentSession();
		Query q=session.createQuery("select distinct name from Course where teacher ="+u.getId());
		return q.list();
	}
}
