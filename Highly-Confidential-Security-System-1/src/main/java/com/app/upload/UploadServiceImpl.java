package com.app.upload;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.model.FileUpload;
import com.app.repo.UploadRepo;

@Service
public class UploadServiceImpl implements UploadService{
	@Autowired
	private UploadRepo repo;

	@Override
	public void upload(FileUpload file) {
       repo.save(file);		
	}

}
