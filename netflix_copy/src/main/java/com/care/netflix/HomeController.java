package com.care.netflix;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
/*import org.springframework.validation.Errors;*/
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.netflix.client.service.AuthService;
import com.care.netflix.client.service.JoinMembershipService;
import com.care.netflix.client.vo.ClientPaymentVO;
import com.care.netflix.client.vo.ClientVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private JoinMembershipService joinMembershipService;
	@Autowired
	private AuthService authService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "index";
	}

	@RequestMapping(value = "clientLogin.do", method = RequestMethod.GET)
	public String loginform(Locale locale, Model model) {
		return "clientLogin/login";
	}

	/*
	 * @RequestMapping(value = "client") public String client() { return
	 * "client/clientForm"; }
	 */

	/*
	 * @RequestMapping("/admin_login.ado") public String adminLogin(Model model)
	 * throws Exception { return "/admin/login"; }
	 */

	@RequestMapping(value = "joinForm")
	public String joinForm() {
		return "join/joinForm";
	}
	
	@RequestMapping(value = "search")
	public String search() {
		return "search";
	}

	@RequestMapping(value = "step5.do", method = RequestMethod.POST)
	public String handleStep5(@RequestParam(value = "planChoice") String membership, HttpSession session) {
		String price = "";
		if (membership.equals("basic"))
			price = "9,500";
		else if (membership.equals("standard"))
			price = "12,000";
		else
			price = "14,500";
		session.setAttribute("membership", membership);
		System.out.println("멤버십 스트링 변수 " + membership);
		System.out.println("세션값: " +session.getAttribute("membership"));
		session.setAttribute("price", price);

		return "join/5";
	}

	@RequestMapping(value = "membershipForm")
	public String memberShip() {
		return "join/membershipForm";
	}
	
	@RequestMapping(value = "step6.do", method = RequestMethod.GET)
	public String handleStep6(@ModelAttribute("ClientPaymentVO") ClientPaymentVO clientPaymentVO, HttpSession session) {
		return "join/6";

	}
	
	@RequestMapping(value = "step6.do", method = RequestMethod.POST)
	public String handleStep6_2(ClientPaymentVO clientPaymentVO, HttpSession session, Errors errors) throws Exception {
		ClientVO sn = (ClientVO)session.getAttribute("pageInfo");
		
		
		String email = sn.getEmail();
		clientPaymentVO.setEmail(email);
//		System.out.println("ss"+ clientPaymentVO);
		/*
		 * new JoinValidator().validate(clientPaymentVO, errors);//폼입력 오류 있을 경우 오류 메세지를
		 * 넣어주고 if(errors.hasErrors()) {//에러가 있을경우 return "join/6";//여기로 반환 }
		 */
		String membership = (String)session.getAttribute("membership");
		
		ClientVO mypageInfo = joinMembershipService.JoinMembership(clientPaymentVO, membership);//멤버쉽 조인해준다. 
		session.setAttribute("pageInfo", mypageInfo);
//		authInfo = authService.authenticate(authInfo.getEmail(), authInfo.getPassword());//세션에 재등록
//		session.setAttribute("authInfo", authInfo);
//		List<ProfileInfo> profileList = profileService.ProfileList(authInfo.getEmail());//프로필 정보 불러오기 
//		session.setAttribute("profileList", profileList);//프로필 리스트 세션에 등록 
		return "redirect:/main.cdo";
	}
}
	 


