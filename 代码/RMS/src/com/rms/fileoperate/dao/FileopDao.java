package com.rms.fileoperate.dao;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.entity.Browse;
import com.rms.entity.Collect;
import com.rms.entity.Down;
import com.rms.entity.Resources;
import com.rms.entity.Users;

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
	
	//将文件下载信息插入down表中，并在文件下载时将resource表中的文件下载次数加一
	public void insertDown(int resourcesid,Users user) {
		Session session = this.sf.getCurrentSession();
		Down down=new Down();
		//获取当前系统时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String time = df.format(new Date());	
		down.setTime(time);
		//根据resourcesid找到当前resource实体
		Resources res=(Resources) session.createQuery("from Resources where id="+resourcesid).uniqueResult();
		down.setResource(res);
		down.setDownuser(user);
		session.save(down);
		//根据resourcesid将文件resources表的下载次数改了
		Query q=session.createQuery("update Resources set downtimes=downtimes+1 where id="+resourcesid);
		q.executeUpdate();	
	}
	
	//实现文件收藏功能，并且将resource表中的收藏次数进行更改
	public void insertCollect(int resourceid,Users user) {
		Session session = this.sf.getCurrentSession();
		//根据resourceid找到resources
		Resources res=(Resources) session.createQuery("from Resources where id="+resourceid).uniqueResult();	
		Collect collect = new Collect();
		collect.setCollecter(user);
		collect.setResource(res);
		session.save(collect);
		//更改Resources表
		Query q=session.createQuery("update Resources set collecttimes=collecttimes+1 where id="+resourceid);
		q.executeUpdate();
	}
	
	//将预览次数插入预览表
	public void insertBrowse(int resourceid,Users user) {
		Session session = this.sf.getCurrentSession();
		//根据resourceid找到resources
		Resources res=(Resources) session.createQuery("from Resources where id="+resourceid).uniqueResult();
		//获取当前系统时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String time = df.format(new Date());
		Browse browse=new Browse();
		browse.setTime(time);
		browse.setLooker(user);
		browse.setResource(res);
		session.save(browse);
		//更改resources表
		Query q=session.createQuery("update Resources set looktimes=looktimes+1 where id="+resourceid);
		q.executeUpdate();
		
	}
	
	
	
	
	
}
