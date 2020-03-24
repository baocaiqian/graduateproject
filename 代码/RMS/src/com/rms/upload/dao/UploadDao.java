package com.rms.upload.dao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class UploadDao {
	
	@Resource
	private SessionFactory sf;
	
	public void uploadfile(MultipartFile file,String path) {
		Session session=this.sf.getCurrentSession();
		if(!file.isEmpty()) {
			try {
				//文件上传
				InputStream is=file.getInputStream();
				String dirPath=path+"myfile\\"; //此处需要再加一个动态位置信息
				File foder=new File(dirPath);
				if(!foder.exists()) {
					foder.mkdirs();
				}
				//文件下载
				FileOutputStream fos=new FileOutputStream(dirPath+file.getOriginalFilename());
				int i=0;
				while((i=is.read())!=-1) {
					fos.write(i);
				}
				is.close();
				fos.flush();
				fos.close();
				
	
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
	}
	
	
	

}
