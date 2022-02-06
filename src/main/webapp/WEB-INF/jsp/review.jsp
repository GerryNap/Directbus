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
	<script type="/js/review.js"></script>
	<section class="container mt-5 " id="firstContainer">
			<form id="" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 col-xl-7 mx-auto position-relative">
				<center>
					<h1 id="recensione" class="col-xl-5 mx-auto position-relative mt-5">Recensione</h1>
					<br>
				</center>
				<p><strong>Azienda: </strong>${param.agency}</p>
				<p><strong>Stazione di Partenza: </strong>${param.stazionePartenza}</p>
				<p><strong>Stazione di Arrivo: </strong>${param.stazioneArrivo}</p>
				<p><strong>Data/ora di Partenza: </strong>${param.dataPartenza} - ${param.orarioPartenza}</p>
				<p><strong>Data/ora di Arrivo: </strong>${param.dataArrivo} - ${param.orarioArrivo}</p>
				<p><strong>Valuta la tua esperienza:</strong></p>
				<div class="row">
				<button class="btn bi bi-star-fill col" type="button" id="star-1"></button>
				<button class="btn bi bi-star-fill col" type="button" id="star-2"></button>
				<button class="btn bi bi-star-fill col" type="button" id="star-3"></button>
				<button class="btn bi bi-star-fill col" type="button" id="star-4"></button>
				<button class="btn bi bi-star-fill col" type="button" id="star-5"></button>
				</div>
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
