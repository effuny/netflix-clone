package com.care.netflix.client;

import java.util.HashMap;

import javax.servlet.http.HttpSession; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.netflix.client.service.ClientServiceImpl;
import com.care.netflix.client.vo.ClientVO;
import com.care.netflix.client.vo.PostcodeDTO;

@Controller
public class ClientController {
	@Autowired private ClientServiceImpl clientService;
	
	@PostMapping(value = "isExistEmail", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistEmail(@RequestBody(required = false) String email) {
		String msg = clientService.isExistEmail(email);
		return msg;
	}

@RequestMapping(value = "clientProc") 
public String clientProc(ClientVO client, PostcodeDTO postcode, Model model, RedirectAttributes ra, HttpSession session) { 
	
	
	String msg = clientService.clientProc(client, postcode);
	if(msg.equals("가입 완료")) { 
		session.setAttribute("pageInfo", client);
		
		return "join/membershipForm"; 
	}else if(msg.equals("중복 이메일 입니다.")){
	session.setAttribute("logincheck", "이메일 중복입니다");
	return "join/joinForm";
	}
		return "join/joinForm";
	}
   

//이메일 중복체크 ajax 비동기 처리
@ResponseBody
@PostMapping(value="dupl", produces = "application/json; charset=UTF-8")
public String ex4(@RequestBody HashMap<String, String> map, PostcodeDTO postcode) {

	
	ClientVO client = new ClientVO();
	client.setEmail(map.get("email"));
	client.setPassword(map.get("password"));
	
	String msg = clientService.isExistEmail(client.getEmail());
	
	return msg;

}

}
 
