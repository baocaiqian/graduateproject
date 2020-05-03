package com.rms.upload.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rms.combobox.service.ComboxService;
import com.rms.entity.Upform;
import com.rms.entity.Users;
import com.rms.upload.service.UploadService;

@Controller
@RequestMapping("/upload")
public class UploadController {
	@Resource
	private UploadService us;
	
	@Resource
	private ComboxService cs;
	
	
	//文件上传控制器
	@RequestMapping(value="/uploadingfile",method=RequestMethod.POST)
	public String createfile(HttpSession session,HttpServletRequest request,Upform form) {
		//上传文件与插入数据库resource表
		Users u =(Users)session.getAttribute("user");
		//String path=session.getServletContext().getRealPath("/"); //获取当前地址
		int myid=u.getId();
		us.UploadingFile(form, myid);
		
		//将下拉框信息传入前端
		List<String> allcs=cs.getallcs(myid);
		request.setAttribute("allcs",allcs); //存储着所有课程体系
		List<String> allcource=cs.getallcource(myid);
		request.setAttribute("allcource", allcource);//所有的课程cs

		return "upload";
	}

}
