package com.rms.fileoperate.dao;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Resources;

@Repository
public class FileopDao {
	
	@Resource
	private SessionFactory sf;
	
	//根据条件：用户名+课程名+文件类型获得查询出这些文件
	public List<Resources> getAllTypeFile(String type,int courseid,int owner){
		Session session = this.sf.getCurrentSession();
		Query q=session.createQuery("from Resources where type='"+type+"'and course="+courseid+"and owner="+owner);
		return q.list();	
	}
	
	//根据条件：用户名+课程名+文件类型+搜索内容查询出这些文件
	public List<Resources> getSearchTypeFile(String type,int courseid,int owner,String keyword){
		Session session=this.sf.getCurrentSession();
		Query q=session.createQuery("from Resources where type='"+type+"'and course="+courseid+"and owner="+owner+"and name like '%"+keyword+"%'");
		return q.list();
	}
	
	//根据资源id以及路径删除该资源和数据库该条数据，然后再在控制器中查询出剩余的文件并返回
	public void deleteFile(int resid,String filepath) {
		//删除文件
		File file=new File(filepath);
		file.delete();
		//根据id删除数据库中值
		Session session=this.sf.getCurrentSession();
		Query q=session.createQuery("delete from Resources where id="+resid);
		q.executeUpdate();
	}
	
	
	
	

}
