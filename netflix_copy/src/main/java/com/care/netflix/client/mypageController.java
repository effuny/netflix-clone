package com.care.netflix.client;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.netflix.client.dao.IClientDAO;
import com.care.netflix.client.login.service.ILoginService;
import com.care.netflix.client.service.IClientService;
import com.care.netflix.client.service.NextMonthService;
import com.care.netflix.client.vo.ClientVO;

@Controller
@RequestMapping("/mypage/")
public class mypageController {
	
//	@Autowired private MypageService mypageService;
	
	
	@Autowired private ILoginService loginService;
	
	@Autowired private IClientService clientService;
	
	@Autowired private IClientDAO clientDao;
//	@Autowired
//	private ChangePasswordService changePasswordService;
//	@Autowired
//	private LoadMembershipService loadMembershipService;
//	@Autowired
//	private ChangeMembership changeMembership;
//	@Autowired
//	private AuthService authService;
//	@Autowired
//	private ModifyBillingdateService modifyBillingDateService;
//	@Autowired
//	private ChangePaymentInfoService changePaymentInfoService;
//	@Autowired
//	private PaymentDetailService paymentDetailService;
//	@Autowired
//	private MembershipPriceService membershipPriceService;
	@Autowired private NextMonthService nextMonthService;

//	@Autowired
//	private ChangePhoneService changePhoneService;
//	@Autowired
//	private ChangeEmailService changeEmailService;
//	@Autowired
//	private ILoginService deleteMembershipService;
//	@Autowired
//	private ProfileService profileService;
//	
	
	
	
	//로그인이 안돼있으면 모든기능에 접근하지못하도록 해야한다.	
	@RequestMapping(value="mypage.do", method = RequestMethod.GET)
	public String mypage(Model model, HttpSession session) {
//		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
//		if(authInfo.getMembership_chk()!=null) {
		
//		System.out.println("세션값" + session.getAttribute("pageInfo"));
		ClientVO recept = (ClientVO)session.getAttribute("pageInfo");
		String nextMonth = nextMonthService.nextMonth(recept.getEmail());
		session.setAttribute("nextMonth", nextMonth);
		session.setAttribute("lastCardNum",recept.getCardNum().substring(12,16));
	
		
		
//		}else {
//			return "index";
//		}
		return "mypage/mypage";
	}
	
	
	@GetMapping("pwChange")
	public String changePwForm() {
		
		return "mypage/pwChange";
	}
	
	@RequestMapping(value="pwChange", method = RequestMethod.POST)
	public String pChange(String currenPassword,
			String newPassword, String confirnewPassword,
			HttpSession session){
//		System.out.println("값을 가져오나" +session.getAttribute("email"));
		//1. 현재 비밀번호 맞는지 체크
		
		
		System.out.println("패스워드들:"+ currenPassword);
		System.out.println("패스워드들:"+ newPassword);
		System.out.println("패스워드들:"+ confirnewPassword);
		ClientVO clientvo = (ClientVO)session.getAttribute("pageInfo");
		String email = clientvo.getEmail();
		ClientVO dbMemberVO = loginService.selectEmail(email);
		boolean isPasswdRight = BCrypt.checkpw(currenPassword, dbMemberVO.getPassword());
		
		
		
		if(isPasswdRight == false) { //현재 비밀번호 일치하지 않음
			
		}
		
		//2. 새 비밀번호, 새 비밀번호 확인 맞는지 체크
		if(newPassword.equals(confirnewPassword) == false ) { // 새 비밀번호, 새 비밀번호 확인이 서로 다름
			
		}
		//3. DB비밀번호 변경 , 3-1.비밀번호 암호화
		String hashPasswd = BCrypt.hashpw(newPassword, BCrypt.gensalt());
		
		System.out.println("바꿀 암호화된 :" + hashPasswd);
		
		clientvo.setPassword(hashPasswd);
		
		clientService.modifyPassword(clientvo);
//		 3-1.비밀번호 암호화
//		4. 비밀번호 완료 메세지 띄우고 로그아웃처리
//		HttpHeaders headers = new HttpHeaders();
//		headers.add("Content-type", "text/html; charset=UTF-8");
//		
//		String str = JScript.href("비밀번호 변경 완료", "/mypage/logout.do");
//		
//		return new ResponseEntity<String>(str,headers,HttpStatus.OK);
//		
				
		return "redirect:/clientLogin.do";
		
	}
	//멤버쉽해지
	@RequestMapping("planCancel.do")
	public String planCancel() {
		
		return "mypage/planCancel";
	}

