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
	//发现同系老师
		public List<Users> findUsersByMajor(Users u){
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from Users where major like '%"+u.getMajor()+"%' and id !="+u.getId());
			return q.list();
		}
		
		//注册
				public boolean saveUsers(Users u) throws SQLException{
					System.out.println("daodaodao");
					System.out.println(u.getName());
					System.out.println(u.getEmail());
					System.out.println(u.getPassword());
					System.out.println(u.getSchool());
					
					try {
						Class.forName("com.mysql.jdbc.Driver");
					} catch (ClassNotFoundException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					Connection conn =DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/soft?useUnicode=true&characterEncoding=UTF-8", "root", "");
					  
			    	 PreparedStatement pstm;
			    	 try {
						pstm = conn.prepareStatement("insert into users(name,password,email,school) values(?,?,?,?)");
						pstm.setString(1, u.getName());
						pstm.setString(2, u.getPassword());
						pstm.setString(3, u.getEmail());
						pstm.setString(4, u.getSchool());
						int rs=pstm.executeUpdate();
					    return true;
						
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return false;
						
					}
										
		
				}
}
