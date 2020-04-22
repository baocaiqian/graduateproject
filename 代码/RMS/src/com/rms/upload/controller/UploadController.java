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
	
	@RequestMapping(value="/uploadingfile",method=RequestMethod.POST)
	public String createfile(HttpSession session,MultipartFile file,HttpServletRequest request) {
		String path=session.getServletContext().getRealPath("/"); //获取当前地址
		us.UploadingFile(file, path);
		return "upload";
	}

}
