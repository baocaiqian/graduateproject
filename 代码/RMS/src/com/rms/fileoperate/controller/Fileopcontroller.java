package com.rms.fileoperate.controller;

import java.io.File;
import java.io.IOException;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rms.entity.Resources;
import com.rms.entity.Users;
import com.rms.fileoperate.service.FileopService;
import com.rms.resource.service.ResourceService;


@Controller
public class Fileopcontroller {
	
	@Resource
	private FileopService fileopservice;
	
	@Resource
	private ResourceService rs;
	
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
	@RequestMapping(value="filedownload",method=RequestMethod.GET)
	public ResponseEntity<byte[]> filedownload(HttpSession session,HttpServletResponse response,@RequestParam("filepath") String filepath,@RequestParam("filename") String filename,@RequestParam("resourceid") int resourceid) throws IOException{
		
		//将有关信息插入down表中
		//获得登录者
		Object obj=session.getAttribute("user");
		Users myuser=(Users)obj;
		fileopservice.insertDownfir(resourceid, myuser);
		//实现文件下载
		File file=new File(filepath);
		HttpHeaders headers=new HttpHeaders();		//防止文件名乱码
		String downloadFileName;
		try {
			downloadFileName = new String(filename.getBytes("UTF-8"),"iso-8859-1");
			//让电脑显示apach下载方式
			headers.setContentDispositionFormData("attachment", downloadFileName);
			//设置传输利用二进制传输
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			//返回一个数据字节流，就是一个文件
			return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.CREATED);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  //此处的filename即为文件名
		return null;
	}
	
	//文件预览控制器
	@RequestMapping(value="/lookController",method=RequestMethod.GET)
	public String lookController(HttpSession session,HttpServletRequest request,@RequestParam("resourceid") int resourceid) {
		Object obj=session.getAttribute("user");
		Users myuser=(Users)obj;	
	    fileopservice.insertBrowsefer(resourceid,myuser);
	    //页面资源重新获取
	    List<Resources> share = rs.getsharer();
		List<Resources> hotlook = rs.getlooktimesmax();
		System.out.println("controller"+hotlook.size());
		request.setAttribute("hotlook", hotlook);
		request.setAttribute("share", share);  
		return "share";
	}
	
	
	
	
	
	//文件收藏控制
	@RequestMapping(value="/collectController",method=RequestMethod.GET)
	public String collectcontroller(HttpSession session,HttpServletRequest request,@RequestParam("resourceid") int resourceid) {
		Object obj=session.getAttribute("user");
		Users myuser=(Users)obj;
	    fileopservice.insertCollectfir(resourceid,myuser);
	    //页面资源重新获取
	    List<Resources> share = rs.getsharer();
		List<Resources> hotlook = rs.getlooktimesmax();
		System.out.println("controller"+hotlook.size());
		request.setAttribute("hotlook", hotlook);
		request.setAttribute("share", share);  
		return "share";
	}
	
	

}
