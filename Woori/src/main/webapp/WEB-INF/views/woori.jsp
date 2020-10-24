<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Woori</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="shorcut icon" href="woorifavi.png">
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

li {
	list-style: none;
}

.wrap {
	position: relative;
}
/* 첫번째 페이지 css */
#page1 {
	width: 100%;
	height: 100vh;
	left: 0;
	top: 0;
	position: relative;
	background-image: url("resources/img/illu.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	overflow: hidden;
}

.screen {
	width: 500px;
	height: 590px;
	position: relative;
	left: 36%;
}

.logo {
	left: 30%;
	top: 5%;
	width: 200px;
	height: 200px;
	background-image: url("resources/img/woori.png");
	background-repeat: no-repeat;
	background-size: cover;
	position: absolute;
	animation: dungdung 1s infinite alternate;
}

@
keyframes dungdung { 0%{
	transform: translate(0, 0);
}

100
%
{
transform
:
translate(
0
,
30px
);
}
}
.id {
	position: absolute;
	border-radius: 5px 5px 5px 5px;
	width: 200px;
	height: 30px;
	top: 45%;
	left: 30%;
}

.pw {
	position: absolute;
	border-radius: 5px 5px 5px 5px;
	width: 200px;
	height: 30px;
	top: 53%;
	left: 30%;
}

.login {
	position: absolute;
	border-radius: 5px 5px 5px 5px;
	width: 200px;
	height: 30px;
	top: 63%;
	left: 30%;
	background-color: #ec6169;
	text-align: center;
	color: white;
	padding: 5px;
}

.login:hover {
	transition: all .5s;
	transform: scale(1.1);
	cursor: pointer;
}

/* 소셜 */
.social {
	position: absolute;
	width: 100%;
	height: 60px;
	top: 71%;
	text-align: center;
	display: flex;
	justify-content: center;
}

.box1, .box2, .box3, .box4, .box5 {
	width: 10%;
	margin: 0 5px;
}

.box1 img, .box2 img, .box3 img, .box4 img, .box5 img {
	width: 100%;
}

.box1:hover, .box2:hover, .box3:hover, .box4:hover, .box5:hover {
	transition: all .5s;
	transform: scale(1.1);
}

.letter {
	position: absolute;
	width: 100%;
	height: 30px;
	top: 85%;
	text-align: center;
	color: gray;
	font-weight: 900;
}

.join {
	position: absolute;
	border-radius: 5px 5px 5px 5px;
	width: 200px;
	height: 30px;
	top: 90%;
	left: 30%;
	background-color: #fce77e;
	text-align: center;
	color: black;
	padding: 5px;
}

.join:hover {
	transition: all .5s;
	transform: scale(1.1);
	cursor: pointer;
}

/* 모달레이어 join css */
.layerpop {
	position: fixed;
	width: 100%;
	height: 100vh;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 5;
	display: none;
}

.popwrap {
	width: 500px;
	height: 600px;
	position: absolute;
	margin: 0 auto;
	left: 0;
	right: 0;
	background-color: white;
	border: 1px solid black;
	display: none;
	z-index: 6000;
	top: 90px;
}

.poptop {
	width: 100%;
	height: 50px;
	text-align: center;
	font-weight: 900;
	font-size: 35px;
	color: white;
	background-color: #ec6169;
}

.poplogo {
	width: 200px;
	height: 200px;
	left: 30%;
	position: relative;
	background-image: url("resources/img/woori.png");
	background-repeat: no-repeat;
	background-size: cover;
}

.poptable {
	width: 100%;
	height: 280px;
}

.poptb {
	left: 20%;
	position: absolute;
	margin: 10px;
	padding: 10px;
	border-spacing: 15px;
	font-weight: 900;
	color: #fce77e;
	text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}

.popbutton {
	width: 100%;
	height: 55px;
	position: relative;
}

.popcheck {
	width: 50px;
	height: 50px;
	left: 30%;
	position: absolute;
	display: inline-block;
	border-radius: 50%;
	text-align: center;
	font-size: 30px;
	padding: 5px;
	color: green;
	background-color: #ffff;
}

.popcancel {
	width: 50px;
	height: 50px;
	left: 60%;
	position: absolute;
	display: inline-block;
	border-radius: 50%;
	text-align: center;
	font-size: 30px;
	padding: 5px;
	color: red;
}

.popcheck:hover {
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	background-color: green;
	color: white;
}

.popcancel:hover {
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	background-color: red;
	color: white;
}

