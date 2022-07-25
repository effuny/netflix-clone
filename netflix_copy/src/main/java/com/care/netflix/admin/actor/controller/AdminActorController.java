package com.care.netflix.admin.actor.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AdminActorController {
	
	@RequestMapping("/actor.ado")
	public String getAllActor(Model model) {
		/*
		 * HashMap<String, Object> map = new HashMap<String, Object>();
		 * 
		 * List<AdminActorVO> actorList;
		 * 
		 * actorList=adminActorService.getAllActor(map);
		 * model.addAttribute("actorList",actorList);
		 */
		
		return "/admin/actor";
	}
}
