<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/discover.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
    <title>DirectBus</title>
  </head>
	<body id="body">
		<%@include file="includes/navbar.jsp"%>
		<section id="header-section">
			<div class="card">
			  <img src="images/discover-image.jpg" class="card-img" alt="">
			  <div class="card-img-overlay">
			    <p class="card-text">Luoghi da scoprire</p>
			  </div>
			</div>
		</section>
		
		<section id="city">
		<div class="container-fluid" id="ctnr">
			<div class="row  justify-content-center align-items-center">
				<div class="col-12 col-sm-12 col-md-8 col-lg-8">
					<img id="city" src="images/milano.png" class="img-fluid">
				</div>
				<div class="col-12 col-sm-12 col-md-4 col-lg-4">
					<center>
						<h3>Milano</h3>
						<p>“Viaggiare è come innamorarsi: il mondo si fa nuovo”</p>
						<button class="btn" onclick="window.location.href = '/'">Scopri</button>
					</center>
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row  justify-content-center align-items-center">
				<div class="col-12 col-sm-12 col-md-4 col-lg-4">
					<center>
						<h3>Firenze</h3>
						<p>“Anche un viaggio di mille miglia inizia con un singolo passo!”</p>
						<button class="btn" onclick="window.location.href = '/'">Scopri</button>
					</center>
				</div>
				<div class="col-12 col-sm-12 col-md-8 col-lg-8">
					<img id="city" src="images/firenze.png" class="img-fluid">
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row  justify-content-center align-items-center">
				<div class="col-12 col-sm-12 col-md-8 col-lg-8">
					<img id="city" src="images/bologna.png" class="img-fluid">
				</div>
				<div class="col-12 col-sm-12 col-md-4 col-lg-4">
					<center>
						<h3>Bologna</h3>
						<p>“C’è chi viaggia per perdersi, c’è chi viaggia per ritrovarsi!”</p>
						<button class="btn" onclick="window.location.href = '/'">Scopri</button>
					</center>
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row  justify-content-center align-items-center">
				<div class="col-12 col-sm-12 col-md-4 col-lg-4">
					<center>
						<h3>Torino</h3>
						<p>“Le strade sono fatte per i viaggi, non per le destinazioni!”</p>
						<button class="btn" onclick="window.location.href = '/'">Scopri</button>
					</center>
				</div>
				<div class="col-12 col-sm-12 col-md-8 col-lg-8">
					<img id="city" src="images/torino.png" class="img-fluid">
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row  justify-content-center align-items-center">
				<div class="col-12 col-sm-12 col-md-8 col-lg-8">
					<img id="city" src="images/rimini.png" class="img-fluid">
				</div>
				<div class="col-12 col-sm-12 col-md-4 col-lg-4">
					<center>
						<h3>Rimini</h3>
						<p>“Vivi la vita senza scuse, viaggia senza rimpianti!”</p>
						<button class="btn" onclick="window.location.href = '/'">Scopri</button>
					</center>
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row  justify-content-center align-items-center">
				<div class="col-12 col-sm-12 col-md-4 col-lg-4">
					<center>
						<h3>Bari</h3>
						<p>“La vita è un viaggio, e chi viaggia vive due volte!”</p>
						<button class="btn" onclick="window.location.href = '/'">Scopri</button>
					</center>
				</div>
				<div class="col-12 col-sm-12 col-md-8 col-lg-8">
					<img id="city" src="images/bari.png" class="img-fluid">
				</div>
			</div>
		</div>		
		</section>
  </body>
</html>