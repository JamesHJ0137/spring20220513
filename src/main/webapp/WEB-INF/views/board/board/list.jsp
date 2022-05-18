<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="n" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ex" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>

<title>자유 게시판</title>
</head>
<body>

	<n:navBar />
	<c:url value="/board/board/write" var="writeLink" />
	<%-- <h1><i class="fa-solid fa-pencil"></i><a href="${writeLink }">글 쓰기</a></h1> --%>

	<div class="container">
		<div class="row">
			<div class="col-1">
				<s:SideBar path="list" />
			</div>
			<div class="col-11">
				<h1>자유게시판</h1>
				<h2>자유롭게 글을 쓸 수 있는 게시판입니다.</h2>
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${boardList }" var="board">
							<tr>
								<td>${board.id }</td>

								<td>
									<c:url value="/board/board/${board.id }" var="link"></c:url>

									<a href="${link }"> ${board.title } </a>

									<c:if test="${board.numOfReply > 0 }">
						[${board.numOfReply }]
						</c:if>
								</td>

								<td>${board.inserted }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>

	<div class="mt-3">
		<ex:PagiNation path="list" />

		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
			<div class="container-fluid justify-content-center">
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-primary" type="submit">Search</button>
				</form>
			</div>
		</nav>
	</div>

</body>
</html>




















