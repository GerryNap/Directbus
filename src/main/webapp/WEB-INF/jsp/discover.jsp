<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/discover.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	<script src="/js/discover.js"></script>
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
			<div class="row">
				<div class="col-8">
					<img id="city" src="images/milano.jpeg" class="img-fluid">
				</div>
				<div class="col-4">
					<h3>Milano</h3>
					<p>“Viaggiare è come innamorarsi: il mondo si fa nuovo”</p>
					<button>Scopri</button>
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row">
				<div class="col-4">
					<h3>Milano</h3>
					<p>“Viaggiare è come innamorarsi: il mondo si fa nuovo”</p>
					<button>Scopri</button>
				</div>
				<div class="col-8">
					<img id="city" src="images/milano.jpeg" class="img-fluid">
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row">
				<div class="col-8">
					<img id="city" src="images/milano.jpeg" class="img-fluid">
				</div>
				<div class="col-4">
					<h3>Milano</h3>
					<p>“Viaggiare è come innamorarsi: il mondo si fa nuovo”</p>
					<button>Scopri</button>
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row">
				<div class="col-4">
					<h3>Milano</h3>
					<p>“Viaggiare è come innamorarsi: il mondo si fa nuovo”</p>
					<button>Scopri</button>
				</div>
				<div class="col-8">
					<img id="city" src="images/milano.jpeg" class="img-fluid">
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row">
				<div class="col-8">
					<img id="city" src="images/milano.jpeg" class="img-fluid">
				</div>
				<div class="col-4">
					<h3>Milano</h3>
					<p>“Viaggiare è come innamorarsi: il mondo si fa nuovo”</p>
					<button>Scopri</button>
				</div>
			</div>
		</div>
		<div class="container-fluid" id="ctnr">
			<div class="row">
				<div class="col-4">
					<h3>Milano</h3>
					<p>“Viaggiare è come innamorarsi: il mondo si fa nuovo”</p>
					<button>Scopri</button>
				</div>
				<div class="col-8">
					<img id="city" src="images/milano.jpeg" class="img-fluid">
				</div>
			</div>
		</div>		
		</section>
  </body>
</html>