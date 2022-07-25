package com.care.netflix.contents;


import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.netflix.client.login.service.ILoginService;
import com.care.netflix.contents.service.IContentsService;
import com.care.netflix.contents.service.WishLikeService;
import com.care.netflix.contents.vo.ContentsVO;
import com.care.netflix.contents.vo.WishAndLikeVO;
import com.care.netflix.client.vo.AuthInfo;
import com.care.netflix.client.vo.ClientVO;
import com.care.netflix.contents.service.CheckDuplicateEmailService;


@Controller
public class MainController {

	@Autowired
	private IContentsService contentsService;
	@Autowired
	private WishLikeService wishLikeService;
	@Autowired
	private CheckDuplicateEmailService checkDuplicatedEmailService;
	@Autowired private ILoginService loginService;

	@RequestMapping(value = "main.cdo")
	public String Main01(HttpSession session, HttpServletResponse response, Model model) {
		System.out.println("get");
		ClientVO loginVo = (ClientVO)session.getAttribute("pageInfo");
		
		List<ContentsVO> contentsList = contentsService.ContentsList();
		List<ContentsVO> ramdomList = contentsService.ContentsList();
		WishAndLikeVO wishLikeVO = new WishAndLikeVO();
		
		
		wishLikeVO.setEmail(((ClientVO)session.getAttribute("pageInfo")).getEmail());//세션의 이메일 등록
		System.out.println("Ck_session email: "+ wishLikeVO.getEmail()) ; // 세션이메일 등록 확인
		List<WishAndLikeVO> wishLikeInfo = (List<WishAndLikeVO>)wishLikeService.wishList(wishLikeVO);
		System.out.println("떠주세요: " + wishLikeInfo);
		
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("wishLikeInfo", wishLikeInfo);
		Collections.shuffle(ramdomList);
		session.setAttribute("randomList", ramdomList);
		
		
		for (ContentsVO i : contentsList) {
			System.out.println(i.toString());
		}

		return "main";
	}
	
//	@RequestMapping(value="/index.cdo")
//	public String Index(HttpSession session) {
//		AuthInfo authInfo=(AuthInfo)session.getAttribute("authInfo");
//		if(authInfo == null) {
//			return "index";
//		}else {
//			String membership_chk = authInfo.getMembership_chk();
//			if(membership_chk==null) {
//				return "join_index";			
//			}		
//		}
//		return "";
//		
//	}
//
//	
//	@RequestMapping(value="/index.cdo", method = RequestMethod.POST)
//	public String login(@ModelAttribute("clientVO")ClientVO loginVo, HttpSession session) {
//		
//		if(checkDuplicatedEmailService.checkDuplicateEmail(loginVo.getEmail())) {
//			session.setAttribute("joinEmail", loginVo.getEmail());//false면 아이디 중복 
//			return "redirect:/join/step2.do";
//		}else {
//			session.setAttribute("joinEmail", loginVo.getEmail());//이메일 전달을위해 세션에 등록 
//			return "join/0";//아이디 있으니까 로그인 하는곳
//		}
//	}
	
	@RequestMapping(value="/wish.cdo", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public int wish(WishAndLikeVO wishAndLikeVO ) {
		//이메일이랑 컨텐트 id 프로필 넘버로 이전에 찜, 좋아요, 싫어요 했는지 검색 
		//있으면 update로 //없으면 insert로 
		try {
			
			System.out.println(wishAndLikeVO);
			if(wishLikeService.SelectWishLike(wishAndLikeVO)!= null) {
				wishLikeService.UpdateWish(wishAndLikeVO);
			}else {
				wishLikeService.InsertWish(wishAndLikeVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}
	
	@RequestMapping(value = "viewed")
	public String viewedform() {
		return "mypage/viewed";
	}
	@RequestMapping(value="/like.cdo", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public int like(WishAndLikeVO wishAndLikeVO ) {
		//이메일이랑 컨텐트 id 프로필 넘버로 이전에 찜, 좋아요, 싫어요 했는지 검색 
		//있으면 update로 //없으면 insert로 
		try {
			System.out.println(wishAndLikeVO);
			if(wishLikeService.SelectWishLike(wishAndLikeVO)!= null) {
				wishLikeService.UpdateLike(wishAndLikeVO);
			}else {
				wishLikeService.InsertLike(wishAndLikeVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}
	
	
	@RequestMapping(value="/dislike.cdo", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public int dislike(WishAndLikeVO wishAndLikeVO ) {
		//이메일이랑 컨텐트 id 프로필 넘버로 이전에 찜, 좋아요, 싫어요 했는지 검색 
		//있으면 update로 //없으면 insert로 
		try {
			System.out.println(wishAndLikeVO);
			if(wishLikeService.SelectWishLike(wishAndLikeVO)!= null) {
				wishLikeService.UpdateDislike(wishAndLikeVO);
			}else {
				wishLikeService.InsertDislike(wishAndLikeVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}
	

}
