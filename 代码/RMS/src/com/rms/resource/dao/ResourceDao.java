package com.rms.resource.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.rms.course.dao.CourseDao;
import com.rms.entity.Course;
import com.rms.entity.Researchcontent;
import com.rms.entity.Resources;
import com.rms.entity.Search;
import com.rms.entity.Users;

@Repository
public class ResourceDao {
	@Resource
	private SessionFactory sf;
	@Resource
	private CourseDao cd;
	//获取当前用户所有资源
	public List<Resources> getallResource(Users u){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Resources where owner = "+u.getId());
		return q.list();
	}
	public List<Resources> getallsearchResource(Search rc,Users u) throws ParseException{
		Session session = sf.getCurrentSession();
		rc.setSearcher(u);
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String dateDir = new SimpleDateFormat("yyyy-MM-dd hh:mm").format(new Date());
		Date time = simpleFormat.parse(dateDir);
		rc.setTime(time);
		session.save(rc);
		if(rc.getCourse()!=null) {
			List<Course> courses=cd.getCourseByname(rc.getCourse());
			String courseids = "(";
			for(int i=0;i<courses.size();i++) {
				if(i==courses.size()-1) {
					courseids=courseids+courses.get(i).getCourseid()+')';
				}else {
					courseids=courseids+courses.get(i).getCourseid()+',';
				}
			}
			if(rc.getTitle().isEmpty()&&rc.getType().isEmpty()) {
				Query q = session.createQuery("from Resources where course in"+courseids);
				return q.list();
			}
			else if(rc.getTitle().isEmpty()&&!rc.getType().isEmpty()){
				Query q = session.createQuery("from Resources where course in"+courseids+"and type = '"+rc.getType()+"'");
				return q.list();
			}
			else if(!rc.getTitle().isEmpty()&&rc.getType().isEmpty()) {
				Query q = session.createQuery("from Resources where course in"+courseids+"and name like '%"+rc.getTitle()+"%'");
				return q.list();
			}
			else{
					Query q = session.createQuery("from Resources where course in"+courseids+"and type= '"+rc.getType()+"'and name like '%"+rc.getTitle()+"%'");
					return q.list();
				}
		}
		else{
			if(!rc.getTitle().isEmpty()&&!rc.getType().isEmpty()) {
				Query q = session.createQuery("from Resources where type='"+rc.getType()+"'and name like '%"+rc.getTitle()+"%'");
				return q.list();
			}
			else if(rc.getTitle().isEmpty()&&!rc.getType().isEmpty()) {
				Query q = session.createQuery("from Resources where type="+rc.getType());
				return q.list();
			}
			else if(!rc.getTitle().isEmpty()&&rc.getType().isEmpty()) {
					Query q = session.createQuery("from Resources where name like '%"+rc.getTitle()+"%'");
					return q.list();
				}
			else{
				Query q = session.createQuery("from Resources");
				return q.list();
				}
			 
		}
	}
	//个人资源库的查找
	public List<Resources> getsearchResource(Search rc,Users u) throws ParseException{
		Session session = sf.getCurrentSession();
		rc.setSearcher(u);
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String dateDir = new SimpleDateFormat("yyyy-MM-dd hh:mm").format(new Date());
		Date time = simpleFormat.parse(dateDir);
		rc.setTime(time);
		session.save(rc);
		if(rc.getCourse()!=null&&rc.getTitle()==null&&rc.getType()==null) {
			Course c=cd.getCourseBynameAndUser(rc.getCourse(), u);
			Query q = session.createQuery("from Resources where course = "+c.getCourseid());
		return  q.list();
		}else if(rc.getCourse()!=null&&rc.getTitle()==null&&rc.getType()!=null){
			Course c=cd.getCourseBynameAndUser(rc.getCourse(), u);
			Query q = session.createQuery("from Resources where course = "+c.getCourseid()+"and type='"+rc.getType()+"'");
			return q.list();
		}else if(rc.getCourse()!=null&&rc.getTitle()!=null&&rc.getType()!=null) {
			Course c=cd.getCourseBynameAndUser(rc.getCourse(), u);
			Query q = session.createQuery("from Resources where course = "+c.getCourseid()+"and type='"+rc.getType()+"' and name like '%"+rc.getTitle()+"%'");
			return q.list();
		}
		else if(rc.getCourse()!=null&&rc.getTitle()!=null&&rc.getType()==null) {
			Course c=cd.getCourseBynameAndUser(rc.getCourse(), u);
			Query q = session.createQuery("from Resources where course = "+c.getCourseid()+"and name like '%"+rc.getTitle()+"%'");
			return q.list();
		}
		else if(rc.getCourse()==null&&rc.getTitle()!=null&&rc.getType()!=null) {
			Query q = session.createQuery("from Resources where type='"+rc.getType()+"'and name like '%"+rc.getTitle()+"%'");
			return q.list();
		}else if(rc.getCourse()==null&&rc.getTitle()==null&&rc.getType()!=null) {
			Query q = session.createQuery("from Resources where type='"+rc.getType()+"'");
			return q.list();
		}else if(rc.getCourse()==null&&rc.getTitle()!=null&&rc.getType()==null) {
			Query q = session.createQuery("from Resources where name like '%"+rc.getTitle()+"%'");
			return q.list();
		}
		else {
			Query q = session.createQuery("from Resources");
			return q.list();
		}
	}
	//根据课程id查找资源列表
	public List<Resources> findResourceByCourse(Course c){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Resources where course = "+c.getCourseid());
		return q.list();
	}
	//通过热门词汇搜索
	public List<Resources> getsearchResourcebyhot(Search rc,Users u) throws ParseException{
		Session session = sf.getCurrentSession();
		rc.setSearcher(u);
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String dateDir = new SimpleDateFormat("yyyy-MM-dd hh:mm").format(new Date());
		Date time = simpleFormat.parse(dateDir);
		rc.setTime(time);
		session.save(rc);
		Query q = session.createQuery("from Resources where name like '%"+rc.getTitle()+"%'");
		return q.list();
	}
	//获取热门下载
	public List<String> gethotdown(){
		/*
		from PsPatrolMission a order by a.createTime desc where rownum <= 10
		*/
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("select r.name from Resources r order by r.downtimes desc");
		q.setFirstResult(0);
		q.setMaxResults(6);
		return q.list();
	}
	
	//获取共享资源
	public List<Resources> getshareresource(){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Resources r where r.authority=0 order by r.time desc");
		return q.list();
	}
	public List<Resources> getmyshareresource(Users u){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Resources r where r.authority=0 and r.owner="+u.getId()+" order by r.time desc");
		return q.list();
	}
	//发现浏览次数最多的资源
	public List<Resources> getlooktimesmax(){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Resources r where r.authority=0 order by r.looktimes desc");
		q.setFirstResult(0);
		q.setMaxResults(6);
		System.out.println("获取到的浏览次数最多的资源"+q.list().size());
		return q.list();
	}
}
