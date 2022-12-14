<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>

<style>

.fontA{
	display: flex;
	color: black;
	font-family: "Malgun Gothic";
	font-weight: bold;
	padding: 0 0 10px 0; 
	font-size: 20px;
}
.fontB{
	color: rgba(0,0,0,0.56);
	font-family: "Malgun Gothic";
	font-weight: bold;
}
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
@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
} 
body {
 font-family: 'NanumSquareNeo-Variable','Palatino Linotype' !important; 
}
.container{
	display: flex;
} 
</style>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<my:navbar></my:navbar>
	<my:navbar-mypage></my:navbar-mypage>
	
	<div class="container-md" style="width:800px;
	border-left : solid #d2d2d2;
	border-right : solid #d2d2d2;
  	">
		
		<strong style="padding:80px 0 43px 0;display:block;font-size: 30px;">${member.id }님의 정보 수정</strong>
		<div class="row">
			<div class="col">
					
					
			

					<form id="modifyForm" action="${path}/mypage/profile" method="post" enctype="multipart/form-data">
						<div class="mb-3">
							<div class="container">
								<div class="item" style="margin-right: 50px;">
									<div style="padding: 0 0 60px 0;">
										<c:if test="${member.profile eq null }">
											<img style="width:128px; height:128px;border-radius: 100%;" 
											src="${imgUrl }/mypage/ico_21.png">
										</c:if>
										<c:if test="${member.profile ne null }">
											<img style="width:128px; height:128px;border-radius: 100%;" 
											src="${imgUrl }/mypage/${member.id}/${member.profile}">
										</c:if>
									</div>
								</div>
								<div class="item" style="margin-right: 50px;width: 300px;">
									<input type="hidden" name="id" value="${member.id}" />
									<label for="" class="form-label">프로필 사진 등록</label>
									<input multiple type="file" accept="image/*" class="form-control" name="file">
									<div style="padding-top: 10px;padding-left: 245px;">
										<input id="submitButton1" class="btn btn-outline-dark" type="submit" value="등록">
									</div>
								</div>
							</div>
						</div> 	
					</form>
					<button id="reservation" type="button" class="btn btn-outline-dark" style="width:130px;">
						예약내역 보기
					</button>
					
					<button id="reservation" type="button" class="btn btn-outline-dark" style="width:130px; margin-left: 30px;"
					onclick="location.href='${path}/payment/cart'">
						장바구니
					</button> 
					 
					<br><br>
				
					<span class="fontA">비밀번호&emsp;&emsp;&emsp;<span class="fontB"></span></span>
					<div id="pwModify" style="display:none;">
						<div style="padding:0 0 10px 0;">
							<form id="pwModifyText" action="" method="post">
								<input type="hidden" name="id" value="${member.id}" />
								<input style="width:300px" type="text" name="password" placeholder="변경하실 비밀번호를 입력해주세요" /> <br>
							</form>
						</div>
						<button id="pwModifyOk" type="button" class="btn btn-danger" style="width:100px">수정완료</button>
						<button id="pwModifyNo" type="button" class="btn btn-outline-dark" style="width:100px">수정취소</button>
					</div>
					<div id="pwModifyStart">
						<button type="button" class="btn btn-outline-dark" style="width:100px">수정</button> <br><br>
					</div>
					
					
					
					
					<span class="fontA">이름&emsp;&emsp;&emsp;&emsp;&emsp;<span class="fontB">${member.name }</span></span>  
					<div id="nameModify" style="display:none;">
						<div style="padding:0 0 10px 0;">
							<form id="nameModifyText" action="" method="post">
								<input type="hidden" name="id" value="${member.id}" />
								<input style="width:300px" type="text" name="name" placeholder="변경하실 이름을 입력해주세요" /> <br>
							</form>
						</div>
						<button id="nameModifyOk" type="button" class="btn btn-danger" style="width:100px">수정완료</button>
						<button id="nameModifyNo" type="button" class="btn btn-outline-dark" style="width:100px">수정취소</button>
					</div>
					<div id="nameModifyStart">
						<button type="button" class="btn btn-outline-dark" style="width:100px">수정</button> <br><br>
					</div>
					
					
					
					<span class="fontA">성별&emsp;&emsp;&emsp;&emsp;&emsp;<span class="fontB">${member.gender }</span></span>  
					<div id="genderModify" style="display:none;">
						<div style="padding:0 0 10px 0;">
							<form id="genderModifyText" action="" method="post">
								<input type="hidden" name="id" value="${member.id}" />
									<div class="form-check">
									  <input class="form-check-input" type="radio" id="male" name="gender" value="male">
									  <label class="form-check-label" for="flexRadioDefault1">
									    male
									  </label>
									</div>
									<div class="form-check">
									  <input class="form-check-input" type="radio" id="female" name="gender" value="female">
									  <label class="form-check-label" for="flexRadioDefault2">
									    female
									  </label>
									</div>
							</form>
						</div>
						<button id="genderModifyOk" type="button" class="btn btn-danger" style="width:100px">수정완료</button>
						<button id="genderModifyNo" type="button" class="btn btn-outline-dark" style="width:100px">수정취소</button>
					</div>
					<div id="genderModifyStart">
						<button type="button" class="btn btn-outline-dark" style="width:100px">수정</button> <br><br>
					</div>
					
					
					
					<span class="fontA">전화번호&emsp;&emsp;&emsp;<span class="fontB">${member.phone }</span></span> 
					<div id="phoneModify" style="display:none;">
						<div style="padding:0 0 10px 0;">
							<form id="phoneModifyText" action="" method="post">
								<input type="hidden" name="id" value="${member.id}" />
								<input id="modifyPhone" onkeydown="return event.key != 'Enter';" 
									style="width:400px" type="text" name="phone" placeholder="변경하실 전화번호를 '-'를 제외하고 입력해주세요" /> 
								<button id="existPhoneButton" type="button" class="btn btn-outline-primary" style="width:100px">번호체크</button>
								<div id="phoneText1" class="form-text">전화번호 체크를 해주세요.</div>
							</form>
						</div>
						<button id="phoneModifyOk" type="button" class="btn btn-danger" style="width:100px">수정완료</button>
						<button id="phoneModifyNo" type="button" class="btn btn-outline-dark" style="width:100px">수정취소</button>
					</div>
					<div id="phoneModifyStart">
						<button type="button" class="btn btn-outline-dark" style="width:100px">수정</button> <br><br>
					</div>
					
					
					
					<span class="fontA">이메일&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<span class="fontB">${member.email }</span></span>  
					<div id="emailModify" style="display:none;">
						<div style="padding:0 0 10px 0;">
							<form id="emailModifyText" action="" method="post">
								<input id="mId" type="hidden" name="id" value="${member.id}" />
								<input id="modifyEmail" onkeydown="return event.key != 'Enter'"
								style="width:300px" type="email" name="email" placeholder="변경하실 이메일을 입력해주세요" required/> 
								<button id="existEmailButton" type="button" class="btn btn-outline-primary" style="width:100px">중복확인</button>
								<div id="emailText1" class="form-text">이메일 중복확인을 해주세요.</div>
							</form>
						</div>
						<button id="emailModifyOk" type="button" class="btn btn-danger" style="width:100px">수정완료</button>
						<button id="emailModifyNo" type="button" class="btn btn-outline-dark" style="width:100px">수정취소</button>
					</div>
					<div id="emailModifyStart">
						<button type="button" class="btn btn-outline-dark" style="width:100px">수정</button> <br><br>
					</div>
					
					
					
					<span class="fontA">자격&emsp;&emsp;&emsp;&emsp;&emsp;<span class="fontB">
					
					<c:if test="${member.authority eq null }">
						member
					</c:if>
					<c:if test="${member.authority ne null }">
						${member.authority}
					</c:if>
					</span></span> 
					<div id="hostModify" style="display:none;">
						<div style="padding:0 0 10px 0;">
							<form id="hostModifyText" action="" method="post">
								<input type="hidden" name="id" value="${member.id}" />
									<div class="form-check">
									  <input class="form-check-input" type="radio" id="host" name="host" value=true>
									  <label class="form-check-label" for="flexRadioDefault1">
									    HOST
									  </label>
									</div>
									<div class="form-check">
									  <input class="form-check-input" type="radio" id="notHost" name="host" value=false>
									  <label class="form-check-label" for="flexRadioDefault2">
									    NOT HOST
									  </label>
									</div>
							</form>
						</div>
						<button id="hostModifyOk" type="button" class="btn btn-danger" style="width:100px">수정완료</button>
						<button id="hostModifyNo" type="button" class="btn btn-outline-dark" style="width:100px">수정취소</button>
					</div>
					<div  id="hostModifyStart">
						<button type="button" class="btn btn-outline-dark" style="width:150px"
						onclick="location.href='${path}/host/becomeHostIntro'">호스트 신청하기</button> <br><br>
					</div>
					
					
					<input class="btn btn-danger" type="submit" value="회원탈퇴" data-bs-toggle="modal" data-bs-target="#removeModal" 
					style="width:100px; float: right;margin-bottom: 30px; margin-right: 30px">
			</div>
		</div>
	</div>
	
	<%-- 탈퇴 시 예전암호 입력 Modal --%>
	<div class="modal fade" id="removeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-6" id="exampleModalLabel" style="color: #B9062F;font-weight: bold;">탈퇴를 원하시면 회원을탈퇴합니다 라고 입력해주세요</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <input id="deleteText" type="text" class="form-control" placeholder="회원을탈퇴합니다">
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
	        <button id="modalConfirmButton2" type="button" class="btn btn-danger">탈퇴</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<c:url value="/mypage/remove" var="removeUrl" />
				<form id="form2" action="${removeUrl }" method="post">
					<input type="hidden" name="id" value="${member.id }">
				</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
