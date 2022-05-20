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

<title>${board.id }번게시물</title>
</head>
<body>

	<n:navBar />

	<div class="container">
		<div class="row">
			<div class="col-1">
				<s:SideBar path="list" />
			</div>
			<div class="col-11">
				<h1>${board.id }번게시물</h1>

				<form action="${appRoot }/board/board/modify" method="post">
					<input type="hidden" name="id" value="${board.id }" />

					<label class="form-label" for="input1">제목</label>
					<input class="form-control" type="text" value="${board.title }"
						name="title" required id="input1" />
					<br />

					<label for="input2" class="form-label">작성일</label>
					<input type="datetime-local" value="${board.inserted }" readonly />
					<br />

					<label for="textarea1" class="form-label">본문</label>
					<textarea class="form-control" cols="100" rows="30" name="body"
						id="textarea1">${board.body }</textarea>
					<br />

					<button class="btn btn-info">
						<i class="fa-solid fa-eraser"></i>
						수정
					</button>
				</form>

				<c:url value="/board/board/remove" var="removeLink" />
				<form action="${removeLink }" method="post">
					<input type="hidden" name="id" value="${board.id }" />
					<button class="btn btn-danger">
						<i class="fa-regular fa-trash-can"></i>
						삭제
					</button>
				</form>

				<hr />

				<h1>
					<i class="fa-solid fa-comment-dots"></i>
					댓글
				</h1>

				<c:url value="/board/reply/add" var="replyAddLink" />
				<form action="${replyAddLink }" method="post">
					<input type="hidden" name="boardId" value="${board.id }" />
					<input type="text" name="content" size="100" />

					<button class="btn btn-dark">쓰기</button>
				</form>

				<hr />

				<c:forEach items="${replyList }" var="reply">

					<div>
						${reply.inserted } :

						<c:url value="/board/reply/modify" var="replyModifyLink" />
						<form action="${replyModifyLink }" method="post">
							<input type="hidden" value="${reply.id }" name="id" />
							<input type="hidden" name="boardId" value="${board.id }" />
							<input type="text" value="${reply.content }" name="content"
								size="100" />
							<br />
							<button class="btn btn-info">
								<i class="fa-solid fa-eraser"></i>
								댓글 수정
							</button>
						</form>

						<c:url value="/board/reply/remove" var="replyRemoveLink" />
						<form action="${replyRemoveLink }" method="post">
							<input type="hidden" name="id" value="${reply.id }" />
							<input type="hidden" name="boardId" value="${board.id }" />
							<button class="btn btn-danger">
								<i class="fa-regular fa-trash-can"></i>
								댓글 삭제
							</button>
						</form>
					</div>

				</c:forEach>

			</div>
		</div>
	</div>

</body>
</html>













