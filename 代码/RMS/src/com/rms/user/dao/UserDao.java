package com.rms.user.dao;

import org.springframework.stereotype.Repository;

import com.rms.entity.Users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

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
		System.out.println("用户端输入的密码"+password);
		System.out.println("数据库的密码"+p);
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

			return u;
		}
	
	
//		//根据邮箱查找用户密码
//				public String findPawordByEmail(String email) {
//					Session session = this.sessionFactory.getCurrentSession();
//					Users u = (Users)session.createQuery("from Users where email='"+email+"'").uniqueResult();
//                    System.out.println("查询到数据库中的密码");
//                    System.out.println(u.getPassword());
//					return u.getPassword();
//				}
	//发现同系老师
		public List<Users> findUsersByMajor(Users u){
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from Users where major like '%"+u.getMajor()+"%' and id !="+u.getId());
			return q.list();
		}
		
		//注册
				public boolean saveUsers(Users u) throws SQLException{
					System.out.println(u.getEmail());
					String myemail=u.getEmail();
					Session session=this.sessionFactory.getCurrentSession();
					Query q=session.createQuery("from Users where email=?0");
					q.setParameter(0, myemail);
					if(q.list().size()!=0) {
					    return false;
					}
					else {
						session.save(u);
						return true;
					}	
				}
				
				
				//修改用户密码或邮箱
				public void changeUsers(Users ubefore,Users uinput) {
					Session session = sessionFactory.getCurrentSession();
					Query query = session.createSQLQuery("update users set name=?,password=?,email=? where email=?	");
					query.setString(1, uinput.getName());
					query.setString(2, uinput.getPassword());
					query.setString(3, uinput.getEmail());
					query.setString(4, ubefore.getEmail());

					query.executeUpdate();
				}
					
				
				//修改用户密码或邮箱
				public void updatePersoninfo(Users ubefore,Users uinput) {
					Session session = sessionFactory.getCurrentSession();
					Query query = session.createSQLQuery("update users set school=?,major=?,mainmajor=?,presondescribe=? where email=?	");
					query.setString(1, uinput.getSchool());
					query.setString(2, uinput.getMajor());
					query.setString(3, uinput.getMainmajor());
					query.setString(4, uinput.getPresondescribe());
					query.setString(5, ubefore.getEmail());

					query.executeUpdate();
				}
				
				
				
				
				
				
		
}
