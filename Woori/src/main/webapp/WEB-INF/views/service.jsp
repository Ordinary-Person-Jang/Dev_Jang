<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service</title>
<link href="https://fonts.googleapis.com/css2?family=Jua&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<style>
    *{
        margin: 0;
		padding: 0;
		box-sizing: border-box;
    }
	#wrap{
        width: 100%;
        display: flex;
        flex-flow: row wrap;
        font-family: 'Jua', sans-serif;
	}
    #tophead{
        width: 100%;
        height: 15vh;
        padding: 0 7%;
       /*  background-color: #fce77e; */
        display: flex;
        justify-content: space-between;
        font-weight: 900;
    }
    #logo{
        width: 120px;
        height: 120px;
    }
    #empty1{
        width: 100px;
        height: 100px;
    }
    #sidetap{
        width: 20%;
        height: 85vh;
        background-color: white;
        position: relative;
    }
    #FAQTAP{
        width: 100%;
        height: 100px;
        line-height: 100px;
        /* background-color:  #ec6169; */
        border-radius: 10px 10px 10px 10px;
        text-align: center;
        
    }
    #FAQTAP:HOVER {
    	background-color:#fce77e;
    	box-shadow: 0 5px 4px rgba(0, 0, 0,0.5);
    	transition: 1s;
    }
    #QNATAP{
        width: 100%;
        height: 100px;
        line-height: 100px;
        /* background-color:  #ec6169; */
        border-radius: 10px 10px 10px 10px;
        text-align: center;
    }
    #QNATAP:HOVER{
    	background-color: #ec6169;
    	box-shadow: 0 5px 4px rgba(0, 0, 0,0.5);
    	transition: 1s;
    }
	
	.box>div{
		margin: 30px;
        font-size: 30px;
	}
	
	.box{
		width: 98%;
        position: relative;
	}
	
	.q{ 
        width: 100%;
		display: flex;
		cursor: pointer;
        height: 100px;
        line-height: 90px;
        border-radius: 10px 10px 10px 10px; 
		box-shadow: 0 5px 4px rgba(0, 0, 0,.5);
	}
	.q:HOVER {
		transition: .6s;
        box-shadow: 0 5px 4px rgba(0,0,0,1);
        
	}
	
	.a{
		display: none;
		border-radius: 10px 10px 10px 10px;
        width: 100%;
        /* border: 1px solid black; */
	}
    .FAQ{
        height: 85vh;
        width: 80%;
        background-color: white;
        overflow-y: scroll;
    }
    .QNA{
        height: 85vh;
        width: 80%;
        background-color: white;
        display: none;
    }
    .open{
        position: absolute;
        right: 15px;
    }
    #QNATABLE{
        margin: auto;
        width: 100%;
        text-align: center;
    }
    #QNAWRAP{
        margin: 100px 3% 0 3%;
        padding: auto;
        width: auto;
        height: auto;
        border: 1px solid black;
    }
    textarea{
        width: 100%;
        height: 300px;
        resize: none;
    }
    
    .headset{
        width: 200px;
        height: 200px;
        border-radius: 50%;
        opacity: 0.5;
        background-color: #fce77e;
        top: 33%;
        left:23%;
        position: absolute;
        
        text-align: center;
        font-size: 60px;
        padding: 30px;
    }
    .customer{
        font-size: 20px;
        font-weight: 900;
    }
    .keyboard{
         width: 200px;
        height: 200px;
        
        border-radius: 50%;
        opacity: 0.5;
        background-color: #ec6169;
        top: 55%;
        left:23%;
        position: absolute;
        text-align: center;
        font-size: 60px;
        padding: 30px;
    }
    .worktime{
        font-size: 20px;
        font-weight: 900;
    }
    

</style>
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  
  
