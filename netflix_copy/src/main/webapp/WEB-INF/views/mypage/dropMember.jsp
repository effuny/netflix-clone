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
            <h1>회원 탈퇴하시겠어요?</h1><br>
            <h3>회원을 탈퇴하시려면 아래의 '탈퇴 완료'버튼을 클릭하세요.</h3><br>
        </div>
        <div class="pw_btn_div">
            <input type="submit" value="탈퇴완료" onclick="location.href='dropMember.do'" class="pw_btn pw_btn1">
            <input type="button" value="뒤로가기"  onclick="location.href='mypage.do'" class="pw_btn pw_btn2">
        </div>
    </div>
    </div>

     <%@ include file="../include/footer.jsp" %>
     	    <script src="../resources/js/mypage.js"></script>
</body>
</html>