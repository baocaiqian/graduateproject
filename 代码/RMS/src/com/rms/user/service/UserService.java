package com.rms.user.service;
import java.sql.SQLException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.entity.Users;
import com.rms.user.dao.UserDao;

@Service
@Transactional(readOnly=false)
public class UserService {
	@Resource
	private UserDao userDao;
	public Boolean getLoginPerson(Users users) {
		try {
			return this.userDao.getLoginPerson(users);		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	//根据邮箱查找用户信息。进入个人中心页
		public Users UserCenter(String email) {
			return this.userDao.findUserByEmail(email);
		}
//	//根据邮箱查找用户密码。进入个人中心页
//				public String UserPassCenter(String email) {
//					return this.userDao.findPawordByEmail(email);
//				}	
//	
	//注册
		public boolean regist(Users user) throws SQLException {
            return this.userDao.saveUsers(user);
		    

		}
}
