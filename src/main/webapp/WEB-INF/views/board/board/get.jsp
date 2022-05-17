<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="n" tagdir="/WEB-INF/tags" %>
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

<title>${board.id }번 게시물</title>
</head>
<body>

	<n:navBar />
	<h1>${board.id }번게시물</h1>

	<form action="${appRoot }/board/board/modify" method="post">
		<input type="hidden" name="id" value="${board.id }" />

		제목 :
		<input type="text" value="${board.title }" name="title" />
		<br />
		본문 :
		<textarea name="body" cols="100" rows="30">${board.body }</textarea>
		<br />
		작성일시 :
		<input type="datetime-local" value="${board.inserted }" readonly />
		<br />
		<button type="button" class="btn btn-primary"><i class="fa-solid fa-eraser"></i> 수정</button>
	</form>

	<c:url value="/board/board/remove" var="removeLink" />
	<form action="${removeLink }" method="post">
		<input type="hidden" name="id" value="${board.id }" />
		<button type="button" class="btn btn-danger"><i class="fa-regular fa-trash-can"></i> 삭제</button>
	</form>

	<hr />

	<h2><i class="fa-solid fa-comment-dots"></i>댓글</h2>

	<c:url value="/board/reply/add" var="replyAddLink" />
	<form action="${replyAddLink }" method="post">
		<input type="hidden" name="boardId" value="${board.id }" />
		댓글 :
		<input type="text" name="content" size="100" placeholder="댓글을 남겨주세요 :)"/>
		<button>쓰기</button>
	</form>

	<hr />

	<div>
		<c:forEach items="${replyList }" var="reply">
			<div style="border: 1px solid black; margin-bottom: 3px;">
				${reply.inserted } :
				<c:url value="/board/reply/modify" var="replyModifyLink" />

				<form action="${replyModifyLink }" method="post">
					<input type="hidden" value="${reply.id }" name="id" />
					<input type="hidden" name="boardId" value="${board.id }" />
					<input type="text" value="${reply.content }" name="content" />
					<button type="button" class="btn btn-primary"><i class="fa-solid fa-eraser"></i> 수정</button>
				</form>

				<c:url value="/board/reply/remove" var="replyRemoveLink" />
				<form action="${replyRemoveLink }" method="post">
					<input type="hidden" name="id" value="${reply.id }" />
					<input type="hidden" name="boardId" value="${board.id }" />
					<button type="button" class="btn btn-danger"><i class="fa-regular fa-trash-can"></i> 삭제</button>
				</form>
			</div>
		</c:forEach>
	</div>
</body>
</html>













