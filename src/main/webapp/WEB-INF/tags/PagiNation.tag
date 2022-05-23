<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="path"%>

<c:url value="/board/board/list" var="listUrl"></c:url>
<c:url value="/board/board/write" var="insertUrl"></c:url>

<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
		<c:forEach begin="${pageInfo.left }" end="${pageInfo.right }"
			var="pageNum">

			<c:url value="${path }" var="link">
				<c:param name="page" value="${pageNum }"></c:param>
			</c:url>

			<li class="page-item ${pageInfo.current == pageNum ? 'active' : '' }">
				<a class="page-link " href="${link }">${pageNum }</a>
			</li>
		</c:forEach>
	</ul>
</nav>


<nav class="navbar navbar-light" style="background-color: #f8f9fa;">
	<div class="container-fluid justify-content-center">
			<form action="${listUrl }" class="d-flex">
				<select name="type" id="" class="form-select">
					<option value="all"
						${param.type != 'title' && param.type != 'body' ? 'selected' : '' }>전체</option>
					<option value="title" ${param.type == 'title' ? 'selected' : '' }>제목</option>
					<option value="body" ${param.type == 'body' ? 'selected' : '' }>본문</option>
				</select>
				<input class="form-control me-2" name="keyword" 
					type="search" size="30" maxlength="20" 
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-primary" type="submit">Search</button>
			</form>
	</div>
</nav>