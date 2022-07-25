<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	
<html lang="ko" data-triggered="true">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>넷플릭스</title>

<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">

<link type="text/css" rel="stylesheet"
	href=<c:url value="/resources/css/NewFile.css" />
	data-uia="botLink">

<style type="text/css" id="onetrust-style"></style>

	<script>
	
	window.onload=start;
	function start(){
		
		sessionStorage.setItem("vs","${logincheck}");
		const v = sessionStorage.getItem("vs");
		
		if(v !== ""){
			
			alert("중복이메일입니다.");
			
			<%
			session.removeAttribute("logincheck");
			%>
		}
		
		
		var link = document.getElementById('link');
		link.onclick=send;
	}
	
	
	var req;
	function send(){
		req = new XMLHttpRequest();
		req.onreadystatechange = textChange;
		req.open('post', 'dupl');
		
		i = document.getElementById('email').value;
		p = document.getElementById('password').value;
		data = {email:i, password:p};
		data = JSON.stringify(data);
		req.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');
		req.send(data);
	}
	
	
	function textChange(){
		if(req.readyState == 4 && req.status == 200){
			var data = document.getElementById('data');
			data.innerHTML = req.responseText;
		}
	}
	
	

	$(document).ready(function(){
	   init();
	   
	   function init(){
		   
		   $('#id_password').mousemove(function(){
			   var data1=$('#id_password').val();
			   if(data1==""){
				   $('#id_password').removeClass("hasText");
			   }else if(data1>1){
				   $('#id_password').addClass("hasText");
			   }
			   
		   });
	   }			  
 });
	
	
	</script>
