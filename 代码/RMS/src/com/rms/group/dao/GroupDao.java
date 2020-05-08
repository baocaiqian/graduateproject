package com.rms.group.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Groupmember;
import com.rms.entity.Groups;
import com.rms.entity.Users;

@Repository
public class GroupDao {
	@Resource
	private SessionFactory sessionFactory;
	public Groups addGroup(String grname,Users user) throws Exception{
		Session session=this.sessionFactory.getCurrentSession();
        System.out.println("jindaodaolimiamle!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        Groups groups=new Groups();
        
        groups.setName(grname);
        groups.setOwner(user);
        groups.setIcon(null);
        groups.setTime(null);
        session.save(groups);
        System.out.println(groups.getId()+"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
        return groups;
        
	}
	
	
	public void addgroupsetter(Groups gp,Users user) throws Exception{
		  Date date = new Date(); //获取当前时间
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        String format = sdf.format(date);
		Session session = this.sessionFactory.getCurrentSession();
	    Groupmember gm=new Groupmember();
	    gm.setMember(user);
	    gm.setGroups(gp);
	    gm.setMail(user.getEmail());
	    gm.setTime(format);
	    gm.setRole("setter");
	    session.save(gm);
	    
	    

	}
	
	public List<Groups> findsettergroup(Users user) throws Exception{
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Groups where owner = "+user.getId());
		
		List<Groups> list=q.list();
		for (Groups gp : list) {
			System.out.println(gp.getId()+"hahahakuaichulaiba111111111111111");

			}
		
		
		return q.list();
		


	}
	
	

	
	
	public Groups findGroupById(int id) throws Exception{
	
	Session session = this.sessionFactory.getCurrentSession();
	Query q = session.createQuery("from Groups where id = ?1");
	q.setParameter(1, id);
    Groups g=(Groups)q.uniqueResult();
    return g;

}
	
	
	
	
	public void addnewmember(Groups gp,Users user) throws Exception{
		
		Session session = this.sessionFactory.getCurrentSession();
	    Groupmember gm=new Groupmember();
	    gm.setMember(user);
	    gm.setGroups(gp);
	    gm.setMail(user.getEmail());
	    gm.setTime(null);
	    gm.setRole("ordinary");
	    session.save(gm);


	}
	
	
	//根据邮箱查找用户信息
	public Users findUserByEmail(String email) {
		Session session = this.sessionFactory.getCurrentSession();
		Users u = (Users)session.createQuery("from Users where email='"+email+"'").uniqueResult();

		return u;
	}

	//修改用户密码或邮箱
	public void updatemem(int m,int g) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("update groupmember set role=?1 where member=?2 && groups=?3");
		query.setString(1, "admin");
		query.setInteger(2, m);
		query.setInteger(3, g);
	query.executeUpdate();
	}
	
	
	
	
	
	
	
	
	
	
	
}
