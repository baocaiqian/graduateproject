package com.rms.recommend.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.ClassSystem;
import com.rms.entity.Course;
import com.rms.entity.Users;
import com.rms.user.dao.UserDao;

@Repository
public class RecomendCourseDao {
	@Resource
	private SessionFactory sessionFactory;
	@Resource
	private UserDao ud;
	/*
	 * 课程推荐，目前暂未实现课程推荐率的算法。因为需要一个一个体系去比对。
	 * */
	public List<String> findcourse(Users u,ClassSystem system) {
		Session session = sessionFactory.getCurrentSession();
		//找到所有同系的老师
		List<Users> alluser = ud.findUsersByMajor(u);
		//获取同系老师id
		String userids="(";
		for(int i=0;i<alluser.size();i++) {
			if(i==alluser.size()-1) {
				userids=userids+alluser.get(i).getId()+")";
			}
			else {
				userids=userids+alluser.get(i).getId()+",";
			}
		}
		//在课程体系库中，找到属于当前用户同系老师并且名字与当前体系相同的体系。
		Query sys= session.createQuery("from ClassSystem where owner in "+userids+" and name ='"+system.getName()
				+"'");
		List<ClassSystem> systems = sys.list();
		//获取体系id列表
		if(!systems.isEmpty()) {
		String systemids="(";
		for(int i=0;i<systems.size();i++) {
			if(i==systems.size()-1) {
				systemids=systemids+systems.get(i).getSystemId()+")";
			}
			else {
				systemids=systemids+systems.get(i).getSystemId()+",";
			}
		}
		//获取当前体系所包含课程名称
		String courses = "(";
		for(int i=0;i<system.getCourses().size();i++) {
			if(i==system.getCourses().size()-1) {
				courses = courses+"'"+system.getCourses().get(i).getName()+"')";
			}
			else {
				courses = courses+"'"+system.getCourses().get(i).getName()+"',";
			}
		}
		Query recommendcourse= session.createQuery("select DISTINCT name from Course where system in "+systemids+" and name not in "+courses);
		recommendcourse.setFirstResult(0);
		recommendcourse.setMaxResults(5);
		return recommendcourse.list();
		}
		return null;
	}
}
