<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>

<style>
.fix {
	background-color: rgb(60, 60, 60) !important;
	width: 100%;
	position: fixed !important;
	animation: down 0.5s ease !important;
}
@
keyframes down { 0%{
	transform: translateY(-50px)
}
	100
%
{
transform
:
translateY(
0px
)
}
}
.font_pala{
	font-family: "Palatino Linotype";
	font-weight: bold;
}
#padding{
	padding: 15px 0 15px 0;
}
</style>

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
</head>
<body>


	<my:navbar></my:navbar>
	
	<div class="container" style="padding-top: 50px;">
		<div class="row">
			<div class="col-md-5 mx-auto">
				<div id="first">
					<div class="myform form ">
						<div class="logo mb-3" id="padding">
							<div class="col-md-12 text-center">
								<h1 class="font_pala">ACTI &nbsp; Login</h1>
							</div>
						</div>
						<form action="" method="post" name="login">
							<div class="form-group" >
								<label for="inputID" class="font_pala" style="padding: 10px 0 10px 0; font-size: 25px;">Id</label> 
								<input type="text"
									name="username" class="form-control" id="id"
									aria-describedby="idHelp" placeholder="Enter id">
							</div>
							<div class="form-group">
								<label for="inputPassword" class="font_pala" style="padding: 10px 0 10px 0; font-size: 25px;">Password</label> 
								<input
									type="password" name="password" id="password"
									class="form-control" aria-describedby="passwordHelp"
									placeholder="Enter Password">
							</div>
							<div class="col-md-12 text-center " style="padding: 15px 0 15px 0;">
								<button type="submit"
									class=" btn btn-block mybtn btn-primary tx-tfm">?????????</button>
							</div>

							<div class="form-group">
								<p class="text-center">
									????????? ???????????????? <a href="/jjhLogin/signup" id="signup">????????????</a>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script>
		/* --------------sticky navbar scroll ??????-------------------------------------------------------------------------------------------------- */
		function navigo() {
			const header = document.querySelector('#nav2'); //??????????????????
			const headerheight = header.clientHeight;//????????????
			document.addEventListener('scroll', onScroll, {
				passive : true
			});//????????? ?????????
			function onScroll() {
				const scrollposition = pageYOffset;//????????? ??????
				const nav = document.querySelector('#nav');//???????????????
				if (headerheight <= scrollposition) {//?????? ????????????<=?????????????????????
					nav.classList.add('fix')//fix???????????? ????????? ??????
				} else {//??? ?????? ??????
					nav.classList.remove('fix');//fix???????????? ???????????? ??????
				}
			}
		}
		navigo()
		/* --------------sticky navbar scroll ?????? ???-------------------------------------------------------------------------------------------------- */
	</script>
</body>
</html>









