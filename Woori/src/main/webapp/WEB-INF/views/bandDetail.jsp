<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>room</title>
<link rel="shorcut icon" href="view/band/woorifavi.png">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script src="https://kit.fontawesome.com/4be9a87855.js" crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
</head>
<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    .grouptop{
        width: 100%;
        height: 70px;
        position: absolute;
         border: 1px solid black; 
    }
    .groupname{
        position: absolute;
        width: 200px;
        height: 30px;
        left: 10%;
        top: 20%;
        font-size: 25px;
    }
    input.room_join{
        position: absolute;
        left: 70%;
        width: 60px;
        height: 40px;
        top: 6%;
        background-image: url(join.png) no-repeat;
        border: none;
    }
    
    .room_out{
        position: absolute;
        left: 75%;
        width: 60px;
        height: 40px;
        top: 6%;
    }
    .groupnav{
        width: 100%;
        height: 100px;
        position: absolute;
         border: 1px solid black; 
        top: 7%;
    }
    
    .groupnav>div{
    	cursor: pointer;
    	padding-top: 10px;
    }
    
    .groupinfo{
        width: 250px;
        height: 70px;
        position: absolute;
        left: 20%;
        top: 10%;
        border: 1px solid black;
    }
    .groupphoto{
        width: 250px;
        height: 70px;
        position: absolute;
        left: 47%;
        top: 10%;
        border: 1px solid black;
    }
    .groupboard{
        width: 250px;
        height: 70px;
        position: absolute;
        left: 70%;
        top: 10%;
        border: 1px solid black;
    }
    
    .groupinfo:hover, .groupphoto:hover, .groupboard:hover{
    	border-radius: 10px 10px 10px 10px;
	    background-color: #ec6169;
	    transition: .6s;
	    box-shadow: 0 5px 4px rgba(0,0,0,.5);
	    color: white;
	    
     }
     
     .info_text, .photo_text, .board_text{
     	font-size: 20px;
     	font-weight: bolder;
     	text-align: center;
     }
     
     .info_icon{
     	/* position: absolute; */
    	text-align: center;
    	/* left: 20px; */
     	font-size: 20px;
     }
     
     .photo_icon{
     	/* position: absolute; */
    	text-align: center;
    	/* left: 20px; */
     	font-size: 20px;
     }
     
     .board_icon{
     	/* position: absolute; */
    	text-align: center;
    	/* left: 20px; */
     	font-size: 20px;
     }
    /* 모임 정보 ======================================================================*/
    .room_mid{
        width: 80%;
        height: 800px;
        position: absolute;
        top: 17%;
        left: 2%;
    }
    .room_member{
        width: 15%;
        height: 760px;
        position: absolute;
        border: 10px solid #ec6169;
        border-radius: 10px 10px 10px 10px;
        box-shadow: 0 5px 4px rgba(0.5,0.5,0.5,1);
        left: 100%;
        top: 2%;
    }
    .room_member_top{
        width: 100%;
        height: 30px;
        text-align: center;
        font-weight: 900;
        background-color: #ec6169;
        color: white;
    }
    .room_mainphoto{
        width: 95%;
        height: 350px;
        position: absolute;
        left: 2%;
        top: 2%;
        border-radius: 10px 10px 10px 10px;
        box-shadow: 0 5px 4px rgba(0.5,0.5,0.5,1);
    }
    .mainphoto_text{
        width: 10%;
        height: 50px;
        top: 5%;
        position: absolute;
        font-size: 20px;
        font-weight: 900;
        text-align: center;
        
    }
    .mainphoto_box{
        width: 87%;
        height: 350px;
        position: absolute;
        left: 13%;
    }
    .mainphoto_pic1{
        width: 45%;
        height: 320px;
        position: absolute;
        top: 3%;
        background-image: url(주비니.jpg);
        background-repeat: no-repeat;
        background-size: contain;
    }
    .mainphoto_pic2{
        width: 45%;
        height: 320px;
        position: absolute;
        left: 52%;
        top: 3%;
        background-image: url(수비니.jpg);
        background-repeat: no-repeat;
        background-size: contain;
    }
    .room_plan{
       width: 95%;
        height: 50px;
        position: absolute;
        left: 2%;
        top: 50%; 
        border-radius: 10px 10px 10px 10px;
        box-shadow: 0 5px 4px rgba(0.5,0.5,0.5,1);
    }
    .plan_text{
        width: 10%;
        height: 50px;
        text-align: center;
        font-weight: 900;
        position: absolute;
        top: 30%;
    }
    .plan_box{
        width: 87%;
        height: 50px;
        position: absolute;
        left: 13%;
        top: 2%;
    }
    .room_intro{
        width: 95%;
        height: 300px;
        position: absolute;
        left: 2%;
        top: 60%;
        border-radius: 10px 10px 10px 10px;
        box-shadow: 0 5px 4px rgba(0.5,0.5,0.5,1);
    }
    .intro_text{
        width: 10%;
        height: 50px;
        position: absolute;
        text-align: center;
        font-weight: 900;
        top: 5%;
    }
    .intro_box{
        width: 87%;
        height: 300px;
        position: absolute;
        left: 11%;
        top: 2%;
    }
    /* end of room info */
     
    /* 사진첩 */
    .frame_pic{
    	display: none;
    	width: 80%;
        
        position: absolute;
        /* border: 1px solid black; */
        top: 20%;
        left: 10%;
    }
    
    .pic{
    	display: inline-block;
    	width: 450px;
    	height: 300px;
  		flex-flow: row wrap;
    	/* border: 1px solid black; */
    	border-radius: 10px 10px 10px 10px;
    	overflow: hidden;
    	margin-top: 10px;
    	margin-left: 100px;
    	box-shadow: 0 5px 4px rgba(0,0,0,.5);
    }
    
    .pic>img{
    	width: 450px;
    	height: 300px;
    }
    
    /* 게시판 */
    .frame_board{
    	display: none;
    	width: 80%;
        height: 800px;
        position: absolute;
         border: 1px solid black; 
        top: 20%;
        left: 10%;
    }
    
    .board_wrap{
    	width: 100%;
    	margin-top: 10px;
    }
    
    table tr, table td{
    	/* width: 100%; */
    	border: 1px solid black;
    	margin: 10px;
    }
    table{
    	width: 100%;
    	text-align: center;
    }
    
    td:NTH-CHILD(1){
    	width: 10%
    }
    td:NTH-CHILD(2){
    	width: 10%
    }
    td:NTH-CHILD(3){
    	width: 50%
    }
    td:NTH-CHILD(4){
    	width: 15%
    }
    td:NTH-CHILD(5){
    	width: 15%
    }
    
    i{
    	margin-left: 10px;
    	margin-right: 10px;
    }
    
    .txt{
    	font-weight: bolder;
    }
    
    
