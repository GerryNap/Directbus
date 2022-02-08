<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/navbar.css" rel="stylesheet"/>
<script src="/js/navbar.js"></script>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand name" href="/">DirectBus</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div id="mySidenav" class="sidenav">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><i class="bi bi-x-square" style="font-size:20px; padding: 0px 0px 0px 0px;"></i></a>
			<div>
				<ul>
					<h6 class="bi bi-phone " style="font-size:20px;">I NOSTRI CONTATTI:</h6>
					<li>Per info e assistenza:</li>
					<a style="font-size: 13px;" href="mailto:info.directbus@gmail.com"><strong>info.directbus@gmail.com</strong></a>
					<li>I nostri social :</li>
					<a class="bi bi-instagram" style="font-size: 13px;"
						href="#"><strong> -
							Instragram</strong></a>
				</ul>
			</div>
			<hr> 
			<div>
				<ul>
				
					<h6 class="bi bi-credit-card-2-back" style="font-size:20px;"> PAGAMENTI:</h6>
					
					<a class="bi bi-paypal" style="font-size: 13px;"
						href="https://www.paypal.com/it/home"> Carte di credito: <strong> -
							PayPal</strong></a>
				</ul>
			</div>
			<hr> 
		  <a href="../aboutUs" style="margin-left:10%">About Us</a>
		</div>
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="../discover">Discover</a></li>
				<li class="nav-item"><a class="nav-link" href="../partner">Partner</a></li>
				<li class="nav-item"><span class="nav-link" onclick="openNav()" id="servizioClienti">Servizio Clienti</span></li>
			</ul>	
			<c:choose>
	        	<c:when test="${user == null}">
	        		<a class="btn btn-dark ms-auto" role="button" href="../login">Sign In</a>
	        	</c:when>
	        	<c:otherwise>
	        		<li class="nav-item dropdown" id="prova">
			          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            Account
			          </a>
			          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
			            <li><a class="dropdown-item" href="/myProfile">Profilo</a></li>
			            <li><a class="dropdown-item" href="/logout">Esci</a></li>
			          </ul>
			        </li>
	        	</c:otherwise>
        	</c:choose>
		</div>
	</div>
</nav>