	@RequestMapping(value="planCancel.do", method = RequestMethod.GET)
	public String planCancel(HttpSession session) {
		ClientVO clientvo = (ClientVO)session.getAttribute("pageInfo");
		String email = clientvo.getEmail();
		ClientVO dbMemberVO = loginService.selectEmail(email);
		System.out.println("멤버십해지:" +email);
		
		clientService.DeleteMembership(dbMemberVO);
		session.invalidate();
		return "redirect:/";
	}
	
	
	@RequestMapping(value="/index.cdo")
	public String Index(HttpSession session) {
//		AuthInfo authInfo=(AuthInfo)session.getAttribute("authInfo");
//		if(authInfo == null) {
//			return "index";
//		}else {
//			String membership_chk = authInfo.getMembership_chk();
//			if(membership_chk==null) {
//				return "join_index";			
//			}		
//		}
		return "index";
		
	}
	
	//회원탈퇴
	@RequestMapping(value="dropMember.do", method = RequestMethod.GET)
	public String dropMember(HttpSession session) {
		ClientVO clientvo = (ClientVO)session.getAttribute("pageInfo");
		String email = clientvo.getEmail();
		ClientVO dbMemberVO = loginService.selectEmail(email);
	
		clientService.dropMember(dbMemberVO);
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "planCancel")
	public String planCancel1() {
		return "mypage/planCancel";
	}
	@RequestMapping(value = "dropMember")
	public String dropMember() {
		return "mypage/dropMember";
	}
	
	@RequestMapping(value="serviceCenter.do", method = RequestMethod.GET)
	public String serviceCenter() {
		return "mypage/serviceCenter";
	}
	
	//결제상세정보
	@RequestMapping("paymentdetail.do")
	public String paymentdetail() {
		
		return "mypage/payment_detail";
	}
	
	

		
	/*
	 * @RequestMapping(value="paymentdetail.do", method=RequestMethod.GET) public
	 * String selectPayment(HttpSession session) { ClientVO clientvo =
	 * (ClientVO)session.getAttribute("pageInfo"); String email =
	 * clientvo.getEmail(); ClientVO dbMemberVO = loginService.selectEmail(email);
	 * clientService.selectPayment(dbMemberVO);
	 * 
	 * //model.addAttribute("clientPaymentAll", clientDao.selectPayment());
	 * 
	 * return "mypage/payment_details";
	 * 
	 * }
	 */
			
//			//결제상세정보
//			@ResponseBody
//			@RequestMapping(value="paymentdetail.do", method=RequestMethod.GET)
//			public String selectPayment(@RequestBody(required = false) Model model) {
//				
//				model.addAttribute("clientPaymentAll", clientDao.selectPayment());
//					
//					return "mypage/payment_details";
//				
//			}
			
			
			
	
	// 고객센터
	@RequestMapping(value="serviceCenter.do", method = RequestMethod.POST)
	public String serviceCenter2(ClientVO loginVo, Errors errors, 
			HttpSession session, HttpServletResponse response, Model model) {
		ClientVO myPageInfo = loginService.selectEmail(loginVo.getEmail());
		
		System.out.println("마이페이지용 이메일:" +myPageInfo.getEmail());
		session.setAttribute("pageInfo", myPageInfo);
		
		return "mypage/serviceCenter";
	}
	
	@GetMapping("notice")
	public String noticeForm() {
		
		return "/mypage/notice";
	}
	

}