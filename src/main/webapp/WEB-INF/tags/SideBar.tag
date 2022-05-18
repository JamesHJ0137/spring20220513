<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="path" %>

<c:url value="/board/board/list" var="listUrl"></c:url>
<c:url value="/board/board/write" var="insertUrl"></c:url>

  <div class="d-flex flex-column flex-shrink-0 bg-light" style="width: 4.5rem;">
    <a href="/" class="d-block p-3 link-dark text-decoration-none" title="Icon-only" data-bs-toggle="tooltip" data-bs-placement="right">
      <svg class="bi" width="30" height="30"><use xlink:href="#bootstrap"/></svg>
      <span class="visually-hidden">Icon-only</span>
    </a>
    <ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
      <li class="nav-item">
        <a href="${listUrl }" class="nav-link active py-3 border-bottom" aria-current="page" title="Home" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="30" height="30" role="img" aria-label="Home"><use xlink:href="#home"/></svg>
          <i class="fa-solid fa-house"></i>
        </a>
      </li>
      <li>
        <a href="#" class="nav-link py-3 border-bottom" title="Orders" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="30" height="30" role="img" aria-label="Orders"><use xlink:href="#table"/></svg>
		  <i class="fa-solid fa-basket-shopping"></i>
        </a>
      </li>
      <li>
        <a href="#" class="nav-link py-3 border-bottom" title="Products" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="30" height="30" role="img" aria-label="Products"><use xlink:href="#grid"/></svg>
          <i class="fa-brands fa-product-hunt"></i>
        </a>
      </li>
      <li>
        <a href="#" class="nav-link py-3 border-bottom" title="Customers" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="30" height="30" role="img" aria-label="Customers"><use xlink:href="#people-circle"/></svg>
          <i class="fa-solid fa-gear"></i>
        </a>
      </li>
    </ul>
  </div>