/* 두번째 페이지 css */
#page2 {
	width: 100%;
	height: 100vh;
	left: 0;
	top: 0;
	position: relative;
	background-image: url("resources/img/illu2.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	overflow: hidden;
}

.screen2 {
	width: 500px;
	height: 500px;
	position: relative;
	left: 36%;
	top: 8%;
	text-align: center;
}

.about {
	font-size: 90px;
	color: dimgray;
}

.main2_intro {
	width: 100%;
	height: 100px;
	position: absolute;
	text-align: center;
	top: 26%;
	color: darkgray;
}

.main2_logo {
	left: 30%;
	top: 55%;
	width: 200px;
	height: 200px;
	background-image: url("resources/img/woori.png");
	background-repeat: no-repeat;
	background-size: cover;
	position: absolute;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0.5, 0.5, 0.5, 1);
}

.main2_letter {
	position: absolute;
	width: 100%;
	height: 30px;
	top: 65%;
	left: -1%;
	text-align: center;
	color: gray;
	font-size: 20px;
	font-weight: 900;
}

.intro_button {
	width: 1200px;
	height: 200px;
	position: absolute;
	top: 75%;
	left: 19%;
}

.objective {
	width: 200px;
	height: 200px;
	position: absolute;
	border-radius: 50%;
	text-align: center;
	font-size: 90px;
	color: darkgray;
}

