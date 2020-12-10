package com.app.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.model.FileUpload;

public interface UploadRepo extends JpaRepository<FileUpload, Integer>{

}