</style>
<body>
	<div id="wrap">
        <div class="grouptop">
            <div class="groupname"> <i class="fas fa-tag"></i> <%=request.getAttribute("name")%> </div>
            <div> <input type="button" value="가입" class="room_join"> </div>
            <div> <input type="button" value="탈퇴" class="room_out"> </div>
        </div>
        
        <div class="groupnav">
            <div class="groupinfo"> 
            	<div class="info_icon"> <i class="fas fa-info"></i></div>
            	<div class="info_text"> 모임정보  </div>
            </div>
            <div class="groupphoto"> 
            	<div class="photo_icon"> <i class="far fa-images"></i></div> 
            	<div class="photo_text"> 사진첩 </div>
            </div>
            <div class="groupboard">
            	<div class="board_icon"> <i class="fas fa-clipboard-list"></i></div> 
            	<div class="board_text"> 게시판  </div>
            </div>
        </div>
        <!-- 모임 정보 페이지 -->
        <div class="room_mid">
            <div class="room_mainphoto">
                <div class="mainphoto_text"><i class="far fa-images"></i> 모임사진</div>
                <div class="mainphoto_box">
                    <div class="mainphoto_pic1"></div>
                    <div class="mainphoto_pic2"></div>
                    <img src="img/room_pic2.jpg">
                </div>
            </div>
            
            <div class="room_plan">
                <div class="plan_text"><i class="far fa-calendar-alt"></i> 정모일정</div>
                <div class="plan_box">이 부분에 이제 설정한 날짜가 들어가야함</div>
            </div>
            
            <div class="room_intro">
                <div class="intro_text"><i class="far fa-smile-wink"></i> 모임소개</div>
                <div class="intro_box">아 여행가고 싶다 진짜 가나 가봉 가이아나 감비아 과테말라 그레나다 그리스 기니 기니비사우 나고르노카라바흐 공화국 나미비아 나우루 나이지리아 남수단 남아프리카 공화국 남오세티야 네덜란드 네팔 노르웨이 뉴질랜드
                                         니제르 니카라과 대한민국 덴마크 도미니카 도미니카 공화국 독일 동티모르 라오스 라이베리아 라트비아 러시아 레바논 레소토 루마니아 룩셈부르크 르완다 리비아 리투아니아 리히텐슈타인 마다가스카르 마셜 제도 마케도니아 공화국 말라위 말레이시아 말리 멕시코 모나코 모로코 모리셔스 모리타니 모잠비크 몬테네그로 몰도바 몰디브 몰타 몽골 미국 미얀마 미크로네시아 연방 바누아투 바레인 바베이도스 바티칸 시국 바하마 방글라데시 베냉 베네수엘라 베트남 벨기에 벨라루스 벨리즈 보스니아 헤르체고비나 보츠와나 볼리비아 부룬디 부르키나파소 부탄북키프로스 불가리아 브라질 브루나이 사모아 사우디아라비아 사하라 아랍 민주 공화국 산마리노 상투메 프린시페
                                         세네갈 세르비아 세이셸 세인트루시아 세인트빈센트 그레나딘 세인트키츠 네비스 소말리아 소말릴란드 솔로몬 제도 수단 수리남 스리랑카 스와질란드 스웨덴 스위스 스페인 슬로바키아 슬로베니아 시리아 시에라리온 싱가포르
                                         아랍에미리트 아르메니아 아르헨티나 아이슬란드 아이티 아일랜드 아제르바이잔 아프가니스탄 안도라 알바니아 알제리 압하스 앙골라 앤티가 바부다 에리트레아 에스토니아 에콰도르 에티오피아 엘살바도르 영국 예멘 오만 오스트레일리아 오스트리아 온두라스 요르단 우간다 우루과이 우즈베키스탄 우크라이나 이라크 이란 이스라엘 이집트 이탈리아 인도 인도네시아 일본 자메이카 잠비아 적도 기니 조선민주주의인민공화국 조지아 중앙아프리카 공화국 중화민국 중화인민공화국 지부티 짐바브웨 차드 체코 칠레 카메룬 카보베르데 카자흐스탄 카타르 캄보디아 캐나다 케냐 코모로 코소보 공화국 코스타리카 코트디부아르 콜롬비아 콩고 공화국 콩고 민주 공화국 쿠바 쿠웨이트 크로아티아 키르기스스탄 키리바시 키프로스 타지키스탄 탄자니아 태국 터키 토고 통가 투르크메니스탄 투발루 튀니지 트란스니스트리아 트리니다드 토바고 파나마 파라과이 파키스탄 파푸아뉴기니 팔라우 팔레스타인 페루 포르투갈 폴란드 프랑스 피지 핀란드 필리핀 헝가리 </div>
            </div>
            <div class="room_member">
            	<div class="room_member_top"> M E M B E R </div>
            	<c:forEach items="${MemberList}" var="member">
            	${member.account }/<c:choose>
            	<c:when test="${member.role eq 'host'}">밴드장</c:when>
            	<c:otherwise>일반회원</c:otherwise>
            	</c:choose>
            	</c:forEach>
        	</div>
        </div>
        
        
        