.objective:hover {
	background-color: #ec6169;
	color: white;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.objectivetext {
	font-size: 20px;
}

.process {
	width: 200px;
	height: 200px;
	position: absolute;
	border-radius: 50%;
	text-align: center;
	font-size: 90px;
	left: 40%;
	color: darkgray;
}

.process:hover {
	background-color: #ec6169;
	color: white;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.processtext {
	position: absolute;
	top: 70%;
	left: 32%;
	font-size: 20px;
}

.forwhom {
	width: 200px;
	height: 200px;
	position: absolute;
	border-radius: 50%;
	text-align: center;
	font-size: 90px;
	left: 83%;
	color: darkgray;
}

.forwhom:hover {
	background-color: #ec6169;
	color: white;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.forwhomtext {
	position: absolute;
	top: 70%;
	left: 25%;
	font-size: 20px;
}
/* 두번째 페이지 모달레이어 css */
#page2 {
	width: 100%;
	height: 100vh;
	left: 0;
	top: 0;
	position: relative;
	background-image: url("resources/img/illu2.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	overflow: hidden;
}

.screen2 {
	width: 500px;
	height: 500px;
	position: relative;
	left: 36%;
	top: 8%;
	/*        border: 1px solid black;*/
	text-align: center;
}

.about {
	font-size: 90px;
	color: dimgray;
}

.main2_intro {
	width: 100%;
	height: 100px;
	position: absolute;
	/*        border: 1px solid red;*/
	text-align: center;
	top: 26%;
	color: dimgray;
}

.main2_logo {
	left: 30%;
	top: 55%;
	width: 200px;
	height: 200px;
	background-image: url("resources/img/woori.png");
	background-repeat: no-repeat;
	background-size: cover;
	position: absolute;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0.5, 0.5, 0.5, 1);
}

.main2_letter {
	position: absolute;
	width: 100%;
	height: 30px;
	top: 65%;
	left: -1%;
	text-align: center;
	color: gray;
	font-size: 20px;
	font-weight: 900;
}

.intro_button {
	width: 1200px;
	height: 200px;
	/*        border: 1px solid black;*/
	position: absolute;
	top: 75%;
	left: 19%;
}

.objective {
	width: 200px;
	height: 200px;
	position: absolute;
	/*        border: 1px solid black;*/
	border-radius: 50%;
	text-align: center;
	font-size: 90px;
	color: dimgray;
}

.objective:hover {
	background-color: #ec6169;
	color: white;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.objectivetext {
	font-size: 20px;
}

.process {
	width: 200px;
	height: 200px;
	position: absolute;
	/*        border: 1px solid black;*/
	border-radius: 50%;
	text-align: center;
	font-size: 90px;
	left: 40%;
	color: dimgray;
}

.process:hover {
	background-color: #ec6169;
	color: white;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.processtext {
	position: absolute;
	top: 70%;
	left: 32%;
	font-size: 20px;
}

.forwhom {
	width: 200px;
	height: 200px;
	position: absolute;
	/*        border: 1px solid black;*/
	border-radius: 50%;
	text-align: center;
	font-size: 90px;
	left: 83%;
	color: dimgray;
}

.forwhom:hover {
	background-color: #ec6169;
	color: white;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.forwhomtext {
	position: absolute;
	top: 70%;
	left: 25%;
	font-size: 20px;
}

/* objective layerpop ============================================================== */
.objective_wrap {
	width: 70%;
	height: 700px;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 10px 10px rgba(0, 0, 0, .5);
	background-color: white;
	position: absolute;
	display: none;
	z-index: 50;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: 110px;
}

.objective_title {
	width: 200px;
	height: 50px;
	position: absolute;
	left: 2%;
	top: 2%;
	font-size: 40px;
	font-weight: 900;
}

.objective_cancel {
	width: 50px;
	height: 50px;
	left: 90%;
	top: 2%;
	position: absolute;
	border-radius: 50%;
	text-align: center;
	font-size: 30px;
	padding: 5px;
	color: black;
	background-color: #ffff;
}

.objective_logo {
	width: 150px;
	height: 150px;
	position: absolute;
	top: 40%;
	left: 43%;
	background-image: url("resources/img/woori.png");
	background-repeat: no-repeat;
	background-size: cover;
}

.objective_cancel:hover {
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	background-color: red;
	color: white;
}

.objective_line1 {
	width: 50px;
	height: 50px;
	position: absolute;
	left: 47%;
	top: 27%;
}

.objective_line2 {
	width: 50px;
	height: 50px;
	position: absolute;
	left: 58%;
	top: 47%;
}

.objective_line3 {
	width: 50px;
	height: 50px;
	position: absolute;
	left: 36%;
	top: 47%;
}

.objective_line4 {
	width: 50px;
	height: 50px;
	position: absolute;
	left: 47%;
	top: 67%;
}

.objective_line1, .objective_line2, .objective_line3, .objective_line4 {
	font-size: 35px;
	text-align: center;
}

.objective_box1 {
	width: 300px;
	height: 80px;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	position: absolute;
	top: 10%;
	left: 37%;
}

.objective_box2 {
	width: 300px;
	height: 80px;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	position: absolute;
	top: 44%;
	left: 10%;
}

.objective_box3 {
	width: 300px;
	height: 80px;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	position: absolute;
	top: 44%;
	left: 65%;
}

.objective_box4 {
	width: 300px;
	height: 80px;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	position: absolute;
	top: 77%;
	left: 38%;
}

.objective_box1, .objective_box2, .objective_box3, .objective_box4 {
	text-align: center;
	font-size: 50px;
}
/* end of objective layerpop */

/* process layerpop */
.process_wrap {
	width: 70%;
	height: 700px;
	position: absolute;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 10px 10px rgba(0, 0, 0, .5);
	background-color: white;
	display: none;
	z-index: 50;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: 110px;
}

.process_title {
	width: 200px;
	height: 50px;
	position: absolute;
	left: 2%;
	top: 2%;
	font-size: 30px;
	font-weight: 900;
}

.process_cancel {
	width: 50px;
	height: 50px;
	left: 90%;
	top: 2%;
	position: absolute;
	display: inline-block;
	border-radius: 50%;
	text-align: center;
	font-size: 30px;
	padding: 5px;
	color: black;
	background-color: #ffff;
}

.process_cancel:hover {
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	background-color: red;
	color: white;
}

.process_img {
	width: 1300px;
	height: 600px;
	position: absolute;
	top: 13%;
	left: 1%;
	background-image: url("resources/img/process.PNG");
	background-repeat: no-repeat;
	background-size: cover;
}
/* end of process layerpop */

/* whom layerpop */
.whom_wrap {
	width: 70%;
	height: 750px;
	position: absolute;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 10px 10px rgba(0, 0, 0, .5);
	background-color: white;
	display: none;
	z-index: 50;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: 110px;
}

.whom_title {
	width: 200px;
	height: 50px;
	position: absolute;
	left: 2%;
	top: 2%;
	font-size: 30px;
	font-weight: 900;
}

.whom_cancel {
	width: 50px;
	height: 50px;
	left: 90%;
	top: 2%;
	position: absolute;
	display: inline-block;
	border-radius: 50%;
	text-align: center;
	font-size: 30px;
	padding: 5px;
	color: black;
	background-color: #ffff;
}

.whom_cancel:hover {
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	background-color: red;
	color: white;
}

.whom_img {
	width: 1100px;
	height: 620px;
	position: absolute;
	top: 10%;
	left: 10%;
	background-image: url("resources/img/forwhom.PNG");
	background-repeat: no-repeat;
	background-size: cover;
}
/* end of whom layerpop */
</style>
<body>
	<!-- 모달레이어 join -->
	<div class="layerpop">
		<div class="popwrap">
			<form action="register" method="post">
				<div class="poptop">JOIN</div>
				<div class="poplogo"></div>
				<div class="poptable">
					<table class="poptb">
						<tr>
							<td>account</td>
							<td><input type="text" name="account" required="required"
								id="account"></td>
							<td name="checkAccount" id="checkAccount"
								style="width: 120px; border-left: 0"></td>
						</tr>
						<tr>
							<td>password</td>
							<td colspan="2"><input type="text" name="pw"
								required="required"></td>
						</tr>
						<tr>
							<td>name</td>
							<td colspan="2"><input type="text" name="name"
								required="required"></td>
						</tr>
						<tr>
							<td>email</td>
							<td colspan="2"><input type="text" name="email"
								required="required"></td>
						</tr>
						<tr>
							<td>phone</td>
							<td colspan="2"><input type="text" name="phone"
								required="required"></td>
						</tr>
						<tr>
							<td>address</td>
							<td colspan="2"><input type="text" name="address"
								required="required"></td>
						</tr>

					</table>

				</div>
				<div class="popbutton">
					<div id="join" class="popcheck">
						<i class="fas fa-check"></i>
					</div>
					<div id="join_cancel" class="popcancel">
						<i class="fas fa-times"></i>
					</div>
				</div>
		</div>
		</form>
	</div>
	<!-- 모달레이어 join 끝 -->

	<!-- 첫번째 페이지 -->
	<div class="wrap">
		<div id="page1" class="page">
			<form action="Login" method="post" id="LoginFrame">
				<div class="screen">
					<div class="logo"></div>
					<input type="text" name="account" class="id" placeholder="User ID">
					<input type="text" name="password" class="pw" placeholder="User PW">
					<div class="login">LOGIN</div>
			</form>

			<div class="social">
				<div class="box1">
					<a href="http://www.facebook.com"><img
						src="resources/img/facebook.jpg"></a>
				</div>
				<div class="box2">
					<a href="http://www.instagram.com"><img
						src="resources/img/insta.jpg"></a>
				</div>
				<div class="box3">
					<a href="http://www.twitter.com"><img
						src="resources/img/twitter.png"></a>
				</div>
				<div class="box4">
					<a href="https://www.kakaocorp.com/service/KakaoTalk"><img
						src="resources/img/kakao.png"></a>
				</div>
				<div class="box5">
					<a href="https://www.wechat.com/ko/"><img
						src="resources/img/wechat.png"></a>
				</div>
			</div>
			<div class="letter">지금 회원가입 하세요</div>
			<div class="join">JOIN</div>
		</div>
	</div>

	<!-- 두번째 페이지 -->
	<div id="page2" class="page">
		<div class="screen2">
			<div class="about">About us</div>
			<div class="line">
				<hr style="border: 1px solid gray; width: 500px;">
			</div>
			<div class="main2_intro">
				각박한 회색빛 도시속에서 건조한 하루하루를 살아내고 있는 당신<br>무채색인 나날에 조금씩 색깔을 채워넣고 싶다면<br>차가운
				일상속에서 사람의 온기를 느끼고 싶다면<br>우리가 만나야 할 때 입니다.
			</div>
			<div class="main2_logo"></div>
		</div>

		<div class="main2_letter">우리를 소개합니다</div>

		<div class="intro_button">
			<div class="objective">
				<i class="fas fa-bullseye"></i><br>
				<div class="objectivetext">
					Our<br>Objective
				</div>
			</div>

			<div class="process">
				<i class="fas fa-spinner"></i><br>
				<div class="processtext">Process</div>
			</div>

			<div class="forwhom">
				<i class="far fa-question-circle"></i><br>
				<div class="forwhomtext">For Whom</div>
			</div>


		</div>
		<!-- 두번째 페이지 모달레이어 div ===================================================================== -->
		<div class="objective_wrap">
			<div class="objective_title">Woori's Objective</div>
			<div class="objective_logo"></div>
			<div class="objective_cancel">
				<i class="fas fa-times"></i>
			</div>
			<div class="objective_line1">
				<i class="fas fa-angle-up"></i>
			</div>
			<div class="objective_line2">
				<i class="fas fa-angle-right"></i>
			</div>
			<div class="objective_line3">
				<i class="fas fa-angle-left"></i>
			</div>
			<div class="objective_line4">
				<i class="fas fa-angle-down"></i>
			</div>
			<div class="objective_box1">새로운 인연</div>
			<div class="objective_box2">새로운 인맥</div>
			<div class="objective_box3">새로운 연인</div>
			<div class="objective_box4">새로운 운명</div>
		</div>

		<div class="process_wrap">
			<div class="process_title">
				Woori's <br> Process
			</div>
			<div class="process_cancel">
				<i class="fas fa-times"></i>
			</div>
			<div class="process_img"></div>
		</div>

		<div class="whom_wrap">
			<div class="whom_title">For Whom ?</div>
			<div class="whom_cancel">
				<i class="fas fa-times"></i>
			</div>
			<div class="whom_img"></div>
		</div>

	</div>
	</div>
</body>
<script>
     /* 페이지 마우스 휠 이벤트 */
     $(document).ready(function(){
            $(".page").on("mousewheel DOMMouseScroll",function(e){
                e.preventDefault();
                var e = e.originalEvent;
                var delta=0;
                if(e.detail){
                    delta = e.detail * -40;
                }else{
                    delta = e.wheelDelta;
                }
                
                var moveTop = 0;
                if(delta<0){
                    moveTop = $(this).next().offset().top;
                }else{
                    moveTop = $(this).prev().offset().top;
                }
                $("html, body").stop().animate({
                    scrollTop : moveTop+"px"
                },800)
            });
         /* 회원가입 팝업 창 */
         $(".join").click(function(){
               $(".layerpop").fadeIn(500, function(){
                  $(".popwrap").fadeIn(300) 
                });
            });
             $(".popcancel").click(function(){
                 $(".popwrap").fadeOut(300,function(){
                    $(".layerpop").fadeOut(500) 
                });
            });
         /* 두번째 메인페이지 오브젝트 팝업 */
            $(".objective").click(function(){
              $(".layerpop").fadeIn(500, function(){
                  $(".objective_wrap").fadeIn(300) 
                });
            });
             $(".objective_cancel").click(function(){
                 $(".objective_wrap").fadeOut(300,function(){
                    $(".layerpop").fadeOut(500) 
                });
            });
         /* 두번째 메인페이지 프로세스 팝업 */
            $(".process").click(function(){
                $(".layerpop").fadeIn(500, function(){
                  $(".process_wrap").fadeIn(300) 
                });
            });
            $(".process_cancel").click(function(){
               $(".process_wrap").fadeOut(300, function(){
                  $(".layerpop").fadeOut(500) 
                });
            });
         /* 두번째 메인페이지 훔 팝업 */
             $(".forwhom").click(function(){
                $(".layerpop").fadeIn(500, function(){
                  $(".whom_wrap").fadeIn(300) 
                });
            });
            $(".whom_cancel").click(function(){
               $(".whom_wrap").fadeOut(300, function(){
                  $(".layerpop").fadeOut(500) 
                });
            });

            $(".login").click(function () {
           	 $("#LoginFrame").submit();
            });

            /* 회원 가입 */
    		$("#join").click(function () {
    			let join_data = {
    				account: $("#account").val(),
    				password: $("#password").val(),
    				name: $("#name").val(),
    				email: $("#email").val(),
    				phone: $("#phone").val(),
    				address: $("#address").val()
    			}

    			$.ajax({
    				type: "POST",
    				url: "/woori/save",
    				data: join_data,
    				dataType: "text"
    			}).done(function (response) {
    				if (response === "true") {
    					alert("회원가입이 완료 되었습니다.");
    					$(".popwrap").fadeOut(300, function() {
    						$(".layerpop").fadeOut(500)
    					});
    				} else {
    					alert("사용할 수 없는 아이디 입니다.");
    				}
    			}).fail(function (error) {
    				alert("error");
    			})
    		})
    		
            /* 아이디 중복 검사 */
           /*  $("#join_account").keyup(function () {
    	        $.ajax({
    	            type: "POST",
    	            url: "/woori/duplicate-check",
    	            data: "account=" + $("#account").val(),
    	            dataType: "text",
    	            success: function (data) {
    	                if ($("#account").val() != "") {
    	                    $("#check_account").html(data);
    	                    if (data == '사용 가능') {
    	                        $("#check_account").css("color", "green");
    	                    } else {
    	                        $("#check_account").css("color", "red");
    	                    }
    	                } else {
    	                    $("#check_account").html("");
    	                }
    	            },
    	            error: function () {
    	                alert("error");
    	            }
    	        });
    	    }); */
       });
     
</script>


</html>