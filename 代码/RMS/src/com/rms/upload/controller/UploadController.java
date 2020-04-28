package com.rms.upload.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rms.entity.Users;
import com.rms.upload.service.UploadService;

@Controller
@RequestMapping("/upload")
public class UploadController {
	@Resource
	private UploadService us;
	
	//文件上传控制器
	@RequestMapping(value="/uploadingfile",method=RequestMethod.POST)
	public String createfile(HttpSession session,@RequestParam("files") MultipartFile[] files,HttpServletRequest request) {
		System.out.println("成功跳到了本页面------------------------");
		session.getAttribute("user");//获取用户名，查看是否已登录以及登录的用户名，暂时不确定是不是这个
		//String path=session.getServletContext().getRealPath("/"); //获取当前地址
		us.UploadingFile(files);
		
		return "upload";
	}

}