<!--
            <div class="frame_info">
                <div class="info_photo"> <i class="far fa-images"></i> 모임사진
	                <div class="room_pic">
	                	<div class="room_ppl"><img src="img/room_ppl.jpg"> </div>
	                	<div class="room_ppl2"><img src="img/room_ppl2.jpg"> </div>
	                </div>
                </div>
                
                <div class="info_plan"> <i class="far fa-calendar-alt"></i> 정모일정 <br>
                	<div class="sche">2020.09.08 정모 (서면 오후 6:00) </div>
                </div>
                
                <div class="info_intro"> 
	                <i class="far fa-smile-wink"></i> 모임소개 <br> 
	                <%=request.getAttribute("intro")%> 
                </div>
            </div>
-->
            
            <div class="frame_pic">
            	<div class="pic"> <img src="img/room_pic1.jpg"> </div>
            	<div class="pic"> <img src="img/room_pic2.jpg"> </div>
            	<div class="pic"> <img src="img/room_pic3.jpg"> </div>
            	<div class="pic"> <img src="img/room_pic4.jpg"> </div>
            	<div class="pic"> <img src="img/room_pic5.jpg"> </div>
            	<div class="pic"> <img src="img/room_pic6.jpg"> </div>
            </div>
            
            <div class="frame_board">
            	<div class="board_wrap">
	            	<table>
	            		<tr>
	            			<td class="txt"><i class="fas fa-sort-numeric-down"></i>번호</td>
	            			<td class="txt"><i class="fas fa-text-height"></i>종류</td>
	            			<td class="txt"><i class="far fa-bookmark"></i>제목</td>
	            			<td class="txt"><i class="fas fa-edit"></i>작성자</td>
	            			<td class="txt"><i class="fas fa-eye"></i>조회수</td>
	            		</tr>
	            		<tr>
	            			<td>1</td><td>일반</td><td>번개해요ㄱㄱ</td><td>zzz123</td><td>3</td>
	            		</tr>
	            		<tr>
	            			<td>2</td><td>일반</td><td>ㅎㄷㄷ 이거봐요</td><td>asdf</td><td>100</td>
	            		</tr>
	            		<tr>
	            			<td>3</td><td>일반</td><td>귀여운 강아지 사진</td><td>qwer</td><td>5</td>
	            		</tr>
	            		<tr>
	            			<td>4</td><td>일반</td><td>sflakjflksklf</td><td>uuu1456</td><td>6</td>
	            		</tr>
	            		<tr>
	            			<td>5</td><td>일반</td><td>배고프다ㅜㅜㅜ</td><td>789lll</td><td>5</td>
	            		</tr>
	            		<tr>
	            			<td>6</td><td>일반</td><td>ㄱㄱㄱㄱㄱㄱ</td><td>zzz123</td><td>3</td>
	            		</tr>
	            		<tr>
	            			<td>7</td><td>일반</td><td>세상에서 제일 큰 핫도그</td><td>asdf</td><td>15</td>
	            		</tr>
	            		<tr>
	            			<td>8</td><td>일반</td><td>귀여운 고양이 사진</td><td>qwer</td><td>5</td>
	            		</tr>
	            		<tr>
	            			<td>9</td><td>일반</td><td>봄봄 커피 굿</td><td>uuu1456</td><td>6</td>
	            		</tr>
	            		<tr>
	            			<td>10</td><td>일반</td><td>토스트기 ㅊㅊ 받아요</td><td>789lll</td><td>5</td>
	            		</tr>    	
	            	</table>
            	</div>
            </div>
	</div>
	
	<script>
		$(document).ready(function() {
			 $(".groupphoto").click(function(){
	                if($(".frame_pic").css("display") =="none"){
	                	$(".frame_pic").css("display","block");
	                	$(".frame_board").css("display","none");
	                	$(".room_mid").css("display","none");
	                }
	            });
			 
			 $(".groupinfo").click(function(){
	                if($(".room_mid").css("display") =="none"){
	                	$(".room_mid ").css("display","block");
	                	$(".frame_board").css("display","none");
	                	$(".frame_pic").css("display","none");
	                }
	            });
			 
			 $(".groupboard").click(function(){
	                if($(".frame_board").css("display") =="none"){
	                	$(".frame_board").css("display","block");
	                	$(".frame_pic").css("display","none");
	                	$(".room_mid").css("display","none");
	                }
	            });
	          $(".room_join").click(function(){
		          location.href="bandJoin?bandId="+'<c:out value="${param.bandId}"/>';
	          });

	          $(".room_out").click(function(){
		          location.href="withdrawalBand?bandId="+'<c:out value="${param.bandId}"/>';
	          });
		});
	
	</script>
</body>
</html>