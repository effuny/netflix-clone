<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/mypage.css?ver=2">
	<link rel="stylesheet" type="text/css" href="../resources/css/all.css?ver=2">
	<style>
	.header_container{
	   background: #000 !important;
	}
	#footer{
	background-color: #f3f3f3 !important;
	padding:0 0 50px 0 !important;
	}
	.admin-table{
   display:table !important;
   background-color:#f3f3f3 !important;
	}
	#footer_wrap{
       width: 90% !important;
    }
</style>
</head>
<body>
     <%@ include file="../include/header.jsp" %>
    <div class="container">
        <div class="main">
            <div class="main_top">
                <label class="main_text">계정</label>
                <label id="membership_text"><img src="https://assets.nflxext.com/ffe/siteui/account/svg/membersince.svg">멤버십 시작일 : ${pageInfo.getMembership_date()}</label>
            </div>
            <hr>
            <div class="row">
                <div class="content_div">
                    <div class="title1">멤버십 & 결제 정보</div><br>
                    <div class="title1_btn" onclick="location.href='planCancel'">멤버십 해지</div>
                
                <div class="content_div">
                    <div class="title1_btn" onclick="location.href='dropMember'">회원탈퇴</div>
                </div>
                </div>
                
                <div class="row_content1">
                    <div class="content_all content1">
                        <div class="text_all text1">
                            <p id="font_weight">${pageInfo.getEmail()}</p>
                        </div>
                        <div class="text_all text2">
                            <p>비밀번호: ********</p>
                            <a href="pwChange">비밀번호 변경</a>
                        </div>
                       
                    </div>
                    <div class="content_all content2">
                        <div class="text_all text1">
                            <p id="font_weight">신용카드 **** **** **** ${lastCardNum }</p>
                            <a href="managePaymentInfo.do">결제 정보 관리</a>
                        </div>
                        <div class="text_all text2">
                            <p>다음 결제일은 ${nextMonth}입니다.</p>
                            <a href="paymentdetail.do">결제 상세 정보</a>
                        </div>
                        
                    </div>
                   
                </div>
            </div>
			<br>
            <hr>

            <div class="row">
                <div class="content_div">
                    <div class="title1">멤버십 상세 정보</div><br>
                    <p>${pageInfo.getMembership()}</p>
                </div>
                
                
              
                    
                    <div class="click_div4">
                        <div class="data">
                            <div class="data_1">
                                언어
                                <p>한국어</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청제한
                                <p>제한없음</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                프로필 잠금
                                <p>꺼짐</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                시청기록
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                평가한 콘텐츠
                            </div>
                            <a href="#">변경</a>
                        </div>
                        <div class="data">
                            <div class="data_1">
                                재생설정
                                <p>다음 화 재생. 미리보기 자동재생. 자동 설정된 화질 및 음질.</p>
                            </div>
                            <a href="#">변경</a>
                        </div>
                    </div>
                </div>
            </div>
                <div class="margin"></div>
        </div>
    </div>
     <%@ include file="../include/footer.jsp" %>
</body>
</html>