</head>
<body>
	<div id="appMountPoint">
		<div class="netflix-sans-font-loaded">
			<div
				class="basicLayout notMobile modernInApp hasExtendedDiacritics signupSimplicity-registration simplicity"
				lang="ko-KR" dir="ltr">

				<div class="nfHeader noBorderHeader signupBasicHeader">

					<a href="<c:url value="/"/>" class="svg-nfLogo signupBasicHeader"
						data-uia="netflix-header-svg-logo"> <svg viewBox="0 0 111 30"
							class="svg-icon svg-icon-netflix-logo" focusable="true">
							<g id="netflix-logo">
                                <path
								d="M105.06233,14.2806261 L110.999156,30 C109.249227,29.7497422 107.500234,29.4366857 105.718437,29.1554972 L102.374168,20.4686475 L98.9371075,28.4375293 C97.2499766,28.1563408 95.5928391,28.061674 93.9057081,27.8432843 L99.9372012,14.0931671 L94.4680851,-5.68434189e-14 L99.5313525,-5.68434189e-14 L102.593495,7.87421502 L105.874965,-5.68434189e-14 L110.999156,-5.68434189e-14 L105.06233,14.2806261 Z M90.4686475,-5.68434189e-14 L85.8749649,-5.68434189e-14 L85.8749649,27.2499766 C87.3746368,27.3437061 88.9371075,27.4055675 90.4686475,27.5930265 L90.4686475,-5.68434189e-14 Z M81.9055207,26.93692 C77.7186241,26.6557316 73.5307901,26.4064111 69.250164,26.3117443 L69.250164,-5.68434189e-14 L73.9366389,-5.68434189e-14 L73.9366389,21.8745899 C76.6248008,21.9373887 79.3120255,22.1557784 81.9055207,22.2804387 L81.9055207,26.93692 Z M64.2496954,10.6561065 L64.2496954,15.3435186 L57.8442216,15.3435186 L57.8442216,25.9996251 L53.2186709,25.9996251 L53.2186709,-5.68434189e-14 L66.3436123,-5.68434189e-14 L66.3436123,4.68741213 L57.8442216,4.68741213 L57.8442216,10.6561065 L64.2496954,10.6561065 Z M45.3435186,4.68741213 L45.3435186,26.2498828 C43.7810479,26.2498828 42.1876465,26.2498828 40.6561065,26.3117443 L40.6561065,4.68741213 L35.8121661,4.68741213 L35.8121661,-5.68434189e-14 L50.2183897,-5.68434189e-14 L50.2183897,4.68741213 L45.3435186,4.68741213 Z M30.749836,15.5928391 C28.687787,15.5928391 26.2498828,15.5928391 24.4999531,15.6875059 L24.4999531,22.6562939 C27.2499766,22.4678976 30,22.2495079 32.7809542,22.1557784 L32.7809542,26.6557316 L19.812541,27.6876933 L19.812541,-5.68434189e-14 L32.7809542,-5.68434189e-14 L32.7809542,4.68741213 L24.4999531,4.68741213 L24.4999531,10.9991564 C26.3126816,10.9991564 29.0936358,10.9054269 30.749836,10.9054269 L30.749836,15.5928391 Z M4.78114163,12.9684132 L4.78114163,29.3429562 C3.09401069,29.5313525 1.59340144,29.7497422 0,30 L0,-5.68434189e-14 L4.4690224,-5.68434189e-14 L10.562377,17.0315868 L10.562377,-5.68434189e-14 L15.2497891,-5.68434189e-14 L15.2497891,28.061674 C13.5935889,28.3437998 11.906458,28.4375293 10.1246602,28.6868498 L4.78114163,12.9684132 Z"
								id="Fill-14"></path></g></svg> <span class="screen-reader-text">kajaflix</span></a><a
						href="<c:url value="/clientLogin.do"/>" class="authLinks signupBasicHeader"
						data-uia="header-login-link">로그인</a>
				</div>

				<div class="simpleContainer" data-transitioned-child="true">
    <div class="centerContainer" style="display: block; transform: none; opacity: 1; transition-duration: 250ms;">
    
        <form action="clientProc" method="post" id="f">
            <div class="regFormContainer" data-uia="form-registration">
                <div class="">
                    <div class="stepHeader-container" data-uia="header">
                        <div class="stepHeader" data-a11y-focus="true" tabindex="0"><span id="" class="stepIndicator" data-uia=""><b>1</b>/<b>3단계</b></span>
                            <h1 class="stepTitle" data-uia="stepTitle">비밀번호를 설정해 멤버십을 시작하세요.</h1>
                        </div>
                    </div>
                    <div>
                        <div class="contextRow" data-uia="contextRowDone">몇 단계만 더 거치면 넷플릭스 가입 완료!</div>
                        <div class="contextRow" data-uia="contextRowPaperWork">복잡한 단계는 모두 없앴습니다.</div>
                        <ul class="simpleForm structural ui-grid">
                        	
                            <li data-uia="field-email+wrapper" class="nfFormSpace">
                                <div data-uia="field-email+container" class="nfInput nfInputOversize">
                                    <div class="nfInputPlacement"><input type=email name='email' class="nfTextField hasText" placeholder='이메일 주소를 입력해주세요.' id="email" pattern=".{1,30}" required title="sss" required/></div>
                                </div>
                            </li>
                            <li ><button type="button" id="link"> 이메일 중복체크</button> <label id="data"></label>
                            </li>
							<br>
                            <li data-uia="field-password+wrapper" class="nfFormSpace">
                                <div data-uia="field-password+container" class="nfInput nfInputOversize">
                                    <div class="nfInputPlacement"><input type=text name='password' class="nfTextField" id="password" placeholder='비밀번호를 입력해주세요' required/></div>
                                </div>
                            </li>
                            
                            <br>
                            <li data-uia="field-pipcConsent+wrapper" class="nfFormSpace">
                                <div class="ui-binary-input"><input type="checkbox" class="" name="pipcConsent" id="cb_pipcConsent" tabindex="0" data-uia="field-pipcConsent" value="true"><label for="cb_pipcConsent" data-uia="field-pipcConsent+label"><span id="" data-uia="">예, 저는 <a href="https://help.netflix.com/legal/privacy" target="_blank">개인정보 처리방침</a>에 따른 개인정보 수집 및 활용에 동의합니다.</span></label>
                                    <div class="helper"></div>
                                </div>
                            </li>
                            <li data-uia="field-emailPreference+wrapper" class="nfFormSpace">
                                <div class="ui-binary-input"><input type="checkbox" class="" name="emailPreference" id="cb_emailPreference" tabindex="0" data-uia="field-emailPreference" value="true"><label for="cb_emailPreference" data-uia="field-emailPreference+label">예, 넷플릭스 특별 할인 알림 이메일을 보내주세요. (선택 사항)</label>
                                    <div class="helper"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="submitBtnContainer"><button	 
									autocomplete="off"
									class="nf-btn nf-btn-primary nf-btn-solid nf-btn-oversize"
									data-uia="cta-registration"
									placeholder="regForm_agree_next_registration_button"
									>
									동의하고 다음</button></div>
            </div>
        </form>
    </div>
