<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	
<html lang="ko" data-triggered="true">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>netflix</title>

<link type="text/css" rel="stylesheet"
	href=<c:url value="/resources/css/NewFile.css" />
	data-uia="botLink">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>

	$(document).ready(function(){
		   $('.text3').css("color","#e50914");
		   $('.text1').css("color","#737373");
		   $('.text2').css("color","#737373");
		init();
	   
	   
	   function init(){
		   $('#planGrid_planChoice_0').click(function(){
			   $('.text1').css("color","#e50914");
			   $('.text2').css("color","#737373");
			   $('.text3').css("color","#737373");
		   });
		   
		   $('#planGrid_planChoice_1').click(function(){
			   $('.text2').css("color","#e50914");
			   $('.text1').css("color","#737373");
			   $('.text3').css("color","#737373");
		   });
		   
		   $('#planGrid_planChoice_2').click(function(){
			   $('.text3').css("color","#e50914");
			   $('.text1').css("color","#737373");
			   $('.text2').css("color","#737373");
		   });


	   }

			  
 });
			  


	</script>
</head>
<body>
	<div id="appMountPoint">
		<div class="netflix-sans-font-loaded">
			<div
				class="basicLayout notMobile modernInApp hasExtendedDiacritics signupSimplicity-planSelection simplicity"
				lang="ko-KR" dir="ltr">
				
				<div class="nfHeader noBorderHeader signupBasicHeader">
				<c:if test="${!empty authInfo}"><!-- ������ ������ �����Բ� ���� -->
					<a href="<c:url value="/logout.do"/>" class="authLinks signupBasicHeader"
						data-uia="header-signout-link">�α׾ƿ�</a>
				</c:if>
				</div>
				
				<div class="simpleContainer" data-transitioned-child="true">
					
					<div class="centerContainer narrowCenterContainer"
						style="display: block; transform: none; opacity: 1; transition-duration: 250ms;">
						<form:form action ="step5.do" method="post" >
						<div class="planFormContainer" data-uia="form-plan-selection">
							<div class="">
								<div class="stepHeader-container" data-uia="header">

									<div class="stepHeader" data-a11y-focus="true" tabindex="0">
										<span id="" class="stepIndicator" data-uia=""><b>2</b>/<b>3�ܰ�</b></span>

										<h1 class="stepTitle" data-uia="stepTitle">���ϴ� �������
											�����ϼ���.</h1>
									</div>
								</div>
								<div class="changeAnytime">
									<ul class="checkmark-group -compact" data-uia="checkmark-group">

										<li class="checkmark-group--row -compact"
											data-uia="checkmark-group+row-0"><svg
												viewBox="0 0 24 24" class="checkmark-group--icon"
												aria-hidden="true">

									<path fill="currentColor"
													d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg>

											<span class="checkmark-group--text"
											data-uia="checkmark-group+row-0+content">���� ���� ����������
												��û.</span></li>

										<li class="checkmark-group--row -compact"
											data-uia="checkmark-group+row-1"><svg
												viewBox="0 0 24 24" class="checkmark-group--icon"
												aria-hidden="true">

								<path fill="currentColor"
													d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg>

											<span class="checkmark-group--text"
											data-uia="checkmark-group+row-1+content">���⿡ �� �´� ��������
												��õ�� �帳�ϴ�.</span></li>

										<li class="checkmark-group--row -compact"
											data-uia="checkmark-group+row-2"><svg
												viewBox="0 0 24 24" class="checkmark-group--icon"
												aria-hidden="true">

								<path fill="currentColor"
													d="M3.707 12.293l-1.414 1.414L8 19.414 21.707 5.707l-1.414-1.414L8 16.586z"></path></svg>

											<span class="checkmark-group--text"
											data-uia="checkmark-group+row-2+content">������� �������� ����
												�Ǵ� ���� ����.</span></li>
									</ul>
								</div>
							</div>

							<div class="planGrid planGrid--has3Plans" data-uia="plan-grid">
								<div class="planGrid__header">

									<div class="planGrid__selector planGrid__planSelector"
										role="radiogroup" aria-label="�����"
										aria-describedby="planGrid_planChoice_description"
										data-uia="plan-grid-plan-selector">

										<span class="planGrid__selectorDescription"
											id="planGrid_planChoice_description"
											data-uia="plan-grid-plan-selector+description"
											aria-hidden="true">���ϴ� ������� �����ϼ���</span> <label
											class="planGrid__selectorChoice planGrid__planChoice"
											for="planGrid_planChoice_0"
											data-uia="plan-grid-plan-selector+label-text_1_stream_name">

											<input type="radio" name="planChoice"
											class="planGrid__selectorInput planGrid__planInput"
											id="planGrid_planChoice_0"
											data-uia="plan-grid-plan-selector+input-text_1_stream_name"
											value="basic"> <span
											class="planGrid__selectorLabel planGrid__planLabel">���̽�</span>
										</label> <label class="planGrid__selectorChoice planGrid__planChoice"
											for="planGrid_planChoice_1"
											data-uia="plan-grid-plan-selector+label-text_2_stream_name">

											<input type="radio" name="planChoice"
											class="planGrid__selectorInput planGrid__planInput"
											id="planGrid_planChoice_1"
											data-uia="plan-grid-plan-selector+input-text_2_stream_name"
											value="standard"> <span
											class="planGrid__selectorLabel planGrid__planLabel">���Ĵٵ�</span>
										</label> <label class="planGrid__selectorChoice planGrid__planChoice"
											for="planGrid_planChoice_2"
											data-uia="plan-grid-plan-selector+label-text_4_stream_name">

											<input type="radio" name="planChoice"
											class="planGrid__selectorInput planGrid__planInput"
											id="planGrid_planChoice_2"
											data-uia="plan-grid-plan-selector+input-text_4_stream_name"
											value="premium" checked=""> <span
											class="planGrid__selectorLabel planGrid__planLabel">�����̾�</span>
										</label>
									</div>
								</div>

								<table class="planGrid__featureTable" role="table"
									data-uia="plan-grid-feature-table">
									<caption class="planGrid__featureTableCaption">���ø���
										����� ������ ����</caption>

									<tbody class="planGrid__featureTableBody"
										data-uia="plan-grid-feature-table-body">

										<tr role="row"
											class="planGrid__featureTableRow planGrid__featureTableRow--planPrice">
											<td class="planGrid__cell planGrid__featureCell" role="cell"
												data-uia="plan-grid-feature-table-cell+planPrice-feature">��
												���</td>

											<td 
												class="planGrid__cell planGrid__cell--isSelected planGrid__stringCell text1"
												role="cell"
												data-uia="plan-grid-feature-table-cell+planPrice-text_1_stream_name"
												aria-label="���̽�">9,500��</td>

											<td  
												class="planGrid__cell planGrid__stringCell text2" role="cell"
												data-uia="plan-grid-feature-table-cell+planPrice-text_2_stream_name"
												aria-label="���Ĵٵ�">12,000��</td>

											<td class="planGrid__cell planGrid__stringCell text3" role="cell"
												data-uia="plan-grid-feature-table-cell+planPrice-text_4_stream_name"
												aria-label="�����̾�">14,500��</td>
										</tr>

										<tr role="row"
											class="planGrid__featureTableRow planGrid__featureTableRow--videoQuality text3">
											<td class="planGrid__cell planGrid__featureCell" role="cell"
												data-uia="plan-grid-feature-table-cell+videoQuality-feature">����
												ȭ��</td>

											<td
												class="planGrid__cell planGrid__cell--isSelected planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+videoQuality-text_1_stream_name"
												aria-label="���̽�">

												<div class="planGrid__videoQualityLabel text1">����</div>
											</td>

											<td class="planGrid__cell planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+videoQuality-text_2_stream_name"
												aria-label="���Ĵٵ�">

												<div class="planGrid__videoQualityLabel text2">�ſ� ����</div>
											</td>

											<td class="planGrid__cell planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+videoQuality-text_4_stream_name"
												aria-label="�����̾�">

												<div class="planGrid__videoQualityLabel text3">���� ����</div>
											</td>
										</tr>

										<tr role="row"
											class="planGrid__featureTableRow planGrid__featureTableRow--resolution">
											<td class="planGrid__cell planGrid__featureCell" role="cell"
												data-uia="plan-grid-feature-table-cell+resolution-feature">�ػ�</td>

											<td
												class="planGrid__cell planGrid__cell--isSelected planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+resolution-text_1_stream_name"
												aria-label="���̽�">

												<div class="planGrid__videoQualityLabel text1">480p</div>
											</td>
											<td class="planGrid__cell planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+resolution-text_2_stream_name"
												aria-label="���Ĵٵ�">

												<div class="planGrid__videoQualityLabel text2">1080p</div>
											</td>
											<td class="planGrid__cell planGrid__videoQualityCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+resolution-text_4_stream_name"
												aria-label="�����̾�">

												<div class="planGrid__videoQualityLabel text3">4K+HDR</div>
											</td>
										</tr>
										<tr role="row"
											class="planGrid__featureTableRow planGrid__featureTableRow--noField">
											<td class="planGrid__cell planGrid__featureCell" role="cell"
												data-uia="plan-grid-feature-table-cell+3-feature">TV,
												��ǻ��, ����Ʈ��, �º����� ��û</td>

											<td
												class="planGrid__cell planGrid__cell--isSelected planGrid__booleanCell"
												role="cell"
												data-uia="plan-grid-feature-table-cell+3-text_1_stream_name"
												aria-label="���̽�"><span class="planGrid__booleanIcon text1" aria-hidden="true">V</span></td>

											<td class="planGrid__cell planGrid__booleanCell text2" role="cell"
												data-uia="plan-grid-feature-table-cell+3-text_2_stream_name"
												aria-label="���Ĵٵ�"><span class="planGrid__booleanLabel text2">��</span>

												<span class="planGrid__booleanIcon" aria-hidden="true">V</span></td>

											<td class="planGrid__cell planGrid__booleanCell text3" role="cell"
												data-uia="plan-grid-feature-table-cell+3-text_4_stream_name"
												aria-label="�����̾�"><span class="planGrid__booleanLabel text3">��</span>

												<span class="planGrid__booleanIcon" aria-hidden="true">V</span></td>
					 					</tr>
									</tbody>
								</table>

								<small class="planGrid__disclaimer planGrid__standardDisclaimer"><span
									id="" data-uia="plan-grid-legal">HD(720p), Ǯ HD(1080p),
										UHD(4K), HDR ȭ�� ���� ���δ� ����ϴ� ���ͳ� ���񽺿� ����̽��� ���ɿ� ���� �޶��� �� �ֽ��ϴ�.
										��� �������� ��� ȭ���� ���������� �ʽ��ϴ�. �ڼ��� ������ <a
										href="https://help.netflix.com/legal/termsofuse"
										target="_blank">�̿� ���</a>�� Ȯ���ϼ���.
								</span></small> <small
									class="planGrid__disclaimer planGrid__standardDisclaimer"><span
									id="" data-uia="plan-grid-legal">������ ��� ����鸸 ������ �Բ� �̿���
										�� �ֽ��ϴ�. �����̾� ������� �������� 4��, ���Ĵٵ� ������� 2��, ���̽� ������� 1����� �����մϴ�.</span></small>
							</div>
						</div>
						<div class="submitBtnContainer">
							<button type="submit" autocomplete="off"
								class="nf-btn nf-btn-primary nf-btn-solid nf-btn-oversize"
								data-uia="cta-plan-selection"
								placeholder="planSelection_button_continue">����</button>
						</div>
						</form:form>
					</div>
				</div>
			</div>




			<div class="site-footer-wrapper centered"
				style="transition-duration: 250ms; opacity: 1;">

				   <div class="footer-divider"></div>
               <div class="site-footer">
                  <p class="footer-top">
                     ������ �����Ű���? ���� ��ȭ: &nbsp;<a class="footer-top-a"
                        href="tel:080-001-9587">080-001-9587</a>
                  </p>

                  <ul class="footer-links structural">
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_faq_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_faq"><span id=""
                           data-uia="data-uia-footer-label">���� ���� ����</span></a></li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_help_item"><a
                        class="footer-link" data-uia="footer-link"
                        href="https://help.netflix.com"
                        placeholder="footer_responsive_link_help"><span id=""
                           data-uia="data-uia-footer-label">�� ����</span></a></li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_terms_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_terms"> <span id=""
                           data-uia="data-uia-footer-label">�̿� ���</span></a></li>
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_privacy_separate_link_item">

                        <a class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_privacy_separate_link">
                           <span id="" data-uia="data-uia-footer-label">��������</span>
                     </a>
                     </li>
                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_cookies_separate_link_item">

                        <a class="footer-link" data-uia="footer-link" href="#"
                        placeholder="footer_responsive_link_cookies_separate_link"><span
                           id="" data-uia="data-uia-footer-label">��Ű ����</span></a>
                     </li>

                     <li class="footer-link-item"
                        placeholder="footer_responsive_link_corporate_information_item"><a
                        class="footer-link" data-uia="footer-link" href=00
                        placeholder="footer_responsive_link_corporate_information">
                           <span id="" data-uia="data-uia-footer-label">ȸ�� ����</span>
                     </a></li>
                  </ul>
                  <div class="lang-selection-container" id="lang-switcher">
                     <div class="nfSelectWrapper inFooter selectArrow prefix"
                        data-uia="language-picker+container">
                        <label class="nfLabel" for="lang-switcher-select">��� ����</label>

                        <div class="nfSelectPlacement globe">
                           <select data-uia="language-picker" class="nfSelect"
                              id="lang-switcher-select" name="__langSelect" tabindex="0"><option
                                 selected="" value="/signup/regform?locale=ko-KR" label="�ѱ���"
                                 lang="ko">�ѱ���</option>
                              <option value="/signup/regform?locale=en-KR" label="English"
                                 lang="en">English</option></select>
                        </div>
                     </div>
                  </div>

                  <div class="copy-text">
                     <div class="copy-text-block">���ø�������ý��ڸ��� ����ȸ�� ����Ǹž��Ű��ȣ: ��2018-��������-0426ȣ ��ȭ��ȣ:
                        080-001-9587</div>

                     <div class="copy-text-block">��ǥ: �����ε� �� ������</div>
                     <div class="copy-text-block">�̸��� �ּ�: korea@netflix.com</div>

                     <div class="copy-text-block">�ּ�: ���ѹα� ����Ư���� ���α� �������� 26, ��Ʈ�������� A�� 20�� �����ȣ 03161</div>

                     <div class="copy-text-block">����ڵ�Ϲ�ȣ: 165-87-00119</div>
                     <div class="copy-text-block">Ŭ���� ȣ����: Amazon Web Services Inc.</div>

                     <div id="" class="copy-text-block" data-uia="">
                        <a
                           href="">�����ŷ�����ȸ
                           ������Ʈ</a>
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