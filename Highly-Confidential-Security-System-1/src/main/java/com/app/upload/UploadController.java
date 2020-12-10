package com.app.upload;

import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UploadController {
	@Autowired
	private UploadService service;
	
	@RequestMapping("/upload")
	public String upload() {
		return "upload";
	}
	
	@RequestMapping("/upld")
	public String uploadInDb(@RequestParam("file") MultipartFile file, 
			RedirectAttributes redirect,
			Model model)
	{
		if(file.isEmpty()) {
			model.addAttribute("status", "please select any file")
		}
		try {
			
			//read and wright the file to selected location
			byte[] bs = file.getBytes();
			service.upload(bs);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
