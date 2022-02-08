<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="it">
<head>
<%@include file="includes/import.jsp"%>
<script src="/js/partner.js"></script>
<title>Directbus</title>
<link href="css/index.css" rel="stylesheet" />
</head>

<body>
	<%@include file="includes/navbar.jsp"%>
	<!-- NEW HEADER -->
	<header>
		<h1 style="text-align: center" class="mt-5">I NOSTRI PARTNER</h1>
	</header>

	<hr>

	<div class="container">
		<div class="row justify-content-center align-items-center">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Nome</th>
						<th scope="col">P.iva</th>
						<th scope="col">Recensioni</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="a" items="${agency}">
						<tr>
							<td>${a.name}</td>
							<td>${a.pIva}</td>
							<td><button class="btn" onclick="generateReviews()">Recensioni</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<c:remove var="agency" scope="session"></c:remove>
		</div>
	</div>

	<section id="reviews">
		<h1 style="text-align: center" class="mt-5">Recensioni</h1>
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<c:forEach var="rw" items="${reviews}">
					<div class="card-body">
						<h5 class="card-title">${Recensione}</h5>

						<p class="card-text">Voto: ${rw.starNumber}/5</p>

						<hr style="color: black;">

						<p class="card-text">Commento: ${rw.text}</p>


					</div>
				</c:forEach>
				<c:remove var="travelHistory" scope="session"></c:remove>
			</div>
		</div>
	</section>

</body>
</html>
