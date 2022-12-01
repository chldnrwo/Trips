<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>