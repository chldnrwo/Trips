<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<link	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"	rel="stylesheet"	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"crossorigin="anonymous">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<my:navBar1></my:navBar1>

	<div class="container-md">
		<div class="row">
			<div class="col">
				<h1>${qna.id }번
					고객님 문의글
					<c:url value="/qna/QnaModify" var="qnaModifyLink">
						<c:param name="id" value="${qna.id }"></c:param>
					</c:url>
					<a class="" href="${qnaModifyLink }"> <i
						class="fa-thin fa-pen-to-square"></i>
					</a>
				</h1>



				제목 <input type="text" value="${qna.title }" readonly> <br>
				본문
				<textarea readonly>${qna.content }</textarea>
				<br> 작성자 <input type="text" value="${qna.memberId }" readonly>
				<br> 작성일시 <input type="datetime-local" value="${qna.inserted}"
					readonly>

			</div>



		</div>
	</div>
	<br>
	
	<div id="answerMessage1"></div>

	<div class="container-md">
		<div class="row">
			<div class="col">
				<input type="hidden" id="qnaId" value="${qna.id }">
				<input type="text" id="answerInput1">
				<button id="answerSendButton1">답변쓰기</button>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col">
			<div id="answerListContainer">
			
			</div>
		</div>
	</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"crossorigin="anonymous"></script>
<script>
const ctx="${pageContext.request.contextPath}"

listAnswer();

function listAnswer(){

	const qnaId= document.querySelector("#qnaId").value
	fetch(`\${ctx}/answer/QnaList/\${qnaId}`)
	.then(res =>res.json())
	.then(list =>{
		for(const item of list) {
			console.log(item.id)
			const answerDiv = `<div>\${item.content} : \${item.inserted}</div>`
			document.querySelector("#answerListContainer").insertAdjacentHTML("beforeend",answerDiv)
		}
	})
	
} 


document.querySelector("#answerSendButton1").addEventListener("click",function(){
	const qnaId=document.querySelector("#qnaId").value
	const content=document.querySelector("#answerInput1").value
	
	const data={
			qnaId,
			content
	}
	
	
	fetch(`\${ctx}/answer/add`,{
		method:"post",
		headers : {
			"content-Type":"application/json"
		},
		body:JSON.stringify(data)		
	})
	.then(res => res.json())
	.then(data =>{
		document.querySelector("#answerMessage1").innerText=data.message;
	})
})





</script>	
</body>
</html>