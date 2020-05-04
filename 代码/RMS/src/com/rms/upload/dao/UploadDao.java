package com.rms.upload.dao;

import java.io.File;

import java.io.IOException;

import java.text.SimpleDateFormat;

import java.util.Date;


import javax.annotation.Resource;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.rms.entity.ClassSystem;
import com.rms.entity.Course;
import com.rms.entity.Resources;
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
				//获取原文件名
				String fileName=file.getOriginalFilename();
				//创建文件实例
				File filePath=new File(path);
				if(!filePath.exists()) {
					filePath.mkdirs();
				}
				String finalname = path+fileName;
				//转存文件
				file.transferTo(new File(finalname));
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
	
	//主函数
	public void uploadfile(Upform form,int myid) {
		String path="E://upload"+"//"+myid+"//"+form.getClasssystem()+"//"+form.getCourse()+"//";
		String ifopen=form.getIfopen();
		int ifopennum=0;
		if(ifopen=="公开") {ifopennum=1;}
		else {ifopennum=0;}
		//得到课程名
		String course = form.getCourse();
		//得到课程体系名
		String classsystem = form.getClasssystem();
		
		
		//判断file数组不能为空并且长度大于0
		if(form.getFiles()!=null&&form.getFiles().length>0) {
			//循环获取file数组中所得文件
			for(int i=0;i<form.getFiles().length;i++) {
				MultipartFile file=form.getFiles()[i];
				//保存文件
				saveFile(file,path);
				insertFileInform(course,classsystem,myid,ifopennum,file,path);
			}
		}
	}
	
	
	//文件相关信息插入resource表方法
	public void insertFileInform(String course,String classsystem,int myid,int ifopennum,MultipartFile file,String path) {
		Session session = this.sf.getCurrentSession();
		//获取原文件名
		String fileName=file.getOriginalFilename();
		//获取文件后缀名
		String postfix = getPostfix(fileName);
		//获取文件大小
		Double size=(double) file.getSize();
        Double kbsize=size/1024.00;
		//插入到数据库的时候，判断一下form的是否公开，因为resourse的公开属性是int类型，但是这获取下来是string，公开or不公开。判断一下再插入就行。
		 //根据文件后缀名找到文件类型
		String filetype = gettype(postfix);
		String filepath=path+fileName;
		//获取当前系统时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String time = df.format(new Date());
		//根据course名字获取该course对象（记得查询时还有用户id）	
		Course course1 = (Course) session.createQuery("from Course where name='"+course+"' and teacher="+myid).uniqueResult();
		//根据classsystem名获取该classsystem对象
		ClassSystem classsystem1 = (ClassSystem) session.createQuery("from ClassSystem where name='"+classsystem+"' and owner="+myid).uniqueResult();
		//根据userid找到User
		Users user1=(Users) session.createQuery("from Users where id="+myid).uniqueResult();

		Resources rs = new Resources();
		rs.setType(filetype);
		rs.setName(fileName);
		rs.setCourse(course1);
		rs.setClasssystem(classsystem1);
		rs.setPath(filepath);
		rs.setAuthority(ifopennum);
		rs.setSize(kbsize);
		rs.setTime(time);
		rs.setDowntimes(0);
		rs.setLooktimes(0);
		rs.setCollecttimes(0);
		rs.setPostfix(postfix);
		rs.setOwner(user1);//找到User
		//为空的值
		rs.setBrowselog(null);
		rs.setCollectlog(null);
		rs.setDownlog(null);
        rs.setGroupfiles(null);	
        session.save(rs);
        //session.merge(rs);
	}
	
//	//找到文件类型的函数
	public String gettype(String postfix) {
		if(postfix.equals("ppt") || postfix.equals("pptx")) { //.pptx是什么后缀名
			return "PPT";
		}
		else if(postfix.equals("mp3")) {
			return "音频";
		}
		else if(postfix.equals("doc")||postfix.equals("docx")||postfix.equals("txt")||postfix.equals("pdf")){
			return "文本文档";
		}
		else if(postfix.equals("mp4")){
			return "视频";
		}
		else if(postfix.equals("java")||postfix.equals("css")||postfix.equals("js")||postfix.equals("jsp")){
			return "练习demo";
		}
		else if(postfix.equals("jpg")||postfix.equals("jpeg")||postfix.equals("png")||postfix.equals("gif")){
			return "图片";
		}
		return "其他";		
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
		
	
	}

