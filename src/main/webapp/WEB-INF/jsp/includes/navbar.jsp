<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand name" href="/">DirectBus</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="../discover">Scopri</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Partner</a></li>
				<li class="nav-item"><a class="nav-link" href="../aboutUs">About Us</a></li>
			</ul>
			<c:choose>
	        	<c:when test="${user == null}">
	        		<a class="btn btn-dark ms-auto" role="button" href="../login">Sign In</a>
	        	</c:when>
	        	<c:otherwise>
	        		<a class="btn btn-dark ms-auto" role="button" href="../myProfile">Account</a>
	        	</c:otherwise>
        	</c:choose>
		</div>
	</div>
</nav>