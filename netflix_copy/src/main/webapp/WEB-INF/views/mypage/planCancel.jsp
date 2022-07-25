<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/mypage.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/all.css">
</head>
<body>
     <%@ include file="../include/header.jsp" %>
     <div class="pwcontainer">
     	<div class="pw_div">
     	<br><br><br><br>
	     	<div class="plan">
            <h1>멤버십을 해지하시겠어요?</h1><br>
            <h3>멤버십을 해지하시려면 아래의 '해지 완료'버튼을 클릭하세요.</h3><br>
            <p>- 서비스는 현 결제 주기 마지막 날인 <label>${nextMonth} </label>에 해지됩니다.</p><br>
            <p>- 멤버십은 언제든지 다시 활성화하실 수 있습니다. 회원님의 콘텐츠 취향 정보와 계정 정보는 <br>
            10개월 동안 저장됩니다.</p><br>
        </div>
        <div class="pw_btn_div">
            <input type="submit" value="해지 완료" onclick="location.href='planCancel.do'" class="pw_btn pw_btn1">
            <input type="button" value="뒤로가기"  onclick="location.href='mypage.do'" class="pw_btn pw_btn2">
        </div>
    </div>
    </div>

     <%@ include file="../include/footer.jsp" %>
     	    <script src="../resources/js/mypage.js"></script>
</body>
</html>