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
	
	private boolean saveFile(MultipartFile file,String path) {
		//判断文件是否为空
		if(!file.isEmpty()) {
			try {
				//获取原文件名
				String fileName=file.getOriginalFilename();
				//创建文件实例
				File filePath=new File(path,fileName);
				//如果文件目录不存在，创建目录
				if(!filePath.getParentFile().exists()) {
					filePath.getParentFile().mkdir();
				}
				//写入文件
				file.transferTo(filePath);
				
				return true;
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}					
		}
		return false;
	}
	
	public void uploadfile(MultipartFile[] files) {
		Session session=this.sf.getCurrentSession();
		String path="E:/upload";
		//判断file数组不能为空并且长度大于0
		if(files!=null&&files.length>0) {
			//循环获取file数组中所得文件
			for(int i=0;i<files.length;i++) {
				MultipartFile file=files[i];
				//保存文件
				saveFile(file,path);
			}
		}
		
		
		
//		if(!files.isEmpty()) {
//			try {
//				//文件上传
//				InputStream is=file.getInputStream();
//				String dirPath=path+"myfile\\"; //此处需要再加一个动态位置信息
//				File foder=new File(dirPath);
//				if(!foder.exists()) {
//					foder.mkdirs();
//				}
//				//文件下载
//				FileOutputStream fos=new FileOutputStream(dirPath+file.getOriginalFilename());
//				int i=0;
//				while((i=is.read())!=-1) {
//					fos.write(i);
//				}
//				is.close();
//				fos.flush();
//				fos.close();
//				
//				
//				
//	
//				
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			
//			
//		}
		
		
		
		
	}
	
	
	

}
