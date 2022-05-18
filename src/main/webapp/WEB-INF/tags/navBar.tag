<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="current" %>

<c:url value="/board/board/list" var="listUrl"></c:url>
<c:url value="/board/board/write" var="insertUrl"></c:url>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">임쓰</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${listUrl }"><i class="fa-solid fa-house"></i> HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://github.com/JamesHJ0137">LINK</a>
        </li>
       <li class="nav-item">
          <a class="nav-link ${current == 'list' ? 'active' : '' }" href="${listUrl }"><i class="fa-solid fa-list"></i>목록보기</a>
        </li>
        <li class="nav-item">
          <a class="nav-link ${current == 'insert' ? 'active' : '' }" href="${insertUrl }"><i class="fa-solid fa-pencil"></i>글쓰기</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>