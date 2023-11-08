<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet">
<script src="script/jquery-1.12.3.js"></script>
<script src="script/javascript.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>졸업작품</title>
</head>
<body>
    
<form id="form" action="login_action.jsp" method="POST">
<div class="login">
    <div class="login_body">
    <div class="login_top">
    <div class="login_back">
        <a href="index.jsp"><img src="images/back.png" alt=""></a>
    </div>
    <div class="login_home">
        <a href="index.jsp"><img src="images/home.png" alt=""></a>
    </div>
    </div>
    <div class="login_type"></div>

    <div class="id_input">
        <input id="member_id" name="member_id" form="form" fw-filter="isFill" fw-label="아이디" fw-msg="" class="inputTypeText" value="" type="text" placeholder="아이디">
    </div>
    <div class="pw_input">
        <input id="member_passwd" name="member_passwd" form="form" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드" fw-msg="" autocomplete="off" class="inputTypeText" value="" type="password" placeholder="비밀번호">
    </div>
    <div class="login_btn">
        <button class="btn_loginBtn" onclick="document.querySelector('#form').submit();">기존 회원 로그인</button>
    </div>
    <div class="utill_menu">
        <a href="/member/id/find_id.html" class="left">아이디 찾기</a>
        <a href="/member/passwd/find_passwd_info.html" class="left">비밀번호 찾기</a>
        <a href="/member/join.html" class="right">회원가입</a>
    </div>
    </div>
</div>
</form>

</body>
</html>