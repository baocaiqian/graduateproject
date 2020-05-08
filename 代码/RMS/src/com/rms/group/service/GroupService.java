package com.rms.group.service;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.entity.Groups;
import com.rms.entity.Users;
import com.rms.group.dao.GroupDao;
import com.rms.user.dao.UserDao;

@Service
@Transactional(readOnly=false)
public class GroupService {
	@Resource
	private GroupDao groupDao;
	
	
	public Groups chuangjianGroup(String gpname,Users users) throws Exception {
	
			return  this.groupDao.addGroup(gpname, users);
	
	}
	
	public void addGroupMem(Groups gp,Users user) throws Exception {
		
		  this.groupDao.addgroupsetter(gp, user);

}
	
	
	public List<Groups> findchuangjangroup(Users user) throws Exception{
       System.out.println("jindaosssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
	
		return this.groupDao.findsettergroup(user);
		

	}
	
	
	public Groups findgroupbyid(int id) throws Exception{
	       
		
			return this.groupDao.findGroupById(id);
			

		}
	
	
	
	
	
	
	
	//根据邮箱查找用户信息。进入个人中心页
	public Users UserCenter(String email) {
		return this.groupDao.findUserByEmail(email);
	}
	
	
	
	
	
	
	
	public void addnewMem(Groups gp,Users user) throws Exception {
		
		  this.groupDao.addnewmember(gp, user);

}
	
	
	
	public void updatemem(int m,int g) {
		this.groupDao.updatemem(m, g);
	}
	
	
	
	
	
	
}
