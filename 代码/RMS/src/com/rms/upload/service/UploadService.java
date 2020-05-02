package com.rms.upload.service;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rms.entity.Upform;
import com.rms.entity.Users;
import com.rms.upload.dao.UploadDao;

@Service
@Transactional(readOnly=false)
public class UploadService {
    @Resource
    private UploadDao ud;
    @Transactional(readOnly=false)
    public void UploadingFile(Upform form,int myid) {
    	ud.uploadfile(form,myid);
    }
}