</head>
<body>
	<div id="wrap">
    
	    <div id="tophead">
                <div style="height: 100%; padding-top: 20px;"><img id="logo" src="woori.png"></div>
                <div style="height: 100%; line-height: 130px;"><h1>고객센터</h1></div>
                <div id="empty1"></div>
	    </div>
	   
	    <div id="sidetap">
	        <div id="FAQTAP"><h2>자주묻는질문</h2></div>
	        <div id="QNATAP"><h2>1:1문의</h2></div>
	        
	        <div class="headset"><i class="fas fa-headset"></i><br>
    		<div class="customer">고객센터;<br>1588-9780</div>
   			 </div>
   			 
   			 <div class="keyboard"><i class="far fa-keyboard"></i><br>
    		<div class="worktime">영업시간;<br>09:00 ~ 17:00</div>
    		</div>
	        
	        
	    </div>
		<div class="FAQ">
			<div class="box">
				<div id="question1" class="q">
					<div>&nbsp;<i class="fas fa-question"></i>&nbsp;&nbsp; </div>
					<div class="p"> 프리미엄 모임권은 무엇입니까? </div>
					<div class="open" id="A1"><i class="fas fa-plus"></i></div>
				</div>
				<div id="answer1" class="a">
					<div> 
					답변 : 소모임은 무료체험기간을 제외한 모든 모임을 프리미엄으로 제공합니다. 
					프리미엄 모임권은 구독한 유료 서비스로 매월/매년 중 선택한 기간마다 자동 선결제됩니다. 
					모임 멤버 중 한 분만 프리미엄 스폰서로 프리미엄 모임권을 구독하시면 프리미엄 모임이 됩니다.
					프리미엄 모임은 한 모임만 선택하여 적용가능하며 적용 후 모임 변경은 불가합니다.
					</div>
				</div>
				
			</div>
			
			<div class="box">
				<div id="question2" class="q">
					<div>&nbsp;<i class="fas fa-question"></i>&nbsp;&nbsp; </div>
					<div> 프리미엄 모임권 어떻게 구독/취소 합니까? </div>
					<div class="open" id="A2"><i class="fas fa-plus"></i></div>
				</div>
				<div id="answer2" class="a">
					<div>
					답변 : 프리미엄 모임권은 연결된 나의 신용/직불카드로만 결제가 가능합니다. 
					갱신 옵션에 있는 자동 갱신 버튼을 끄시면 구독 해지가 되고 다음 자동결제일에 결제되지 않습니다.
					자동 갱신을 취소하여도 나와있는 만료일까지 프리미엄 모임권 사용이 가능합니다.
					보다 자세한 설명은 소모임 블로그를 통하여 확인하세요.
					</div>
				</div>
			</div>
			
			<div class="box">
				<div id="question3" class="q">
					<div>&nbsp;<i class="fas fa-question"></i>&nbsp;&nbsp; </div>
					<div> 무료체험 모임은 무엇인가요? </div>
					<div class="open" id="A3"><i class="fas fa-plus"></i></div>
				</div>
				<div id="answer3" class="a">
					<div>
					답변 : 소모임 모임 개설을 유료로 제공하되 일정 기간동안 사용가능한 무료체험 모임을 함께 제공하고 있습니다.
					무료체험모임은 일정 기간동안 무료로 모임을 운영해볼 수 있는 체험판 모이믕로 무료체험기간이 종료되면 운영도 중단됩니다.
					종료 후라도 모임에 프리미엄 모임권을 구독하시면 계속 운영하실 수 있습니다.
					</div>
				</div>
			</div>
			
			<div class="box">
				<div id="question4" class="q">
					<div>&nbsp;<i class="fas fa-question"></i>&nbsp;&nbsp; </div>
					<div> 모임에서 글쓰기와 채팅이 갑자기 안돼요. </div>
					<div class="open" id="A4"><i class="fas fa-plus"></i></div>
				</div>
				<div id="answer4" class="a">
					<div> 
					답변 : 모임개설일로부터 무료체험기간이 지나면 무료체험모임은 종료됩니다. 
					운영 중단으로 모임 기본 기능을 사용할 수가 없게 됩니다. 
					무료체험기간은 종료되었어도 프리미엄 모임권으로 해당 모임을 프리미엄으로 업그레이드 후 계속 운영하실 수 있습니다. </div>
				</div>
			</div>
			
			<div class="box">
				<div id="question5" class="q">
					<div>&nbsp;<i class="fas fa-question"></i>&nbsp;&nbsp; </div>
					<div> 모임이 검색 및 노출되지 않아요. </div>
					<div class="open" id="A5"><i class="fas fa-plus"></i></div>
				</div>
				<div id="answer5" class="a">
					<div> 
					답변 : 소모임의 검색과 노출은 모임의 활성도, 정보 참여도 등 다양한 정보를 고려한 내부 알고리즘에 의하여 자동리스팅됩니다.
					회원님이 잘 맞는 모임을 찾으실 수 있도록 개인별로 최적화된 모임리스트를 제공하고 있기 때문에 회원님마다 보여지는 모임 리스트가 일치하지 않을 수 있습니다.
					모임 초대가 목적이시라면 모임 멤버리스트 하단의 카카오톡 친구초대로 검색의 수고없이 해당모임으로 정확한 링크를 보내실 수 있습니다. 
					</div>
				</div>
			</div>
			
		</div>
	
		<div class="QNA">
		<form action="SendQnA.do">
            <div id="QNAWRAP">
             	<table id="QNATABLE">
                 	<tr><td>제목<input type="text" id="title" name="title"></td></tr>
                 	<tr><td><textarea name="content"></textarea></td></tr>
                 	<tr><td><input type="submit" value="문의보내기"></td></tr>
             	</table>
             	<input type="hidden" value="문의" name="type">
             	<input type="hidden" value="test" name="loginID">
             	<!-- 네임 loginID 값 value에 로그인 어카운트 삽입 임시로  값에 test 주입  -->
             </div>
        </form>
        

	</div>
	
	<script>
	  
	  $(document).ready(function() {
		  	$(".q").click(function() {
         		$(this).next().slideToggle();
		        });
		  	/* $("#A2").click(function() {
         		$("#answer2").slideToggle();
		        });
		  	$("#A3").click(function() {
         		$("#answer3").slideToggle();
		        });
		  	$("#A4").click(function() {
         		$("#answer4").slideToggle();
		        });
		  	$("#A5").click(function() {
         		$("#answer5").slideToggle();
		        }); */
            
            $("#FAQTAP").click(function(){
                $(".FAQ").attr("style","display:block");
                $(".QNA").attr("style","display:none");
            });
             $("#QNATAP").click(function(){
                $(".FAQ").attr("style","display:none");
                $(".QNA").attr("style","display:block");
            });
             
          
          
	      });
	
	/*   function open(question){
		  var question = question;  
		  
	  } */
	</script>

</body>
</html>
