package com.care.netflix.admin.genre.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AdminGenreController {
	@RequestMapping("/genre.ado")
	public String getAllGenre(Model model) {
		/*
		 * HashMap<String, Object> map = new HashMap<String, Object>();
		 * 
		 * List<AdminGenreVO> genreList;
		 * 
		 * genreList=adminGenreService.getAllGenre(map);
		 * model.addAttribute("genreList",genreList);
		 */
		
		return "/admin/genre";
	}
}
