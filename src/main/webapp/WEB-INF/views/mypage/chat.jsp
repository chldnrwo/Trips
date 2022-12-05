<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<style>
.fix {
  background-color:rgb(60, 60, 60) !important;	
  width:100%;
  position:fixed !important;
  animation: down 0.5s ease !important;
}

@keyframes down {
  0%{
    transform: translateY(-50px)
  }
  100%{
    transform: translateY(0px)
  }
}
.chat_Left{
 width: 20%;
 float: left;
 height: 100%;
 box-sizing: border-box;
}
.chat_Right{
 width: 80%;
 float: right; 
 height: 100%;
 box-sizing: border-box;
}
html, body {
 width: 100%;
 height: 100%;
}
header{
	height: 80px;
	position: sticky;
	font-weight: bold;
	font-size: 24px;
	border-bottom: 0.3px solid #d2d2d2;
}
.customContainer{
	margin: auto;
	width: 60%;
	background-color:#E1F6FA;	
}
.chat_my{
	margin-left: auto;
	margin-right: 10px;
	width: 60%;
	border-radius: 5%;
	background: #FFFF96;
	font-size: 18px;
}
.chat_op{
	margin-right: auto;
	margin-left: 10px;
	width: 60%;
	border-radius: 5%;
	background: #F4FFFF;
	font-size: 18px;
}
#input{
	
}
</style>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body style="overflow-y:hidden;">
	<my:navbar></my:navbar>
	<div style="height: 100%">
		<div class="chat_Left" style="border-right: 0.3px solid #d2d2d2">
			<header style="border-right: none;">
			</header>
		 	 <h1>과거 채팅내역 모음</h1>
		</div>
		
		<div class="chat_Right">
			<header>
				<div style="padding: 20px 0 0 30px;">
					${host}
					<span style="font-weight: normal">님과의 채팅</span>
				</div>				
			</header>
			<div id="down" style="overflow: scroll; height: 83.3%;">
				<div class="customContainer">
					<div style="height: 120%">
						<c:forEach var="chat" items="${chat}">
							<c:choose>
							<c:when test="${chat.writer eq id }">
								<div class="chat_my">
									<div style="padding: 5px 10px 10px 10px;">
										<span style="font-weight: bold; font-size: 20px;">${chat.writer }</span>
										<span style="font-size: 13px;">${chat.date }</span>
										<div>${chat.content }</div>
									</div>
								</div>
								<br>
							</c:when>
							<c:otherwise>
								<div class="chat_op">
									<div style="padding: 5px 10px 10px 10px;">
										<span style="font-weight: bold; font-size: 20px;">${chat.writer }</span>
										<span style="font-size: 13px;">${chat.date }</span>
										<div>${chat.content }</div>
									</div>
								</div>
								<br>
							</c:otherwise> 
							</c:choose>	
						</c:forEach>
						<br><br>
						<div class="input-group has-validation">
						  <div class="form-floating is-invalid">
						    <input type="text" class="form-control" id="floatingInputGroup2" style="padding: 10px 0 10px 10px;">
						  </div>
						  <span style="width: 80px" class="input-group-text">
						 	<div style="padding-left: 18px; font-size: 25px">
						 		↲
						 	</div>
						  </span>
						  <div class="invalid-feedback">
						    Chat with your host
						  </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
/* --------------채팅 맨밑으로 끌어내리는 기능-------------------------------------------------------------------------------------------------- */
var obj = document.getElementById('down');
obj.scrollTop = obj.scrollHeight;
/* --------------채팅 맨밑으로 끌어내리는 기능 끝-------------------------------------------------------------------------------------------------- */

/* --------------sticky navbar scroll 기능-------------------------------------------------------------------------------------------------- */
function navigo (){
  const header = document.querySelector('#nav2'); //헤더부분획득
  const headerheight = header.clientHeight;//헤더높이
document.addEventListener('scroll', onScroll, { passive: true });//스크롤 이벤트
 function onScroll () {
     const scrollposition = pageYOffset;//스크롤 위치
   const nav = document.querySelector('#nav');//네비게이션
   if (headerheight<=scrollposition){//만약 헤더높이<=스크롤위치라면
     nav.classList.add('fix')//fix클래스를 네비에 추가
   }
   else {//그 외의 경우
     nav.classList.remove('fix');//fix클래스를 네비에서 제거
   }
 } 
}
navigo()
/* --------------sticky navbar scroll 기능 끝-------------------------------------------------------------------------------------------------- */
</script>
</body>
</html>









