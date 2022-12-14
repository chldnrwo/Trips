<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<my:hostStyle></my:hostStyle>
<style>
h2 {
	text-align: center;
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
</style>

</head>
<body>
<my:navbar></my:navbar>

<sec:authorize access="isAuthenticated()" var="loggedIn" />

	<br>
	<div class="container-md">
		<div class="row">
			<div class="col">
				<center>
					<h1>호스트를 소개해주세요</h1>
				</center>
			
				<form id="registerForm1" action="" method="post"
					enctype="multipart/form-data"> 
					<div class="mb-3">

					  <b>	호스트 신청 아이디</b>  
					  <input type="text"
							class="form-control" name="m_id" value="<sec:authentication property="name"/>" readonly>

					</div>
					<div class="mb-3">
						<label for="" class="form-label"><b>호스트 경험이 있으신가요?</b></label><br> <input
							required="required" type="radio" name="h_experience" value=1>
						예, 있습니다. <br> <input required="required" type="radio"
							name="h_experience" value=0> 아니오, 처음입니다.<br>
					</div>
				
				
				<b>	호스트는 어떤 분야에서 전문정을 갖고 있나요?</b> <br><br>
					<select name="h_field" required="required">
						<option value="">분야를 선택해주세요</option>
						<option value="동물">동물</option>
						<option value="미술과 디자인">미술과 디자인</option>
						<option value="문화,사회,과학">문화,사회,과학</option>
						<option value="음료">음료</option>
						<option value="엔터테인먼트">엔터테인먼트</option>
						<option value="음식">음식</option>
						<option value="역사 및 문학">역사 및 문학</option>
						<option value="자연 및 야외활동">자연 및 야외활동</option>
						<option value="관광, 쇼핑 및 교통편">관광, 쇼핑 및 교통편</option>
						<option value="스포츠">스포츠</option>
						<option value="웰니스">웰니스</option>
						
						
					</select>
<br><br>
					<div class="mb-3">
						<label for="" class="form-label"><b>본인의 사진을 첨부해주세요</b></label> <input
							multiple type="file" accept="image/*" class="form-control"
							name="file">
					</div>
					<div class="mb-3">
						<label for="" class="form-label"><b>호스트와 호스트할 체험에 관해서 자세하게
							소개해주세요</b></label>
						<textarea required="required" rows="10" class="form-control"
							name="h_introduction"></textarea>
					</div>

					<!-- 					<div class="mb-3"> -->
					<!-- 						<label for="" class="form-label">파일</label> -->
					<!-- 						<input multiple type="file" accept="image/*" class="form-control" name="files"> -->
					<!-- 					</div> -->



					<center>
						<input id="submitButton1" class="btn btn-dark" type="submit"
							value="등록">
					</center>



				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script>
		// document.querySelector("#submitButton1").addEventListener("click", function(e) {
		// 	// submit 진행 중지
		// 	e.preventDefault();

		// 	// 제목input 입력한 값 가져와서
		// 	// 빈칸만 있는지 확인?
		// 	let titleValue = document.querySelector(`#registerForm1 input[name="title"]`).value
		// 	// 본문 textarea 입력한 값 가져와서
		// 	// 빈칸만 있는지 확인?
		// 	let contentValue = document.querySelector(`#registerForm1 textarea[name="content"]`).value		
		// 	// 작성자 input 값 가져와서
		// 	// 빈칸만 있는지 확인?
		// 	let writerValue = document.querySelector(`#registerForm1 input[name="writer"]`).value

		// 	// 위 테스트 다 통과하면 submit
		// 	if (titleValue.trim() != "" 
		// 			&& contentValue.trim() != "" 
		// 			&& writerValue.trim() != "") {

		// 		document.querySelector("#registerForm1").submit();
		// 	} else {
		// 		// 적절한 메세지 표시....
		// 	}

		// });
	</script>
</body>
</html>