const ctx = "${pageContext.request.contextPath}";
/* --------------전화번호 숫자 체크------------------------------------------------------------------------------------------------ */
let availablePhone = false;
var checkP = true;
//전화번호 input 값 변경되면 초기화
document.querySelector("#modifyPhone").addEventListener("keyup", function() {
	availablePhone = false;
	enableSubmitButton2();
});
//전화번호 체크 함수
function CheckPhone(str){                                                 
     var reg_phone = /[0-9]/g;
     if(!reg_phone.test(str)) {                            
          return false;         
     }                            
     else {                       
          return true;         
     }                            
}                                

function GoToEnroll2(){                                          
	var obPhone = document.getElementById("modifyPhone");
	if (!obPhone.value) {   
		document.querySelector("#phoneText1").innerText = "전화번호를 입력하세요!";
		obPhone.focus();
		checkP=false;
		return;
	}               
	else   {          
		if(!CheckPhone(obPhone.value))	{
			document.querySelector("#phoneText1").innerText = "숫자만 입력가능합니다";
			obPhone.focus();
			checkP=false;
			return;
		}                
	}    
	checkP=true;
}
function enableSubmitButton2() {
	const button = document.querySelector("#phoneModifyOk");
	if (availablePhone) {
		button.removeAttribute("disabled")
	} else {
		button.setAttribute("disabled", "");
	}
}
enableSubmitButton2()

 document.querySelector("#existPhoneButton").addEventListener("click", function() {
	 	
	 	availablePhone = false;
	
				GoToEnroll2();
				
				if (checkP) {
					document.querySelector("#phoneText1").innerText = "사용가능한 번호입니다.";
					availablePhone = true;
					enableSubmitButton2();
				}
			
	});

