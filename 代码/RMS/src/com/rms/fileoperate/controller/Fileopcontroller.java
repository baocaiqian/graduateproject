package com.rms.fileoperate.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rms.entity.Resources;
import com.rms.entity.Users;
import com.rms.fileoperate.service.FileopService;


@Controller
public class Fileopcontroller {
	
	@Resource
	private FileopService fileopservice;
	
	//文件查询控制器
	@RequestMapping(value="getfiledetail",method=RequestMethod.GET)
	public String getfiledetail(HttpSession session,HttpServletRequest request,@RequestParam("courseid") int courseid , @RequestParam("type") String filetype) {
		//获得登录者的id
		Object obj=session.getAttribute("user");
		Users myuser=(Users)obj;
		int userid=myuser.getId();
		List<Resources> resourceslist = fileopservice.getAllTypeFilefir(filetype,courseid,userid);
		request.setAttribute("resourcelist", resourceslist);
		//将courseid与type再存入request中，便于查询
		request.setAttribute("courseid", courseid);
		request.setAttribute("filetype", filetype);
		//获取文件数量
		request.setAttribute("filecount", resourceslist.size());	
		return "contentdetail";
	}
	
	//文件搜索控制器
	@RequestMapping(value="fileserarch",method=RequestMethod.POST)
	public String filesearch(HttpSession session,HttpServletRequest request,@RequestParam("courseid") int courseid,@RequestParam("filetype") String filetype,@RequestParam("keyword") String namekeyword) {
		//获得登录者的id
		Object obj=session.getAttribute("user");
		Users myuser=(Users)obj;
		int userid=myuser.getId();			
		List<Resources> resourceslist = fileopservice.getAllSearchFilefir(filetype, courseid, userid, namekeyword);
		
		request.setAttribute("resourcelist", resourceslist);	
		//将courseid与type再存入request中，便于查询
		request.setAttribute("courseid", courseid);
		request.setAttribute("filetype", filetype);	
		//获取文件数量
		request.setAttribute("filecount", resourceslist.size());
		return "contentdetail";
	}
	
	//文件删除控制器
	@RequestMapping(value="filedeleteController",method=RequestMethod.GET)
	public String filedelete(HttpSession session,HttpServletRequest request,@RequestParam("resourcesid") int resid,@RequestParam("resourcespath") String path,@RequestParam("courseid") int courseid , @RequestParam("filetype") String filetype) {	
		//删除文件以及数据库内容
		fileopservice.deleteFilefir(resid,path);
		//获取数据库中剩下的值
		Object obj=session.getAttribute("user");
		Users myuser=(Users)obj;
		int userid=myuser.getId();	
		List<Resources> resourceslist = fileopservice.getAllTypeFilefir(filetype,courseid,userid);
		request.setAttribute("resourcelist", resourceslist);
		//将courseid与type再存入request中，便于查询
		request.setAttribute("courseid", courseid);
		request.setAttribute("filetype", filetype);
		
		
		return "contentdetail";
	}
	
	
	
	//文件下载控制器
	
	
	//文件预览控制器
	
	
	
	
	

}
