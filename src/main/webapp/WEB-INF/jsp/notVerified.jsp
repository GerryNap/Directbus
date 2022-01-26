<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!doctype html>
<html lang="it">
<head>
<c:choose>
	<c:when test="${user == null}">
		<c:redirect url="/login" />
	</c:when>
	<c:when test="${user.verified == true}">
		<c:redirect url="/myProfile" />
	</c:when>
</c:choose>
<%@include file="includes/import.jsp"%>

<link href="css/login-register.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"
	rel="stylesheet" />

<title>DirectBus</title>
</head>

<body id="body">
	<%@include file="includes/header.jsp"%>
	<script src="/js/login.js"></script>

	<div class="container mt-5 " id="firstContainer">
		<center>
			<h1 style="color: #ffcc00;">Ti abbiamo inviato una email di
				conferma</h1>
			<h3 style="color: #ffcc00;">Non hai ricevuto la email?</h3>
			<a href="/"><button id="sendButton" type="submit" class="btn">Clicca
					qui</button></a>
			<center>
	</div>
</body>
</html>