<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="current"%>

<c:url value="/board/board/list" var="listUrl"></c:url>
<c:url value="/board/board/write" var="insertUrl"></c:url>

<nav class="navbar navbar-expand-sm navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">임쓰</a>

		<div class="navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="${listUrl }">
						<i class="fa-solid fa-house"></i>
						HOME
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="https://github.com/JamesHJ0137">LINK</a>
				</li>
				<li class="nav-item">
					<a class="nav-link ${current == 'list' ? 'active' : '' }"
						href="${listUrl }">
						<i class="fa-solid fa-list"></i>
						목록보기
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link ${current == 'insert' ? 'active' : '' }"
						href="${insertUrl }">
						<i class="fa-solid fa-pencil"></i>
						글쓰기
					</a>
				</li>
			</ul>
		</div>
	</div>
</nav>

<form action="${listUrl }" class="d-flex">
	<select name="type" id="" class="form-select">
		<option value="all"
			${param.type != 'title' && param.type != 'body' ? 'selected' : '' }>전체</option>
		<option value="title" ${param.type == 'title' ? 'selected' : '' }>제목</option>
		<option value="body" ${param.type == 'body' ? 'selected' : '' }>본문</option>
	</select>
</form>

<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
	<div class="container-fluid justify-content-center">
		<form class="d-flex">
			<input class="form-control me-2" type="search" placeholder="Search"
				aria-label="Search">
			<button class="btn btn-outline-primary" type="submit">Search</button>
		</form>
	</div>
</nav>