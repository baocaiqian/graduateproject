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

import com.rms.entity.Upform;
import com.rms.entity.Users;

@Repository
public class UploadDao {
	
	@Resource
	private SessionFactory sf;
	
	private boolean saveFile(MultipartFile file,String path) {
		//判断文件是否为空
		if(!file.isEmpty()) {
			try {
				InputStream is=file.getInputStream();
				//获取原文件名
				String fileName=file.getOriginalFilename();
				//获取文件后缀名
				String postfix = getPostfix(fileName);
				System.out.println("文件后缀名是："+postfix);
				//获取文件大小，没获取下来。再改改
				//file.getSize()能够获取文件大小，但是单位是k好像是，底下这个转换有问题，所以变成了0
				Double size =(Double)(file.getSize()/Math.round(1048576.0*100)/100.0);
				System.out.println("文件大小："+size);
				//插入到数据库的时候，判断一下form的是否公开，因为resourse的公开属性是int类型，但是这获取下来是string，公开or不公开。判断一下再插入就行。
				//创建文件实例
				File filePath=new File(path);
				if(!filePath.exists()) {
					filePath.mkdirs();
				}
				//写入文件，我把你的写入改了，因为我不会用那个，之前传入的他那个路径不太对，我就改了，这样也能用
				String finalname = path+fileName;
				FileOutputStream fos=new FileOutputStream(
						finalname);
				int i=0;
				while((i=is.read())!=-1) {
					fos.write(i);
				}
				
				is.close();
				fos.flush();
				fos.close();
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
	
	public void uploadfile(Upform form,Users u) {
		Session session=this.sf.getCurrentSession();
		String path="E://upload"+"//"+u.getEmail()+"//"+form.getClasssystem()+"//"+form.getCourse()+"//";
		
		//判断file数组不能为空并且长度大于0
		if(form.getFiles()!=null&&form.getFiles().length>0) {
			//循环获取file数组中所得文件
			for(int i=0;i<form.getFiles().length;i++) {
				MultipartFile file=form.getFiles()[i];
				//保存文件
				saveFile(file,path);
			}
		}
	}
		//获取后缀名
	public String getPostfix(String filename) {
		if ((filename != null) && (filename.length() > 0)) { 
				int dot = filename.lastIndexOf('.'); 
				if ((dot >-1) && (dot < (filename.length() - 1))) { 
					return filename.substring(dot + 1);  
		        }     
		        }  
		return filename;
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

