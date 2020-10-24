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
       /*  border: 1px solid black; */
    }
    .groupname{
        position: absolute;
        width: 200px;
        height: 30px;
        left: 10%;
        top: 20%;
        font-size: 25px;
    }
    .groupjoin{
        position: absolute;
        left: 70%;
        width: 60px;
        height: 40px;
        top: 6%;
    }
    .groupout{
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
        /* border: 1px solid black; */
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
    }
    .groupphoto{
        width: 250px;
        height: 70px;
        position: absolute;
        left: 47%;
        top: 10%;
    }
    .groupboard{
        width: 250px;
        height: 70px;
        position: absolute;
        left: 70%;
        top: 10%;
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
     
     
    /* 모임정보 페이지 */
    .frame_info{
        width: 80%;
        height: 800px;
        position: absolute;
        /* border: 1px solid black; */
        top: 20%;
        left: 10%;
    }
    .info_photo{
        width: 100%;
        /* height: 200px; */
        /* border: 1px solid red; */
        background-image: url(huang.jfif);
        background-repeat: no-repeat;
        background-size: cover;
        font-size: 25px;
        padding-left: 10px;
    }
    .info_plan{
        width: 100%;
        height: 100px;
        /* border: 1px solid green; */
        top: 40%;
        font-size: 25px;
        padding-left: 10px;
    }
    .info_intro{
        width: 100%;
        height: 400px;
        font-size: 25px;
        padding-left: 10px;
    }
    
    .room_pic{
    	display: flex;
    	margin: 20px;
    	justify-content: center;
    }
    
    .sche{
    	font-size: 15px;
    }
    
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
        /* border: 1px solid black; */
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
            <div> <input type="button" value="가입" class="groupjoin"> </div>
            <div> <input type="button" value="탈퇴" class="groupout"> </div>
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
	                	$(".frame_info").css("display","none");
	                }
	            });
			 
			 $(".groupinfo").click(function(){
	                if($(".frame_info").css("display") =="none"){
	                	$(".frame_info").css("display","block");
	                	$(".frame_board").css("display","none");
	                	$(".frame_pic").css("display","none");
	                }
	            });
			 
			 $(".groupboard").click(function(){
	                if($(".frame_board").css("display") =="none"){
	                	$(".frame_board").css("display","block");
	                	$(".frame_pic").css("display","none");
	                	$(".frame_info").css("display","none");
	                }
	            });
		});
	
	</script>
</body>
</html>