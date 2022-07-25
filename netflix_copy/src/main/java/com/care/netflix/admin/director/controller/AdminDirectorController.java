package com.care.netflix.admin.director.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AdminDirectorController {
	
	@RequestMapping("/director.ado")
	public String getAllTicket(Model model) {
		/*
		 * HashMap<String, Object> map = new HashMap<String, Object>();
		 * 
		 * List<AdminDirectorVO> directorList;
		 * 
		 * directorList=adminDirectorService.getAllDirector(map);
		 * model.addAttribute("directorList",directorList);
		 */
		return "/admin/director";
	}
}
