<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="it">
	<head>
		<%@include file="includes/import.jsp"%>
		<title>Directbus</title>
		<link href="css/review.css" rel="stylesheet" />
	</head>

<body>
	<%@include file="includes/navbar.jsp"%>
	<section class="container mt-5 " id="firstContainer">
			<form id="" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 col-xl-7 mx-auto position-relative">
				<center>
					<h1 id="recensione" class="col-xl-5 mx-auto position-relative mt-5">Recensione</h1>
					<br>
				</center>
				<p><strong>Azienda:</strong><c:out value="${sessionScope.route}"></c:out></p>
				<p><strong>Stazione di Partenza:</strong></p>
				<p><strong>Stazione di Arrivo:</strong></p>
				<p><strong>Data/ora di Partenza:</strong></p>
				<p><strong>Data/ora di Arrivo:</strong></p>
				<p><strong>Recensisci:</strong></p>
				<div class="input-group">
				  <textarea class="form-control"placeholder="Lascia qui una recensione."></textarea>
				</div>
				<center>
					<div class="btn-group col-md-4 col-lg-3 col-xl-3 mt-3">
						<button id="send-review" type="button" class="btn" onclick="window.location.href = '/myProfile'">Invia</button>
					</div>
				</center>	
			</form>
		</section>
</body>
</html>
