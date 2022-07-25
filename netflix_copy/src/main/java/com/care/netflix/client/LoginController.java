package com.care.netflix.client;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.care.netflix.client.login.service.ILoginService;
import com.care.netflix.client.vo.ClientVO;




  @Controller public class LoginController {
  
  @Autowired private ILoginService loginService;
  
	/*
	 * @PostMapping(value = "loginProc") public String loginProc(ClientLoginVO
	 * login, Model model) { String msg = loginService.loginProc(login);
	 * if(msg.equals("로그인 성공")) { return "redirect:/main"; }
	 * model.addAttribute("msg", msg); return "clientLogin/login"; } }
	 */
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	
	@RequestMapping(value = "clientLogin.do", method = RequestMethod.POST)
	public String loginPost(ClientVO loginVo, Errors errors, 
			HttpSession session, HttpServletResponse response, Model model ) {
		
		ClientVO myPageInfo = loginService.selectEmail(loginVo.getEmail());
		String msg = loginService.loginProc(loginVo);
		
		//로그인 id,pw database 검증
		if(myPageInfo != null && msg.equals("로그인 성공")) {
		session.setAttribute("pageInfo", myPageInfo);
		session.setAttribute("authInfo", loginVo);
		}else if(myPageInfo == null || msg.equals("로그인 성공") == false) {
			String confirm = "id,pw 인증용 session";
			session.setAttribute("confirm", confirm);
			return "redirect:/clientLogin.do";
		}
		
		
		//쿠키관련 코드
		Cookie rememberCookie = new Cookie("REMEMBER", loginVo.getEmail()); 
		rememberCookie.setPath("/netflix/clientLogin.do");//.do로가는건 전부 브라우저 안에 쿠키생성
		if(loginVo.isLoginInfo()) {
			rememberCookie.setMaxAge(60*60*24*30);	
		}else {
			rememberCookie.setMaxAge(0);//체크안돼있으면 쿠키유지시간 0으로..!
		}
		response.addCookie(rememberCookie);//마지막 애드쿠키를 해줘야한다 응답객체안에 한번넣어주면 모든 response객체는 항상 쿠키를 들고 다님!
		
			//멤버십 있는회원과 없는회원 구분
			if(myPageInfo.getMembership_chk()==null) {
				return "redirect:/";
			} else {
				return "redirect:/main.cdo";
			}
		
	}
	
	@RequestMapping(value = "kakaoLogin")
	public String kakaoLogin(String code, HttpSession session) {
		System.out.println("카카오 인가 코드 : " + code);
		String accessToken = loginService.getAccessToken(code);
		HashMap<String, Object> userInfo = loginService.getUserInfo(accessToken);
		
		System.out.println("카카오 로그인 사용자의 닉네임 : " + userInfo.get("nickname"));
		
		session.setAttribute("kakaoInfo", userInfo.get("nickname"));
		
		return "index";
			}
	
	
	
}