<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bandList</title>
<link rel="shorcut icon" href="img/woorifavi.png">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://kit.fontawesome.com/4be9a87855.js"
	crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	session.setAttribute("loginid", "0932toro");
%>
<!-- 테스트용 임시 로그인 아이디 설정 -->
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#bandwrap {
	width: 100%;
	display: inline-block;
	overflow: hidden;
	height: 100vh;
	position: relative;
	border: 1px solid black;
	z-index: 100;
}

.bandtop {
	position: fixed;
	width: 100%;
	top: 0;
	left: 0;
	background-color: white;
	z-index: 5;
	height: 70px;
	border: 1px solid black;
}

.top_second {
	padding-top: 10px;
	display: flex;
}

.nameAndCate {
	display: flex;
}

#top_con {
	display: flex;
	margin: 0 auto;
	left: 0;
	right: 0;
}

/* .top, .bottom{
		display: flex;
		border: 1px solid black; 
	}
	 */
.bandlogo>img {
	width: 70px;
	height: 65px;
	background-image: url(woori.png);
	background-repeat: no-repeat;
	background-size: cover;
	left: 10%;
	position: absolute;
}

.bandsearch {
	width: 500px;
	height: 30px;
	top: 30%;
	left: 35%;
	position: absolute;
}

.searchicon {
	font-size: 25px;
	position: absolute;
	left: 62%;
	top: 20%;
	cursor: pointer;
}

.bandcate {
	font-size: 29px;
	width: 60px;
	height: 60px;
	position: absolute;
	text-align: center;
	left: 85%;
	top: 10%;
	border-radius: 10px 10px 10px 10px;
}

.bandcate:hover {
	background-color: #ec6169;
	color: white;
}

.bandcatetext {
	font-size: 10px;
	cursor: pointer;
}
/* end of bandtop */
.wrap_mid_my {
	width: calc(100% -700px);
	overflow: hidden;
}

.wrap_middle {
	width: 100%;
}

/* mid 시작 */
.bandmid {
	margin: 65px auto 0 auto;
	width: 80%;
	/* border: 3px solid black; */
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	position: absolute;
	overflow: scroll;
	height: 770px;
	top: 35%;
	left: 10%;
	scrollbar-width: none;
    -ms-overflow-style: none;
}

.bandmid::-webkit-scrollbar {
	display: none
}
/* end of mid */

/* bottom시작 */
.bandbottom {
	position: fixed;
	width: 100%;
	bottom: 0;
	background-color: white;
	z-index: 5;
	display: flex;
	justify-content: center;
	border: 1px solid black;
	height: 70px;
	top: 92%;
	flex-flow: row wrap;
}

.mygroup, .customercenter, .createroom, .bandnotice, .bandmypage {
	margin-left: 20px;
	cursor: pointer;
}

.mygroup {
	width: 300px;
	height: 70px;
	text-align: center;
	font-size: 30px;
	font-weight: 900;
	/* border: 1px solid black; */
}

.mygrouptext {
	font-size: 15px;
}

.customercenter {
	width: 300px;
	height: 70px;
	text-align: center;
	font-size: 30px;
	font-weight: 900;
}

.customercentertext {
	font-size: 15px;
}

.list {
	border: 1px solid black;
	display: flex;
	justify-content: space-around;
	/* text-align: center; */
	margin-top: 30px;
	height: 80px;
}

#layer {
	position: absolute;
	top: 5%;
	left: 90%;
	width: 185px;
	/* border: 1px solid black; */
	background-color: white;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	display: none;
	z-index: 10;
	background-color: white;
	font-size: 20px;
}

.layer_top {
	background-color: #ec6169;
	justify-content: space-around;
	color: white;
	font-size: 20px;
	display: flex;
	padding-left: 5px;
	padding-bottom: 5px;
}

.btn_layerClose {
	/* color: black; */
	cursor: pointer;
}

.interest {
	padding-left: 20px;
	margin-left: 10px;
}

.category_name {
	/* margin-right: 20px; */
	padding-right: 20px;
}

.name {
	font-size: 20px;
	font-weight: bolder;
	margin-right: 10px;
}

.category {
	font-size: 10px;
	padding-top: 10px;
}

.lim_ppl {
	padding-top: 10px;
}

.bottom_con {
	margin: 0 auto;
	display: flex;
}

