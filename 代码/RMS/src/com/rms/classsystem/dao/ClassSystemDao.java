package com.rms.classsystem.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.ClassSystem;
import com.rms.entity.Users;

@Repository
public class ClassSystemDao {
	@Resource
	private SessionFactory sf;
	//获取该用户的课程体系
	public List<ClassSystem> getSystem(Users u) {
		System.out.println("classsystemcontroller里面的email："+u.getEmail());
		int id = u.getId();
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from ClassSystem where owner="+id);
		return q.list();
	}
	public ClassSystem getSystemById(int id) {
		Session session = sf.getCurrentSession();
		ClassSystem system =  (ClassSystem)session.createQuery("from ClassSystem where id='"+id+"'").uniqueResult();
		return system;
	}
}
