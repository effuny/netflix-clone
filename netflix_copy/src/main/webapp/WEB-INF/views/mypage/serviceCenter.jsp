<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/serviceCenter.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/all.css">
	
</head>
<body>
    <div class="container">
        <div class="head">
            <div class="head_div">
                <div class="head_top">
                    <div class="rogo">NETFLIX</div>
                    <div class="profile">
                        <span>
                            <label>${pageInfo.name}</label>
                            <img src="https://occ-0-395-325.1.nflxso.net/dnm/api/v6/K6hjPJd6cR6FpVELC5Pd6ovHRSk/AAAABbme8JMz4rEKFJhtzpOKWFJ_6qX-0y5wwWyYvBhWS0VKFLa289dZ5zvRBggmFVWVPL2AAYE8xevD4jjLZjWumNo.png?r=a41" class="icon_account">
                        </span>
                        <!-- <div class="user_div" style="display:none;">-->
                        <div class="user_div" style="display:none; " >
                            <br><p><a href="mypage.do" class="linkhover">계정 </a><img src='<c:url value="../resources/img/Arrow_icon.png"/>' class="icon Arrow_icon"></p><br>
                            <p><a href="../logout.do" class="linkhover">넷플릭스에서 로그아웃 </a><img src='<c:url value="../resources/img/Arrow_icon.png"/>' class="icon Arrow_icon"></p>
                        </div>
                    </div>
                </div>
                <p>고객센터</p>
                <div class="search_area">
                    <form action="#" method="post">
                        <span><img src= '<c:url value="/img/search_icon.png"/>' class="search_icon"></span>
                        <input type="search" class="search" name="search_item" placeholder="어떤 도움이 필요하세요?">
                    </form>
                </div>
            </div>
        </div>
        
        <div class="content">
            <div class="content_text">
                <div class="text1">
                    <h2>${pageInfo.name} 님, 안녕하세요.</h2>
                    도움이 될 만한 문서
                </div>
                <div class="text_box">
                    <div class="box_1"><img src='<c:url value="/img/help.png"/>' class="icon_help"><a href="#" class="linkhover">넷플릭스 계정 정보 업데이트 방법</a></div>
                    <div class="box_1"><img src='<c:url value="/img/help.png"/>' class="icon_help">계정 보안을 유지하는 방법</a></div>
                    <div class="box_1"><img src='<c:url value="/img/help.png"/>' class="icon_help">성인 인증 방법</a></div>
                </div>
            </div>
        </div>
        <div class="content2">
            <div class="content_text2 ,content_text">
                <div class="linkbox_1">
                    <h2>내 계정 관리</h2>
                    <p><a href="https://help.netflix.com/ko/node/24926?ui_action=kb-article-popular-categories" class="linkhover">멤버십 및 요금</a></p>
                    <p><a href="https://help.netflix.com/ko/node/100775?ui_action=kb-article-popular-categories" class="linkhover">내 계정에 새로운 로그인이 발생했다는 이메일을 수신했습니다.</a></p>
                    <p><a href="https://help.netflix.com/ko/node/22?ui_action=kb-article-popular-categories" class="linkhover">멤버십 변경 방법</a></p>
                </div>
                <div class="linkbox_1">
                    <h2>시청 불가</h2>
                    <p><a href="https://help.netflix.com/ko/node/18?ui_action=kb-article-popular-categories" class="linkhover">타인의 내 계정 사용을 중단시키는 방법</a></p>
                    <p><a href="https://help.netflix.com/ko/node/57688?ui_action=kb-article-popular-categories" class="linkhover">넷플릭스에 '사용중인 디바이스와 넷플릭스 앱버전이 호환되지 않습니다.' 라는 메시지가 표시됩니다.</a></p>
                    <p><a href="https://help.netflix.com/ko/node/14384?ui_action=kb-article-popular-categories" class="linkhover">Android 디바이스에서 스트리밍 관련 문제 해결</a></p>
                </div>
                <div class="linkbox_1">
                    <h2>결제 문의</h2>
                    <p><a href="#" class="linkhover">멤버십 및 요금</a></p>
                    <p><a href="#" class="linkhover">'최근 결제에 문제가 있어 계정이 보류 중입니다.'라는 Netflix 메시지가 표시됩니다.</a></p>
                    <p><a href="#" class="linkhover">넷플릭스 기프트카드</a></p>
                </div>
                <div class="linkbox_1">
                    <h2>넷플릭스 시청</h2>
                    <p><a href="#" class="linkhover">프로필 생성 및 수정 방법</a></p>
                    <p><a href="#" class="linkhover">TV에서 넷플릭스를 시청하는 방법</a></p>
                    <p><a href="#" class="linkhover">콘텐츠를 저장하여 오프라인에서 시청하는 방법</a></p>
                </div>
                <div class=" linkbox_2">
                    <h2>빠른 링크</h2>
                    
                    <span><p><a href="pwChange" class="linkhover">비밀번호 업데이트</a></p><img src='<c:url value="/img/Arrow_icon.png"/>' class="icon action_icon"></span>
                    <span><p><a href="#" class="linkhover">결제수단 업데이트</a></p><img src='<c:url value="/resources/img/Arrow_icon.png"/>' class="icon action_icon"></span>
                    <span><p><a href="planCancel" class="linkhover">멤버십 해지</a></p><img src='<c:url value="/img/Arrow_icon.png"/>' class="icon action_icon"></span>
                    <span><p><a href="dropMember" class="linkhover">멤버십 탈퇴</a></p><img src='<c:url value="/img/Arrow_icon.png"/>' class="icon action_icon"></span>
                   
                </div>
                <div class="call_div">
                    <div class="call_div2">
                    <p>X<p>
                    <h2>문의 전화</h2>
                    <input type="button" class="call_btn" value="010-8949-3413"><br>
                    <span>
                    한국어 상담 운영 시간은 월요일부터 일요일까지 오전 8:00 ~ 오후 8:00(KST)입니다.
                     영어는 연중무휴 24시간 지원됩니다.
                    </span>
                    <hr>
                    <span>빠른 서비스를 위해 전화 연결 후 코드를 물어보면 아래 코드를 입력하세요.</span><br><br>
                    <label>4 8 3 5 4 6</label>
                    </div>
                </div>
                <div class="chat_div">
                    <div class="chat_text1">
                        <p>X<p>
                        <h1>채팅을 이용할 수 없음</h1>
                        <span>
                        한국어 채팅 이용 시간은 오전 8:00 - 오후 8:00 KST입니다.<br><br>
                        </span>
                        <span>
                        일부 일반적인 문의는 실시간 채팅 없이도 해결하실 수 있습니다.
                        </span>
                    </div>
                    <div class="link_chat">
                        <span><p><a href="#" class="linkhover">TV 프로그램 및 영화 요청하기</a><img src='<c:url value="${pageContext.request.contextPath}/resources/img/Arrow_icon.png"/>' class="icon action_icon"></p></span>
                        <span><p><a href="#" class="linkhover">비밀번호를 업데이트 하려고 함</a><img src='<c:url value="/img/Arrow_icon.png"/>/>' class="icon action_icon"></p></span>
                        <span><p><a href="#" class="linkhover">결제 수단을 업데이트 하려고 함</a><img src='<c:url value="/img/Arrow_icon.png"/>/>' class="icon action_icon"></p></span>
                    </div>
                    <div class="chat_text2">
                    <span>전화해 주시거나 나중에 다시 시도해주세요.</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="service">
            <div class="service_text">
                <h2>고객센터에 문의하시겠어요?</h2>
                <span>
                    <input type="button" class="service_btn service_btn2 btn1" value="문의 전화">
                    <input type="button" onclick="location.href='notice'" class="service_btn btn2" value="1:1 문의하기">
                </span>
            </div>
        </div>
        <footer>
            <div class="footer_div">
                <label>이용 약관</label>
                <label>개인정보</label>
                <label>쿠키설정</label>
                <label>회사 정보</label>
            </div>
        </footer>
    </div>
    	    <script src="../resources/js/serviceCenter.js"></script>
</body>
</html>