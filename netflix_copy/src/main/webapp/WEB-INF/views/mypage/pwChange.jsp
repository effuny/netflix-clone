<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넷플릭스</title>
    <script src='http://code.jquery.com/jquery-1.8.2.min.js'></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/mypage.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/all.css">
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
	<script>
	
	function emptycheck() {
		
		var pw = document.getElementById("currenPassword");
		var np = document.getElementById("newPassword");
		var npc = document.getElementById("confirnewPassword");
		
		if(pw = " " || np = " " || npc = " "){
			alert("모두 입력해 주세요");
			return;
		}
		
	}
	
	
	
	
	</script>

	
</head>
<body>
     <%@ include file="../include/header.jsp" %>
	    <div class="pwcontainer">
        <div class="pw_div form-div">
            <form id = "changePwForm" name = "changePwForm" method="post" >
                <p>비밀번호 변경</p>  
                <input type="password" required="required"
                class="hastext " id="currenPassword" name = "currenPassword" tabindex="0" autocomplete="off" maxlength="60" minlength="4"/>
                <label for="currenPassword" class="placeLabel pl1">기존 비밀번호</label>
                <p id="pwtext">비밀번호 잊으셨나요?</p>

                <input type="password" required="required"
                class="hastext textbox1 " id="newPassword" name ="newPassword" tabindex="0" autocomplete="off" maxlength="60" minlength="6"/>
                <label for="newPassword" class="placeLabel pl2">새 비밀번호(6~60자)</label><br>
                <span id='pwck'>비밀번호는 6~60자 사이여야 합니다.</span>

                <input type="password" required="required"
                class="hastext textbox1" id="confirnewPassword" name="confirnewPassword" tabindex="0" autocomplete="off" maxlength="60" minlength="6"/>
                <label for="confirnewPassword" class="placeLabel pl3">새 비밀번호 재입력</label><br>
                <span id='pwck2'>비밀번호 일치</span>
                
                <div class="pw_btn_div">
                    <input type="submit" value="저장" class="pw_btn pw_btn1" >
                    <input type="reset" value="취소" class="pw_btn pw_btn2">
                    
                </div>
            </form>
        </div>
    </div> 
     <%@ include file="../include/footer.jsp" %>
     
    <script src="../resources/js/mypage.js?ver=1"></script>
</body>
</html>