/* --------------전화번호 숫자 체크 끝------------------------------------------------------------------------------------------------ */
 
/* --------------이메일 중복 확인 기능------------------------------------------------------------------------------------------------ */
let availableEmail = false;
var checkE = true;
//이메일 input 값 변경되면 초기화
document.querySelector("#modifyEmail").addEventListener("keyup", function() {
	availableEmail = false;
	enableSubmitButton();
});
//이메일 체크 함수
function CheckEmail(str){                                                 
     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
     if(!reg_email.test(str)) {                            
          return false;         
     }                            
     else {                       
          return true;         
     }                            
}                                

function GoToEnroll(){                                          
	var obEmail = document.getElementById("modifyEmail");
	if (!obEmail.value) {   
		document.querySelector("#emailText1").innerText = "이메일을 입력하세요!";
		obEmail.focus();
		checkE=false;
		return;
	}               
	else   {          
		if(!CheckEmail(obEmail.value))	{
			document.querySelector("#emailText1").innerText = "이메일 형식이 잘못되었습니다";
			obEmail.focus();
			checkE=false;
			return;
		}                
	}    
	checkE=true;
}                           

function enableSubmitButton() {
	const button = document.querySelector("#emailModifyOk");
	if (availableEmail) {
		button.removeAttribute("disabled")
	} else {
		button.setAttribute("disabled", "");
	}
}
enableSubmitButton()

 document.querySelector("#existEmailButton").addEventListener("click", function() {
	 	
	 	availableEmail = false;
		const email = document.querySelector("#modifyEmail").value;
		const id = document.querySelector("#mId").value;
		
		const data = {
				id, 
				email
		};
		
		fetch(`\${ctx}/mypage/existEmail`, {
			method : "post",
			headers : {
				"Content-Type" : "application/json"
			},
			body : JSON.stringify(data)
		})
			.then(res => res.json())
			.then(data => {
				document.querySelector("#emailText1").innerText = data.message;
				GoToEnroll();
				if (data.status == "not exist" && checkE) {
					availableEmail = true;
					enableSubmitButton();
				}
			});
	});

/* --------------이메일 중복 확인 기능 끝------------------------------------------------------------------------------------------------ */

