package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.UserDetail;
import com.app.service.UserDetailService;

@Controller
public class UserDetailController {
	@Autowired
	private UserDetailService service;
	
	@RequestMapping("/register")
	public String showPage() {
		return "register";
	}
	
	@RequestMapping(value = "/save",method = RequestMethod.POST)
	public String saveUser(@ModelAttribute UserDetail detail,Model model) {
		Integer id = service.saveUserDtls(detail);
		String msg="User data save succesfully::"+id;
		model.addAttribute("user", msg);
		return "register";
	}
	
	//fetch all record
	@RequestMapping("/all")
	public String getUserDtls(Model model) {
		List<UserDetail> list = service.fatchUser();
		model.addAttribute("list", list);
		//System.out.println(list);
		return "datapage";
	}
	
	//delete record
	@RequestMapping("/delete")
	public String deleteData(@RequestParam ("id")Integer id,Model model)
	{
		service.deleteOneUser(id);
		//send msg to ui
		model.addAttribute("data","one row deleted");
		//send remaining data
		//read form data from db
		List<UserDetail> list = service.fatchUser();
		model.addAttribute("list", list);
		return "datapage";
	}
	
	//update record data
		@RequestMapping("/edit")
		public String editUser(@RequestParam ("id")Integer id,Model model)
		{
		     UserDetail oneUser = service.getData(id);
		     model.addAttribute("ob", oneUser);
			return "editpage";
		}
  
}
