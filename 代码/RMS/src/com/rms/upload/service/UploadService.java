package com.rms.upload.service;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.rms.upload.dao.UploadDao;

@Service
@Transactional(readOnly=false)
public class UploadService {
    @Resource
    private UploadDao ud;
    public void UploadingFile(MultipartFile file,String path) {
    	ud.uploadfile(file, path);
    }
}
