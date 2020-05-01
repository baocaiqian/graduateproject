package com.combobox.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.ClassSystem;
import com.rms.entity.Users;

@Repository
public class ComboxDao {

	@Resource
	private SessionFactory sf;
	
	//查出用户所有的课程体系，查出所有的课程，查出所有的小组
	public List<String>  getallcs(int userid){
		Session session=this.sf.getCurrentSession();
		Query q=session.createQuery("select name from classsystem where owner=?0");
		q.setParameter(0, userid);
		List<String> allcs=q.list();//找到该用户所有的课程体系	
		return allcs;
	}
	
	//查出用户所有的课程
	public List<String> getallcource(int userid){
		Session session=this.sf.getCurrentSession();
		Query q=session.createQuery("select name from course where owner=?0");
		q.setParameter(0, userid);
		return q.list();		
	}
	
	//查出该用户拥有的所有小组
		public List<String> getallgroup(int userid){
			Session session=this.sf.getCurrentSession();
			Query q=session.createQuery("select name from group where owner=?0");
			q.setParameter(0, userid);
			return q.list();		
		}
	
	
	
	
	
}
