<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko" data-triggered="true">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>넷플릭스</title>
<link type="text/css" rel="stylesheet" href=<c:url value="/resources/css/NewFile.css" />
	data-uia="botLink">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script>

   $(document).ready(function(){
      init();     
      function init(){         
         $('#id_creditExpirationMonth').mousemove(function(){
            var data1=$('#id_creditExpirationMonth').val();
            var data2=$('#id_creditCardNumber').val();
            if(data1==""){
               $('#id_creditExpirationMonth').removeClass("hasText");
            }else{
               $('#id_creditExpirationMonth').addClass("hasText");
               $(this).addClass("validated");
            }            
            if(data2==""){
               $('#id_creditCardNumber').removeClass("hasText");
            }else{
               $('#id_creditCardNumber').addClass("hasText");
               $(this).addClass("validated");
            }            
         });
      }   
      
      //동의하기 
      var $checkAll = $('#cb_termsOfUseCheckAll');
      $checkAll.change(function () {
        var $this = $(this);
        var checked = $this.prop('checked'); 
        $('input[name="termsOfUse"]').prop('checked', checked);
      });

      var boxes = $('input[name="termsOfUse"]');
      boxes.change(function () {
        var boxLength = boxes.length;    
        var checkedLength = $('input[name="termsOfUse"]:checked').length;
        var selectAll = (boxLength == checkedLength);
        $checkAll.prop('checked', selectAll);
      });

 }); //ready 
   </script>
