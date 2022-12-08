<!-- 이거 navbar 아직 아무런 기능 없습니다 디자인 보려고 넣어놓은거 -->
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ attribute name="active" %>

<style>
#searchTypeSelect {
	width: auto;
}
#nav{
background-color:black;
} 
.navbar{
 background-color:black;
 height:80px;
 margin:0 0 0 0 !important;

}
.container-md{
 padding:0 0 0 220px; 
}
.font{
color: #ffffff;
font-family: "Palatino Linotype" !important;
font-weight: bold;
font-size: 20px;
}
.font-main{
color: #ffffff;
font-family: "Palatino Linotype" !important;
font-weight: bold;
font-size: 30px;
}
.nav-item{
padding: 0 15px 0 15px;
}
</style>


<c:url value="/mypage/mypage2" var="myPageLink" />
<c:url value="/qna/QnaList" var="qnaLink" />
<c:url value="/ydsBoard/list" var="onLineLink" />
<c:url value="/offline/on" var="offLineLink" />
<c:url value="/jjhLogin/login" var="logInLink" />
<c:url value="/jjhLogin/signup" var="signUpLink" />



<nav id="nav" class="navbar navbar-expand-md mb-3">
  <div class="container-md">
    <a class="navbar-brand" href="${onLineLink }">
    <span class="font-main">Main</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div style="padding-left: 200px"class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
         <a class="nav-link"
         href="${onLineLink }">
          <span class="font">Activity On-line</span>
         </a>
        </li>
        <li class="nav-item">
         <a class="nav-link"
         href="${offLineLink }">
          <span class="font">Activity Off-line</span>
         </a>
        </li>
        
        <sec:authorize access="not isAuthenticated()" >
        <li class="nav-item">
         <a class="nav-link"
         href="${logInLink }">
		  <span class="font">Log In</span>
		  </a>
        </li>
        
       
        <li class="nav-item">
          <a class="nav-link"
          href="${signUpLink }">
          <span class="font">Sign Up</span>
          </a>
        </li>
        </sec:authorize>
        
        <li class="nav-item">
          <a class="nav-link"
          <%-- ${active eq 'signup' ? 'active' : '' } --%>
          href="${myPageLink}">
          <span class="font">My Page</span
          ></a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link"
          href="${qnaLink}">
          <span class="font">Q&A</span
          ></a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link">
          <span class="font">Host Page</span
          ></a>
        </li>
        
      </ul>
      <form action="${listLink }" class="d-flex" role="search">
      
      	
      </form>
    </div>
  </div>
</nav>