/* --------------회원 탈퇴 기능-------------------------------------------------------------------------------------------------- */
document.querySelector("#modalConfirmButton2").addEventListener("click", function() {
	const text = document.querySelector("#deleteText").value
	const form = document.forms.form2;
	if(text == '회원을탈퇴합니다'){
		console.log("OK");
		form.submit();
	}
});
/* --------------회원 탈퇴 기능 끝------------------------------------------------------------------------------------------------ */

/* --------------수정 기능들-------------------------------------------------------------------------------------------------- */
document.querySelector("#pwModifyStart").addEventListener("click", function() {
	const change = document.querySelector("#pwModify");
	change.style.display="block";
	document.querySelector("#pwModifyStart").style.display="none";
});
document.querySelector("#pwModifyNo").addEventListener("click", function() {
	const change = document.querySelector("#pwModifyStart");
	change.style.display="block";
	document.querySelector("#pwModify").style.display="none";
});
document.querySelector("#pwModifyOk").addEventListener("click", function() {
	document.querySelector("#pwModifyText").submit();
});


document.querySelector("#nameModifyStart").addEventListener("click", function() {
	const change = document.querySelector("#nameModify");
	change.style.display="block";
	document.querySelector("#nameModifyStart").style.display="none";
});
document.querySelector("#nameModifyNo").addEventListener("click", function() {
	const change = document.querySelector("#nameModifyStart");
	change.style.display="block";
	document.querySelector("#nameModify").style.display="none";
});
document.querySelector("#nameModifyOk").addEventListener("click", function() {
	document.querySelector("#nameModifyText").submit();
});

document.querySelector("#genderModifyStart").addEventListener("click", function() {
	const change = document.querySelector("#genderModify");
	change.style.display="block";
	document.querySelector("#genderModifyStart").style.display="none";
});
document.querySelector("#genderModifyNo").addEventListener("click", function() {
	const change = document.querySelector("#genderModifyStart");
	change.style.display="block";
	document.querySelector("#genderModify").style.display="none";
});
document.querySelector("#genderModifyOk").addEventListener("click", function() {
	document.querySelector("#genderModifyText").submit();
});

document.querySelector("#phoneModifyStart").addEventListener("click", function() {
	const change = document.querySelector("#phoneModify");
	change.style.display="block";
	document.querySelector("#phoneModifyStart").style.display="none";
});
document.querySelector("#phoneModifyNo").addEventListener("click", function() {
	const change = document.querySelector("#phoneModifyStart");
	change.style.display="block";
	document.querySelector("#phoneModify").style.display="none";
});
document.querySelector("#phoneModifyOk").addEventListener("click", function() {
	document.querySelector("#phoneModifyText").submit();
});


document.querySelector("#emailModifyStart").addEventListener("click", function() {
	const change = document.querySelector("#emailModify");
	change.style.display="block";
	document.querySelector("#emailModifyStart").style.display="none";
});
document.querySelector("#emailModifyNo").addEventListener("click", function() {
	const change = document.querySelector("#emailModifyStart");
	change.style.display="block";
	document.querySelector("#emailModify").style.display="none";
});
document.querySelector("#emailModifyOk").addEventListener("click", function() {
	document.querySelector("#emailModifyText").submit();
});


/* document.querySelector("#hostModifyStart").addEventListener("click", function() {
	const change = document.querySelector("#hostModify");
	change.style.display="block";
	document.querySelector("#hostModifyStart").style.display="none";
});
document.querySelector("#hostModifyNo").addEventListener("click", function() {
	const change = document.querySelector("#hostModifyStart");
	change.style.display="block";
	document.querySelector("#hostModify").style.display="none";
});
document.querySelector("#hostModifyOk").addEventListener("click", function() {
	document.querySelector("#hostModifyText").submit();
}); */
/* --------------수정 기능 끝-------------------------------------------------------------------------------------------------- */
/* --------------체크 유지 기능-------------------------------------------------------------------------------------------------- */ 
const gender = "male";
const oldGender = "${member.gender}";
if(oldGender==gender){
	document.querySelector("#male").setAttribute("checked", "checked");
}else{
	document.querySelector("#female").setAttribute("checked", "checked");
}

const host = true;
const oldHost = ${member.host};
if(oldHost==host){
	document.querySelector("#host").setAttribute("checked", "checked");
}else{
	document.querySelector("#notHost").setAttribute("checked", "checked");
}
/* --------------체크 유지 기능 끝-------------------------------------------------------------------------------------------------- */
/* --------------예약페이지 이동 기능---------------------------------------------------------------------------------------------------- */
document.querySelector("#reservation").addEventListener("click", function() {
	location.href="${path}/mypage/reservation?id=${member.id}"
});
/* --------------예약페이지 이동 기능 끝-------------------------------------------------------------------------------------------------- */
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