/* mypage */
#mypage_wrap {
	display: none;
	width: 500px;
	height: 850px;
	background-color: white;
	position: absolute;
	border: 1px solid black;
	right: -500px;
	top: 70px;
	transition: all 2s;
}
/* top start */
.mypage_top {
	display: flex;
	background-color: #ec6169;
	justify-content: space-around;
}

.mypage_top div {
	font-size: 30px;
}

.mypage {
	font-weight: 600;
	color: white;
}
/* end of top */

/* mid start */
.mypage_mid {
	position: relative;
	/*  margin: 15px; */
	padding: 20px;
}

.mypage_mid div {
	font-size: 30px;
}

.mypage_char {
	width: 230px;
	height: 200px;
	color: #ec6169;
	margin: 35px;
	display: inline-block;
}

.mypage_photo {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	background-image: url(ì£¼ë¹ë.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	display: inline-block;
}

.mypage_id {
	width: 150px;
	height: 100px;
}

.mypage_email {
	width: 150px;
	height: 100px;
}
/* end of mid*/

/* bottom start */
.mypage_bottom {
	color: #fce77e;
	font-size: 30px;
}

.mypage_bottom div {
	height: 100px;
}

.mypage_interest:hover {
	background-color: #ec6169;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.mypage_club:hover {
	background-color: #ec6169;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.mypage_location:hover {
	background-color: #ec6169;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.mypage_info {
	margin-top: 50px;
	text-align: center;
	font-weight: 900;
	background-color: #6EB5FF;
	color: black;
}

.mypage_input {
	margin-left: 40px;
	width: 300px;
}

.ppl {
	width: 170px;
	height: 200px;
	border-radius: 50%;
}

.mypage_exit {
	cursor: pointer;
}

/* 나머지 */
.createroom {
	width: 300px;
	height: 70px;
	text-align: center;
	font-size: 30px;
	font-weight: 900;
	/* border: 1px solid black; */
}

.createroomtext {
	font-size: 15px;
}

.bandnotice {
	width: 300px;
	height: 70px;
	text-align: center;
	font-size: 30px;
	font-weight: 900;
	/* border: 1px solid black; */
}

.bandnoticetext {
	font-size: 15px;
}

.bandmypage {
	width: 300px;
	height: 70px;
	text-align: center;
	font-size: 30px;
	font-weight: 900;
	/* border: 1px solid black; */
}

.bandmypagetext {
	font-size: 15px;
}

.mygroup:hover {
	background-color: #ec6169;
	color: white;
	border-radius: 10px 10px 10px 10px;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.holding:hover {
	background-color: #fce77e;
	color: white;
	border-radius: 10px 10px 10px 10px;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.createroom:hover {
	background-color: #fce77e;
	color: white;
	border-radius: 10px 10px 10px 10px;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.bandnotice:hover {
	background-color: #ec6169;
	color: white;
	border-radius: 10px 10px 10px 10px;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.bandmypage:hover {
	background-color: #fce77e;
	color: white;
	border-radius: 10px 10px 10px 10px;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

.customercenter:hover {
	background-color: #fce77e;
	color: white;
	border-radius: 10px 10px 10px 10px;
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
}

/* 방생성 모달레이어 css */
.createroom_layer {
	position: fixed;
	width: 100%;
	height: 100vh;
	/*        background-color: rgba(0, 0, 0, 0.5);*/
	z-index: 1000;
	display: none;
}

.createroom_wrap {
	width: 500px;
	height: 600px;
	background-color: white;
	border-radius: 10px 10px 10px 10px;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	display: none;
	z-index: 6000;
	position: absolute;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: 15%;
}

.createroom_top {
	height: 30px;
	display: flex;
	background-color: #ec6169;
	justify-content: space-around;
	color: white;
	font-size: 20px;
	font-weight: 900;
}

.createroom_location {
	top: 7%;
	left: 5%;
	width: 100%;
	height: 100px;
	/*        border: 1px solid black;*/
	position: absolute;
	line-height: 2;
	font-size: 20px;
	font-weight: 900;
	color: #3c3c3b;
}

.createroom_locationtext {
	width: 390px;
}

.createroom_interest {
	top: 24%;
	left: 5%;
	width: 100%;
	height: 90px;
	/*        border: 1px solid black;*/
	position: absolute;
	line-height: 2;
	font-size: 20px;
	font-weight: 900;
	color: #3c3c3b;
}

.createroom_interesttext {
	width: 450px;
}

.createroom_name {
	top: 40%;
	left: 5%;
	width: 100%;
	height: 100px;
	/*        border: 1px solid black;*/
	position: absolute;
	line-height: 2;
	font-size: 20px;
	font-weight: 900;
	color: #3c3c3b;
}

.createroom_nametext {
	width: 450px;
	height: 30px;
}

.createroom_intro {
	top: 57%;
	left: 5%;
	width: 100%;
	height: 120px;
	/*        border: 1px solid black;*/
	position: absolute;
	line-height: 2;
	font-size: 20px;
	font-weight: 900;
	color: #3c3c3b;
}

.createroom_introtext {
	width: 450px;
	height: 100px;
}

.createroom_bottom {
	top: 80%;
	width: 100%;
	height: 70px;
	/*        border: 1px solid black;*/
	position: relative;
	font-size: 20px;
	display: flex;
	justify-content: space-around;
	line-height: 2;
}

.createroom_create {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	text-align: center;
	font-size: 25px;
	color: forestgreen;
}

.createroom_cancel {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	text-align: center;
	font-size: 25px;
	color: red;
}

.createroom_create:hover {
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	background-color: green;
	color: white;
}

.createroom_cancel:hover {
	transition: .6s;
	box-shadow: 0 5px 4px rgba(0, 0, 0, .5);
	background-color: red;
	color: white;
}

/*//////////////공지사항CSS////////////////////*/
.notice_layer {
	position: absolute;
	width: 100%;
	height: 100vh;
	background-color: green;
	z-index: 1005;
}

#aticlewrap {
	position: absolute;
	background-color: white;
	top: 50%;
	left: 50%;
	z-index: 105;
	margin-top: -300px;
	margin-left: -400px;
}

.aticle1, .aticle2 {
	width: 800px;
}

.aticle2 {
	position: absolute;
	top: 0;
	display: none;
	z-index: -100;
}

.aticle1 hr, .aticle2 hr {
	margin: 10px 0;
}

.section1 {
	margin: 0 0 0 0;
	border-collapse: collapse;
	text-align: center;
	background-color: #ec6169;
}

.section1 td {
	border: 1px solid black;
	width: 80px;
	height: 50px;
}

.section1 td:nth-child(3) {
	width: 500px;
}

.section1 td:nth-child(5) {
	width: 100px;
}

.section2 {
	margin: 0 0 0 0;
	border-collapse: collapse;
	text-align: center;
}

.section2 td {
	border: 1px solid black;
	width: 80px;
	height: 30px;
}

.section2 td:nth-child(3) {
	text-align: left;
	width: 500px;
}

.section2 td:nth-child(5) {
	width: 100px;
}

.noticeout {
	background-color: yellow;
}
</style>
<link rel="shorcut icon" href="woorifavi.png">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://kit.fontawesome.com/4be9a87855.js"
	crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<!-- 여기서부터 공지사항 html -->
	<div class="notelayer"
		style="width: 100%; height: 100vh; position: fixed; top: 0; display: none; z-index: 7000;">
		<div id="aticlewrap">
			<div class="aticle1">
				<table class="section1">
					<tr>
						<td>NO</td>
						<td>type</td>
						<td>제목</td>
						<td>작성자</td>
						<td>날짜</td>
					</tr>
				</table>
				<hr>
				<table class="section2">
					<c:forEach items="${noticeList}" var="notice">
						<tr>
							<td>${notice.idx}</td>
							<td>공지사항</td>
							<td class="section2title">${notice.title}</td>
							<td>${notice.id }</td>
							<td>4 ${notice.cdate}</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5" class="noticeout"><i class="fas fa-times"></i></td>
				</table>
			</div>
			<c:forEach items="${Noticelist}" var="notice">
				<div class="aticle2" id="${notice.id}">
					<table class="section1">
						<tr>
							<td>${notice.id}</td>
							<td>${notice.type}</td>
							<td>${notice.title}</td>
							<td>관리자</td>
							<td>${notice.created_at}</td>
						</tr>
					</table>
					<hr>
					<table class="section2">
						<tr style="visibility: collapse;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="5"><textarea readonly="readonly"
									style="resize: none; width: 100%; height: 300px;">${notice.content}</textarea></td>
						</tr>
						<tr>
							<td colspan="5"><input type="button" value="뒤로가기"
								class="noticeback"></td>
						</tr>
						<tr>
							<td colspan="5" class="noticeout"><i class="fas fa-times"></i></td>
					</table>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- 여기까지 공지사항 html -->

	<!-- 방생성 모달레이어 -->
	<form action="CreateBand" method="post" id="CreateBand">
		<div class="createroom_layer">
			<div class="createroom_wrap">
				<div class="createroom_top">Create Room</div>

				<div class="createroom_location">
					<i class="fas fa-street-view"> Location </i><br> <input
						type="text" name="location" value="지역을 정해주세요"
						class="createroom_nametext" onFocus="this.value='';">
				</div>

				<div class="createroom_interest">
					<i class="fas fa-heart"> Interest</i><br> <select
						name="categoryId">
						<option value="1">인문학</option>
						<option value="2">사교</option>
						<option value="3">반려동물</option>
						<option value="4">음악/악기</option>
						<option value="5">스포츠</option>
						<option value="6">감상/관람</option>
						<option value="7">여행</option>
						<option value="8">공예/공방</option>
						<option value="9">봉사활동</option>
						<option value="10">언어교류</option>
					</select>
				</div>

				<div class="createroom_name">
					<i class="fas fa-hashtag"> Name </i><br> <input type="text"
						name="name" value="모임의 이름을 정해주세요" class="createroom_nametext"
						onFocus="this.value='';">
				</div>

				<div class="createroom_intro">
					<i class="fas fa-satellite-dish"> Introdue</i><br> <input
						name="introduction" type="text" value="간단하게 모임을 소개해주세요"
						class="createroom_introtext" onFocus="this.value='';">
				</div>

				<div class="createroom_bottom">
					<div class="createroom_create">
						<i class="fas fa-check"></i>
					</div>
					<div class="createroom_cancel">
						<i class="fas fa-times"></i>
					</div>
				</div>


			</div>
			<input type="hidden" value="<%=session.getAttribute("loginid")%>"
				name="Create_id"> <input type="hidden" name="capacity"
				value="20">
		</div>
		</div>
	</form>
	<!-- 방생성 모달레이어 끝 -->

	<div id="bandwrap">
		<div class="bandtop">
			<div id="top_con">
				<div>
					<div class="bandlogo">
						<img src="resources/img/woori.png">
					</div>
				</div>
				<div class="top_second">
					<form action="searchBand" method="post" name="search">
						<input type="text" class="bandsearch" name="search"
							placeholder="찾으시는 모임이 있나요?">
						<div class="searchicon">
							<i class="fas fa-search"></i>
						</div>

					</form>
					<div class="bandcate">
						<i class="fas fa-hand-holding-heart"></i><br>
						<div class="bandcatetext">관심사설정</div>

					</div>
				</div>
				<div id="layer" class="pop">
					<div class="layer_top">
						Category
						<div class="btn">
							<div class="btn_layerClose">
								<i class="fas fa-times"></i>
							</div>
						</div>
					</div>
					<div class="interest">
						<table>
							<c:forEach var="category" items="${categories}" begin="0"
								step="1">
								<tr>
									<td class="category_name">${category.name}</td>
									<td>${category.icon}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>

			<div class="wrap_mid_my">
				<div class="wrap_middle">
					<div class="bandmid">
						<form action="/woori/mybandlist.do" method="post" id="mybands">
							<c:forEach var="bandlist" items="${bandlist}">
								<div class="list" id="${bandlist.id}">
									<div class="mid">
										<div class=nameAndCate>
											<div class="name">${bandlist.name}</div>
											<div class="category">${bandlist.categoryName}</div>
										</div>
										<div class="intro">${bandlist.introduction}</div>
									</div>
									<div class="limit">
										<div class="lim_ppl">${bandlist.currentMember} /
											${bandlist.capacity}</div>
									</div>
								</div>
							</c:forEach>
						</form>
					</div>
				</div>
				<!-- mypage -->
				<div id="mypage_wrap">
					<div class="mypage_top">
						<div class="mypage_exit">
							<i class="fas fa-times"></i>
						</div>
						<div class="mypage">MyPage</div>
						<div class="mypage_logo">
							<i class="far fa-address-card"></i>
						</div>
					</div>

					<div class="mypage_mid">

						<c:forEach var="myInfo" items="${myInfo}">
							<div class="mypage_photo">
								<img src="resources/img/${myInfo.account}.jpg" class="ppl">
							</div>
							<div class="mypage_char">
								<div class="mypage_id">
									<i class="fas fa-portrait"> User Id</i> <input type="text"
										value="${myInfo.account}">
								</div>
								<div class="mypage_email">
									<i class="fas fa-envelope"> Email</i> <input type="text"
										value="${myInfo.email}">
								</div>
							</div>

							<div class="mypage_bottom">
								<div class="mypage_interest">
									<i class="fas fa-heart"> Interest</i> <br> <input
										type="text" class="mypage_input" value="${myInfo.interest}">
								</div>
								<div class="mypage_club">
									<i class="fas fa-users"> Group</i> <br> <input type="text"
										class="mypage_input" value="${myInfo.group}">
								</div>
								<div class="mypage_location">
									<i class="fas fa-map-marker-alt"> Location</i> <br> <input
										type="text" class="mypage_input" value="${myInfo.location}">
								</div>
								<div class="mypage_info">
									<p style="font-family: ê¶ì">
										광고주 <br> 콜콜
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- 마이페이지끝 -->
				<div class="bandbottom">
					<div class="bottom_con">
						<!-- 내가속한모임 -->
						<div class="mygroup" onclick="openlist()">
							<i class="fas fa-users"></i><br>
							<div class="mygrouptext">내가 속한 모임</div>

						</div>
						<!-- 고객센터-->
						<div id="box" class="customercenter">
							<i class="fas fa-headset"></i><br>
							<div class="customercentertext">고객센터</div>
						</div>
						<!-- 모임만들기 -->
						<div id="box" class="createroom">
							<i class="fas fa-clinic-medical"></i><br>
							<div class="createroomtext">모임만들기</div>
						</div>
						<!-- 공지사항 -->
						<div id="box" class="bandnotice">
							<i class="fas fa-volume-up"></i><br>
							<div class="bandnoticetext">공지사항</div>
						</div>

						<!-- 마이페이지 -->
						<div id="box" class="bandmypage">
							<i class="fas fa-user-circle"></i><br>
							<div class="bandmypagetext">마이페이지</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			var isOpen = false;
			$(document).ready(function() {
				$(".bandlogo").click(function(){
					location.href="lobby"
				});
				$(".bandcate").click(function() {
					$("#layer").slideDown(200);
				});

				$(".btn_layerClose").click(function() {
					$("#layer").slideUp(200);
				});

				/*여기서부터 공지사항 */
				$(".bandnotice").click(function() {
					$(".notelayer").fadeIn(100);
				});
				$(".noticeout").click(function() {
					$(".notelayer").fadeOut(300);
				});

				$(".section2title").dblclick(function() {
					var sirial = $(this).prev().prev().html();
					sirial = "#" + sirial;
					$(sirial).attr("style", "display:block");
					$(".aticle1").attr("style", "display:none");
				});

				$(".noticeback").click(function() {
					$(".aticle1").attr("style", "display:block");
					$(".aticle2").attr("style", "display:none");
				});
				/*여기까지가 공지사항*/

				/*여기부터 밴드 입장*/
				$(".list").dblclick(function() {
					var band_id = $(this).attr("id");
					location.href = "enterBand?bandId=" + band_id;
				});
				/*여기까지 밴드 입장*/

			});

			$(".bandmypage").click(function() {
				if (isOpen) {
					$("#mypage_wrap").stop().animate({
						right : "-500px"
					}, 1, function() {
						isOpen = false;
					});
					$("#mypage_wrap").css("display", "none");
				} else {
					$("#mypage_wrap").css("display", "block");
					$("#mypage_wrap").stop().animate({
						right : "0"
					}, 1, function() {
						isOpen = true;
					});
				}
			});

			$(".mypage_exit").click(function() {
				if (isOpen) {
					$("#mypage_wrap").stop().animate({
						right : "-500px"
					}, 1, function() {
						isOpen = false;
					});
					$("#mypage_wrap").css("display", "none");
				} else {
					$("#mypage_wrap").css("display", "block");
					$("#mypage_wrap").stop().animate({
						right : "0"
					}, 1, function() {
						isOpen = true;
					});
				}
			});

			$(".createroom").click(function() {
				$(".createroom_layer").fadeIn(300, function() {
					$(".createroom_wrap").fadeIn(100)
				});
			});

			$(".createroom_create").click(function() {
				$("#CreateBand").submit();
			});

			$(".createroom_cancel").click(function() {
				$(".createroom_wrap").fadeOut(100, function() {
					$(".createroom_layer").fadeOut(300)
				});

			});
			/* customercenter */
			$(".customercenter").click(function() {
				location.href = "service";
			});
			/* customercenter */

			function openlist() {
				location.href="MyGroupList"
			}
			
		</script>
</body>
</html>