</div>
				
				<div class="site-footer-wrapper centered"
					style="transition-duration: 250ms; opacity: 1;">

					   <div class="footer-divider"></div>
               <div class="site-footer">
                  <p class="footer-top">
                     질문이 있으신가요? 문의 전화: &nbsp;<a class="footer-top-a"
                        href="tel:080-001-9587">080-001-9587</a>
                  </p>

                  <ul class="footer-links structural">
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_faq_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_faq"><span id=""
                           data-uia="data-uia-footer-label">자주 묻는 질문</span></a></li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_help_item"><a
                        class="footer-link" data-uia="footer-link"
                        href="https://help.netflix.com"
                        placeholder="footer_responsive_link_help"><span id=""
                           data-uia="data-uia-footer-label">고객 센터</span></a></li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_terms_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_terms"> <span id=""
                           data-uia="data-uia-footer-label">이용 약관</span></a></li>
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_privacy_separate_link_item">

                        <a class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_privacy_separate_link">
                           <span id="" data-uia="data-uia-footer-label">개인정보</span>
                     </a>
                     </li>
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_cookies_separate_link_item">

                        <a class="footer-link" data-uia="footer-link" href="#"
                        placeholder="footer_responsive_link_cookies_separate_link"><span
                           id="" data-uia="data-uia-footer-label">쿠키 설정</span></a>
                     </li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_corporate_information_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_corporate_information">
                           <span id="" data-uia="data-uia-footer-label">회사 정보</span>
                     </a></li>
                  </ul>
                  <div class="lang-selection-container" id="lang-switcher">
                     <div class="nfSelectWrapper inFooter selectArrow prefix"
                        data-uia="language-picker+container">
                        <label class="nfLabel" for="lang-switcher-select">언어 선택</label>

                        <div class="nfSelectPlacement globe">
                           <select data-uia="language-picker" class="nfSelect"
                              id="lang-switcher-select" name="__langSelect" tabindex="0"><option
                                 selected="" value="/signup/regform?locale=ko-KR" label="한국어"
                                 lang="ko">한국어</option>
                              <option value="/signup/regform?locale=en-KR" label="English"
                                 lang="en">English</option></select>
                        </div>
                     </div>
                  </div>

                  <div class="copy-text">
                     <div class="copy-text-block">넷플릭스서비시스코리아 유한회사 통신판매업신고번호: 제2018-서울종로-0426호 전화번호:
                        080-001-9587</div>

                     <div class="copy-text-block">대표: 레지널드 숀 톰프슨</div>
                     <div class="copy-text-block">이메일 주소: korea@netflix.com</div>

                     <div class="copy-text-block">주소: 대한민국 서울특별시 종로구 우정국로 26, 센트로폴리스 A동 20층 우편번호 03161</div>

                     <div class="copy-text-block">사업자등록번호: 165-87-00119</div>
                     <div class="copy-text-block">클라우드 호스팅: Amazon Web Services Inc.</div>

                     <div id="" class="copy-text-block" data-uia="">
                        <a
                           href="">공정거래위원회
                           웹사이트</a>
                     </div>
                  </div>
               </div>
            </div>
				<div class="a11yAnnouncer" aria-live="assertive" tabindex="-1">

				</div>
			</div>
		</div>
	</div>
	<div></div>

	<div id="onetrust-consent-sdk">
		<div class="onetrust-pc-dark-filter ot-hide ot-fade-in"></div>
	</div>
</body>
</html>


