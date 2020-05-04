package com.rms.photo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.rms.entity.Users;
import com.rms.photo.dao.PhotoDao;
import com.rms.user.dao.UserDao;

@Service
@Transactional(readOnly=false)
public class PhotoService {
	@Resource
	private PhotoDao pd;
	
	@Resource
	private UserDao ud;
	public void upPhoto(MultipartFile []files,String path,Users user){
		pd.upPhoto(files, path, user);
//		String yuan=pd.aaaaaaafindPhoto();

	}
	public Users findUser(Users u) {
		return this.ud.findUserByEmail(u.getEmail());
	}
	
}