</head>
<body>
	<div id="appMountPoint">
		<div class="netflix-sans-font-loaded">
			<div
				class="basicLayout notMobile modernInApp hasExtendedDiacritics signupSimplicity-creditOptionMode simplicity"
				lang="ko-KR" dir="ltr">
				<div class="nfHeader noBorderHeader signupBasicHeader">
					<a href="<c:url value="/"/>" class="svg-nfLogo signupBasicHeader"
						data-uia="netflix-header-svg-logo"><svg viewBox="0 0 111 30"
							class="svg-icon svg-icon-netflix-logo" focusable="true">
							<g id="netflix-logo">
							<path
								d="M105.06233,14.2806261 L110.999156,30 C109.249227,29.7497422 107.500234,29.4366857 105.718437,29.1554972 L102.374168,20.4686475 L98.9371075,28.4375293 C97.2499766,28.1563408 95.5928391,28.061674 93.9057081,27.8432843 L99.9372012,14.0931671 L94.4680851,-5.68434189e-14 L99.5313525,-5.68434189e-14 L102.593495,7.87421502 L105.874965,-5.68434189e-14 L110.999156,-5.68434189e-14 L105.06233,14.2806261 Z M90.4686475,-5.68434189e-14 L85.8749649,-5.68434189e-14 L85.8749649,27.2499766 C87.3746368,27.3437061 88.9371075,27.4055675 90.4686475,27.5930265 L90.4686475,-5.68434189e-14 Z M81.9055207,26.93692 C77.7186241,26.6557316 73.5307901,26.4064111 69.250164,26.3117443 L69.250164,-5.68434189e-14 L73.9366389,-5.68434189e-14 L73.9366389,21.8745899 C76.6248008,21.9373887 79.3120255,22.1557784 81.9055207,22.2804387 L81.9055207,26.93692 Z M64.2496954,10.6561065 L64.2496954,15.3435186 L57.8442216,15.3435186 L57.8442216,25.9996251 L53.2186709,25.9996251 L53.2186709,-5.68434189e-14 L66.3436123,-5.68434189e-14 L66.3436123,4.68741213 L57.8442216,4.68741213 L57.8442216,10.6561065 L64.2496954,10.6561065 Z M45.3435186,4.68741213 L45.3435186,26.2498828 C43.7810479,26.2498828 42.1876465,26.2498828 40.6561065,26.3117443 L40.6561065,4.68741213 L35.8121661,4.68741213 L35.8121661,-5.68434189e-14 L50.2183897,-5.68434189e-14 L50.2183897,4.68741213 L45.3435186,4.68741213 Z M30.749836,15.5928391 C28.687787,15.5928391 26.2498828,15.5928391 24.4999531,15.6875059 L24.4999531,22.6562939 C27.2499766,22.4678976 30,22.2495079 32.7809542,22.1557784 L32.7809542,26.6557316 L19.812541,27.6876933 L19.812541,-5.68434189e-14 L32.7809542,-5.68434189e-14 L32.7809542,4.68741213 L24.4999531,4.68741213 L24.4999531,10.9991564 C26.3126816,10.9991564 29.0936358,10.9054269 30.749836,10.9054269 L30.749836,15.5928391 Z M4.78114163,12.9684132 L4.78114163,29.3429562 C3.09401069,29.5313525 1.59340144,29.7497422 0,30 L0,-5.68434189e-14 L4.4690224,-5.68434189e-14 L10.562377,17.0315868 L10.562377,-5.68434189e-14 L15.2497891,-5.68434189e-14 L15.2497891,28.061674 C13.5935889,28.3437998 11.906458,28.4375293 10.1246602,28.6868498 L4.78114163,12.9684132 Z"
								id="Fill-14"></path></g></svg><span class="screen-reader-text">Netflix</span></a><a
						href="<c:url value="/logout.do"/>" class="authLinks signupBasicHeader"
						data-uia="header-signout-link">로그아웃</a>
				</div>
				<div class="simpleContainer" data-transitioned-child="true">
					<div class="centerContainer"
						style="display: block; transform: none; opacity: 1; transition-duration: 250ms;">
						<form:form method="POST" data-uia="payment-form" modelAttribute = "ClientPaymentVO">
							<div class="paymentFormContainer">
								<div>
									<div class="stepHeader-container" data-uia="header">
										<div class="stepHeader" data-a11y-focus="true" tabindex="0">
											<span id="" class="stepIndicator" data-uia=""><b>3</b>/<b>3단계</b></span>
											<h1 class="stepTitle" data-uia="stepTitle">신용카드나
												체크카드&nbsp;등록</h1>
										</div>
									</div>
								</div>
								<div class="fieldContainer">
									<span class="logos logos-block" data-uia="cardLogos-comp"
										aria-label="BC, Lotte, Shinhan, KB, KEB, NH, Samsung, Hyundai 및 Hana로 결제할 수 있습니다. "><img
										alt="" class="logoIcon BC" data-uia="logoIcon-BC"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/bc.svg"><img
										alt="" class="logoIcon Lotte" data-uia="logoIcon-Lotte"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/lotte.svg"><img
										alt="" class="logoIcon Shinhan" data-uia="logoIcon-Shinhan"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/shinhan.svg"><img
										alt="" class="logoIcon KB" data-uia="logoIcon-KB"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/kb.svg"><img
										alt="" class="logoIcon KEB" data-uia="logoIcon-KEB"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/keb.svg"><img
										alt="" class="logoIcon NH" data-uia="logoIcon-NH"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/nh.svg"><img
										alt="" class="logoIcon Samsung" data-uia="logoIcon-Samsung"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/samsung.svg"><img
										alt="" class="logoIcon Hyundai" data-uia="logoIcon-Hyundai"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/hyundai.svg"><img
										alt="" class="logoIcon Hana" data-uia="logoIcon-Hana"
										src="https://assets.nflxext.com/ffe/siteui/acquisition/payment/svg/hana.svg"></span>
									 <div class="">
                           
                              <ul class="simpleForm structural ui-grid">
                              
                                 <li data-uia="field-creditCardNumber+wrapper" class="nfFormSpace">
                                 <div class="cardNumberContainer">
                                       <div data-uia="field-creditCardNumber+container"
                                          class="nfInput nfInputOversize">
                                          <div class="nfInputPlacement">
                                             <label class="input_id" placeholder="creditCardNumber">
                                             <form:input type="tel" path = "cardNum" data-uia="field-creditCardNumber"
                                                name="creditCardNumber" class="nfTextField"
                                                id="id_creditCardNumber" value="" tabindex="0" 
                                                autocomplete="off" maxlength="16" minlength="16" dir=""/>           <!-- 숫자 16자리 입력해주세요! -->
                                                <label for="id_creditCardNumber" class="placeLabel">카드번호 &nbsp;&nbsp;  <form:errors path="cardNum"/></label></label>                                               
                                          </div>
                                       </div>
                                    </div>
                                    </li>
                                    
                                    
                                 <li data-uia="field-creditExpirationMonth+wrapper"class="nfFormSpace">
                                 <div data-uia="field-creditExpirationMonth+container" class="nfInput nfInputOversize">
                                       <div class="nfInputPlacement">
                                          <label class="input_id" placeholder="creditExpirationMonth">
                                          <form:input type="tel" path="expireDate" data-uia="field-creditExpirationMonth"
                    name="creditExpirationMonth" class="nfTextField"
                                             id="id_creditExpirationMonth" value="" tabindex="0"
                                             autocomplete="off" dir=""/><label
                                             for="id_creditExpirationMonth" class="placeLabel">만료일(월/연도:
                                                05/17) &nbsp;&nbsp; <form:errors path="expireDate"/></label></label>
                                       </div>
                                    </div></li>
                                 <li data-uia="field-creditExpirationYear+wrapper" class="nfFormSpace">

                                 <div data-uia="field-name+container" class="nfInput validated nfInputOversize">
                                       <div class="nfInputPlacement">
                                          <label class="input_id" placeholder="name">
                                          <form:input type="text" path="name" data-uia="field-name" name="name"
                                             class="nfTextField hasText" id="id_name" value="${authInfo.name} "
                                             tabindex="0" autocomplete="off" minlength="1" dir=""/>
                                             <label for="id_name" class="placeLabel">이름   &nbsp;&nbsp; <form:errors path="name"/></label>
                                          </label>
                                       </div>
                                 </div>
                                 </li>
                                 
                                 <li data-uia="field-birthYear+wrapper" class="nfFormSpace">
                                 <div data-uia="field-birthYear+container" class="nfInput validated nfInputOversize">
                                       <div class="nfInputPlacement">
                                       <label class="input_id" placeholder="birthYear">
                                          <form:input type="tel" path="birthYear" data-uia="field-birthYear" name="birthYear"
                                             class="nfTextField hasText" id="id_birthYear" 
                                             value="${authInfo.birthYear}" tabindex="0" autocomplete="off" dir=""/>
                                             <label for="id_birthYear" class="placeLabel">생년 &nbsp;&nbsp; <form:errors path="birthYear"/></label>
                                       </label>
                                       </div>
                                 </div>
                                 </li>
                                 
                                 
                                 <li data-uia="field-birthMonth+wrapper" class="nfFormSpace"><div
                                       class="nfSelectWrapper hasSelection nfSelectOversize selectArrow"
                                       data-uia="field-birthMonth+container">
                                       <div class="nfSelectPlacement">
                                          <select  data-uia="field-birthMonth" class="nfSelect valid"
                                             name="birthMonth" tabindex="0"><option value ="${authInfo.birthMonth}">기존 : ${authInfo.birthMonth}월</option>
                                             <option value="1" label="1월">1월</option>
                                             <option value="2" label="2월">2월</option>
                                             <option value="3" label="3월">3월</option>
                                             <option value="4" label="4월">4월</option>
                                             <option value="5" label="5월">5월</option>
                                             <option value="6" label="6월">6월</option>
                                             <option value="7" label="7월">7월</option>
                                             <option value="8" label="8월">8월</option>
                                             <option value="9" label="9월">9월</option>
                                             <option value="10" label="10월">10월</option>
                                             <option value="11" label="11월">11월</option>
                                             <option value="12" label="12월">12월</option></select><label
                                             class="nfLabel placeLabel">생월</label>
                                       </div>
                                    </div></li>
                                 <li data-uia="field-birthDate+wrapper" class="nfFormSpace"><div
                                       class="nfSelectWrapper hasSelection nfSelectOversize selectArrow"
                                       data-uia="field-birthDate+container">
                                       <div class="nfSelectPlacement">
                                          <select data-uia="field-birthDate" class="nfSelect valid" 
                                             name="birthDay" tabindex="0"><option value ="${authInfo.birthDay}">기존 : ${authInfo.birthDay}일</option>
                                             <!-- <option selected="" value="28" label="28">28</option>  -->
                                             <option value="1" label="1">1일</option>
                                             <option value="2" label="2">2일</option>
                                             <option value="3" label="3">3일</option>
                                             <option value="4" label="4">4일</option>
                                             <option value="5" label="5">5일</option>
                                             <option value="6" label="6">6일</option>
                                             <option value="7" label="7">7일</option>
                                             <option value="8" label="8">8일</option>
                                             <option value="9" label="9">9일</option>
                                             <option value="10" label="10">10일</option>
                                             <option value="11" label="11">11일</option>
                                             <option value="12" label="12">12일</option>
                                             <option value="13" label="13">13일</option>
                                             <option value="14" label="14">14일</option>
                                             <option value="15" label="15">15일</option>
                                             <option value="16" label="16">16일</option>
                                             <option value="17" label="17">17일</option>
                                             <option value="18" label="18">18일</option>
                                             <option value="19" label="19">19일</option>
                                             <option value="20" label="20">20일</option>
                                             <option value="21" label="21">21일</option>
                                             <option value="22" label="22">22일</option>
                                             <option value="23" label="23">23일</option>
                                             <option value="24" label="24">24일</option>
                                             <option value="25" label="25">25일</option>
                                             <option value="26" label="26">26일</option>
                                             <option value="27" label="27">27일</option>
                                             <option value="28" label="28">28일</option>
                                             <option value="29" label="29">29일</option>
                                             <option value="30" label="30">30일</option>
                                             <option value="31" label="31">31일</option></select><label
                                             class="nfLabel placeLabel">생일</label>
                                       </div>
                                    </div></li>
                              </ul>
                           </div>
									<ul class="orderInfo" data-uia="orderInfo">
										<li class="orderInfoItem" data-uia="selected-plan-item"><div
												class="orderInfoItem__content-container">
												<div class="orderInfoItem__content"
													data-uia="selected-plan-item+content">
													<div class="orderInfoItem__text orderInfoItem__title"
														data-uia="selected-plan-item+title">월 ${price} 원</div>
													<div class="orderInfoItem__text orderInfoItem__description"
														data-uia="selected-plan-item+description">${membership}</div>
												</div>
												<button type="button" class="orderInfoItem__button"
													data-uia="changePlanAction" onclick="location.href='step4.do'"></button>
											</div></li>
									</ul>
									<div class="consent-fields">
										<div class="checkboxes ui-grid" data-uia="field-consents">
											<h4 class="checkboxGroupHeading">
												<div class="ui-binary-input bold">
													<input type="checkbox"  class="" name="termsOfUseCheckAll"
														id="cb_termsOfUseCheckAll" tabindex="0"
														data-uia="field-consents+termsOfUseCheckAll" value="true"/><label
														for="cb_termsOfUseCheckAll"
														data-uia="field-consents+termsOfUseCheckAll+label"><span
														id="" data-uia="">19세 이상이며, 아래의 약관에 모두 동의합니다. <br> 
														<form:errors path="termsOfUseCheckAll"/>
														</span></label>
													<div class="helper"></div>
												</div>
											</h4>
											<div class="summary-error" data-uia="summary-error"></div>
											<ul class="structural">
												<li class="li-termsOfUse"><div class="ui-binary-input">
														<input type="checkbox" class="" name="termsOfUse"
															id="cb_termsOfUse" tabindex="0"
															data-uia="field-consents+termsOfUse" value="true">
															<label
															for="cb_termsOfUse"
															data-uia="field-consents+termsOfUse+label"><span
															id="" data-uia="">Netflix <a
																href="//help.netflix.com/legal/termsofuse"
																target="_blank">이용 약관</a> 및 <a
																href="//help.netflix.com/legal/privacy" target="_blank">개인정보
																	처리방침</a>에 동의합니다.<br> 
														<form:errors path="termsOfUse"/>
														</span></label>
														<div class="helper"></div>
													</div></li>
												<li class="li-personalInfoThirdParties"><div
														class="ui-binary-input">
														<input type="checkbox" class=""
															name="personalInfoThirdParties"
															id="cb_personalInfoThirdParties" tabindex="0"
															data-uia="field-consents+personalInfoThirdParties"
															value="true"><label
															for="cb_personalInfoThirdParties"
															data-uia="field-consents+personalInfoThirdParties+label"><span
															id="" data-uia="">본인의 개인 정보를 제3자에 제공하는 데에 동의합니다.<br> 
														<form:errors path="personalInfoThirdParties"/></span></label>
														<div class="helper"></div>
													</div></li>
												<li class="li-personalInfoAbroad"><div
														class="ui-binary-input">
														<input type="checkbox" class="" name="personalInfoAbroad"
															id="cb_personalInfoAbroad" tabindex="0"
															data-uia="field-consents+personalInfoAbroad" value="true"><label
															for="cb_personalInfoAbroad"
															data-uia="field-consents+personalInfoAbroad+label"><span
															id="" data-uia="">본인의 개인 정보가 해외로 이전되는 데에 동의합니다.
															<br> 
														<form:errors path="personalInfoAbroad"/></span></label>
														<div class="helper"></div>
													</div></li>
												<li class="li-personalInfoGateway"><div
														class="ui-binary-input">
														<input type="checkbox" class="" name="personalInfoGateway"
															id="cb_personalInfoGateway" tabindex="0"
															data-uia="field-consents+personalInfoGateway"
															value="true"><label for="cb_personalInfoGateway"
															data-uia="field-consents+personalInfoGateway+label"><span
															id="" data-uia="">본인의 개인 정보를 <a
																href="/krpaymentconsent" target="_blank">결제 서비스업체</a>에
																제공하는 데에 동의합니다.<br> 
														<form:errors path="personalInfoGateway"/>
														</span></label>
														<div class="helper"></div>
													</div></li>
												<li class="li-cancelMembershipAnytime"><div
														class="ui-binary-input">
														<input type="checkbox" class=""
															name="cancelMembershipAnytime"
															id="cb_cancelMembershipAnytime" tabindex="0"
															data-uia="field-consents+cancelMembershipAnytime"
															value="true"><label
															for="cb_cancelMembershipAnytime"
															data-uia="field-consents+cancelMembershipAnytime+label"><span
															id="" data-uia="">멤버십을 해지하지 않으면 Netflix에서 자동으로
																멤버십을 계속하며, 멤버십 요금(현 9,500원)이 등록한 결제 수단으로 매월 청구됩니다. 멤버십은
																www.netflix.com의 '계정' 페이지에서 언제든지 해지할 수 있습니다. 이 경우 결제 주기가
																종료될 때 멤버십이 해지되며, 잔여 기간 동안은 서비스를 계속 이용할 수 있습니다. 단, 결제일로부터
																7일 이내 Netflix 콘텐츠를 시청하지 않고 멤버십이 즉시 종료되도록 해지하는 경우 해당 결제
																주기에 청구된 멤버십 요금을 전액 환불 요청할 수 있습니다.<br>
																<form:errors path="cancelMembershipAnytime"/></span></label>
														<div class="helper"></div>
													</div></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="submitBtnContainer">
								<button type="submit" autocomplete="off"
									class="nf-btn nf-btn-primary nf-btn-solid nf-btn-oversize"
									data-uia="action-submit-payment">유료 멤버십 시작</button>
							</div>
						</form:form>
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
							<div class="copy-text-block">클라우드 호스팅: Amazon Web Services
								Inc.</div>

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