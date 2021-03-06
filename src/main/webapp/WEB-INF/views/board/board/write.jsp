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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
	
<title>글 작성 - 게시물</title>
</head>
<body>
	<n:navBar />
	<div class="container">
		<div class="row">
			<div class="col-1">
				<s:SideBar path="list" />
			</div>
			<div class="col-11">
				<h1>글 작성</h1>

				<c:url value="/board/board/write" var="writeLink" />
				<form action="${writeLink }" method="post">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">제목</label>
						<input type="text" name="title" placeholder="새 제목" size="98.9" />
						<br />
					</div>

					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">본문</label>
						<textarea name="body" id="" cols="100" rows="30"
							placeholder="여기에 글을 작성해주세요~!"></textarea>
						<br />
					</div>

					<button class="btn btn-dark">
						<i class="fa-solid fa-cloud-word"></i>
						등록
					</button>
				</form>
			</div>
		</div>
	</div>


</body>
</html>