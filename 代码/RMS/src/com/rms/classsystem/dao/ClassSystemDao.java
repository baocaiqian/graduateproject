package com.rms.classsystem.dao;

import java.util.ArrayList;
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
		int id = u.getId();
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from ClassSystem where owner="+id);
		return q.list();
	}
	//通过id查找课程体系
	public ClassSystem getSystemById(int id) {
		Session session = sf.getCurrentSession();
		ClassSystem system =  (ClassSystem)session.createQuery("from ClassSystem where systemId='"+id+"'").uniqueResult();
		return system;
	}
	//添加课程体系
	public boolean addSystem(ClassSystem system,Users u) {
		Session session = sf.getCurrentSession();
		Query q=session.createQuery("from ClassSystem where name='"+system.getName()+"' and owner = "+u.getId());
		if(q.list().size()!=0) {
			//课程体系不允许重名
			return false;
		}
		else
		{
			system.setOwner(u);
			session.save(system);
			List<ClassSystem> systems;
			if(u.getClasssystem()==null) {
				systems=new ArrayList<ClassSystem>();
			}else {
				systems=u.getClasssystem();
			}
			systems.add(system);
			System.out.println(system.getSystemId());
			u.setClasssystem(systems);
			return true;
		}
	}
}
