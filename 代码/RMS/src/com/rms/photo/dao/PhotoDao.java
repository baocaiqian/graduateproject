package com.rms.photo.dao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.rms.entity.Users;

@Repository
public class PhotoDao {
	@Resource
	private SessionFactory sf;
	public void upPhoto(MultipartFile [] files,String path,Users user){


		Session session  = sf.getCurrentSession();

		for(MultipartFile file : files) {
			if(!file.isEmpty()){
				try {
					InputStream is=file.getInputStream();
					String dateDir = new SimpleDateFormat("yyyyMMdd").format(new Date());
					String dirPath = path+"img\\"+user.getEmail()+dateDir+"\\";
					File foder=new File(dirPath);
					if(!foder.exists()) {
						foder.mkdirs();
					}
					FileOutputStream fos=new FileOutputStream(
							dirPath
							+file.getOriginalFilename());
					String photopath = dirPath
							+file.getOriginalFilename();
					
					
					Query query = session.createSQLQuery("update users set icon=? where email=?	");
					query.setString(1,"img\\"+user.getEmail()+dateDir+"\\"
							+file.getOriginalFilename() );
					query.setString(2, user.getEmail());
					query.executeUpdate();

					int i=0;
					while((i=is.read())!=-1) {
						fos.write(i);
					}

					
					is.close();
					fos.flush();
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
}
