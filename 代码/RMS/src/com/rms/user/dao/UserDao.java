package com.rms.user.dao;

import org.springframework.stereotype.Repository;

import com.rms.entity.Users;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
@Repository
public class UserDao {
	@Resource
	private SessionFactory sessionFactory;
	public boolean getLoginPerson(Users users) throws Exception{
		String password=users.getPassword();
		String myemail=users.getEmail();
		Session session=this.sessionFactory.getCurrentSession();
		String p=(String)session.createQuery("select password from Users where email='"+myemail+"'").uniqueResult();
		if(p.equals(password)) {
		    return true;
		}
		else {
			System.out.println("密码错误");
			return false;
		}		
	}
	//根据邮箱查找用户信息
		public Users findUserByEmail(String email) {
			Session session = this.sessionFactory.getCurrentSession();
			Users u = (Users)session.createQuery("from Users where email='"+email+"'").uniqueResult();
			System.out.println("userdaor里面的id："+u.getId());
			return u;
		}
}
