<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="active" required="false" %>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-md">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        <c:url value="/qna/QnaList" var="qnaListLink"></c:url>
          <a class="nav-link ${active eq 'list' ? 'active' : '' }" aria-current="page" href="${qnaListLink }">목록</a>
        </li>
        <li class="nav-item">
        	<c:url value="/qna/QnaRegister" var="qnaRegisterLink"></c:url>
          <a class="nav-link ${active eq 'register' ? 'active' : '' }" href="${qnaRegisterLink }">문의하기</a>
        </li>
       
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>