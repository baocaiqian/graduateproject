package com.rms.combobox.Dao;

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
		System.out.println("看看这里执行了吗---------------------------------");
		Session session=this.sf.getCurrentSession();
		Query q=session.createQuery("select name from ClassSystem where owner="+userid);
		return q.list();
	}
	
	//查出用户所有的课程
	public List<String> getallcource(int userid){
		Session session=this.sf.getCurrentSession();
		Query q=session.createQuery("select name from Course where teacher="+userid);
		return q.list();		
	}
	/*
	//查出该用户拥有的所有小组
		public List<String> getallgroup(int userid){
			Session session=this.sf.getCurrentSession();
			Query q=session.createQuery("select name from Group where owner="+userid);
			return q.list();		
		}
	
	*/
	
	
	
}
