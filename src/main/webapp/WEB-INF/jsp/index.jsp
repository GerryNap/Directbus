<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="it">
<head>
<%@include file="includes/import.jsp"%>
<link href="css/login-register.css" rel="stylesheet" />

<script src="/js/search.js"></script>

<title>DirectBus</title>
</head>
<body id="body">
	<%@include file="includes/header.jsp"%>
	<form class="mt-5 position-relative" id="search-form">
		<div id="firstContainer">
			<nav class="row mx-auto position-relative">

				<div
					class="col-10 col-sm-10 col-md-10 col-lg-12 col-xl-12 mx-auto position-relative input-group mb-5"
					style="background-color: transparent;">
					<div
						class="ui-widget col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2 position-relative mt-3"
						style="background-color: #171717; border: 1px solid #FFCC00; border-radius: 15px 0px 0px 15px;">
						<input name="andata" type="text" class="form-control"
							placeholder="Stazione di partenza"
							style="background-color: transparent; border: transparent; color: white; width: 90%; margin-left: 10%;"
							id="stazionePartenza" autocomplete="off" required>
					</div>
					<div
						class="ui-widget col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2 position-relative mt-3"
						style="background-color: #171717; border: 1px solid #FFCC00;">
						<input name="ritorno" type="text" class="form-control"
							placeholder="Stazione di arrivo"
							style="background-color: transparent; border: transparent; color: white; width: 100%;"
							id="stazioneArrivo" autocomplete="off" required>
					</div>
					<div
						class="ui-widget col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2 position-relative mt-3"
						style="background-color: #171717; border: 1px solid #FFCC00;">
						<input name="dataAndata" type="date" class="ui-widget"
							style="background-color: transparent; border: transparent; color: white; margin-left: 31%; margin-top: 2%;"
							placeholder="Andata" id="dataAndata">
					</div>
					<div
						class="ui-widget col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2 position-relative mt-3"
						style="background-color: #171717; border: 1px solid #FFCC00;">
						<input name="passeggeri" type="number" class="ui-widget"
							placeholder="Numero passeggeri"
							style="background-color: transparent; border: transparent; color: white; width: 50%; margin-left: 20%; margin-top: 2%;"
							id="passeggeri">
					</div>
					<button type="submit"
						class="ui-widget col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2 position-relative mt-3"
						id="sendButton"
						style="border-radius: 0px 15px 15px 0px; border: 1px solid #FFCC00;">Cerca</button>
				</div>
			</nav>
			<div
				class="col-12 col-sm-10 col-md-8 col-lg-8 col-xl-7 col-xxl-12 position-relative mx-auto mt-3">
				<h1 style="color: white; margin-left: 25%;">Prenota il tuo
					viaggio.</h1>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 col-xxl-12 mt-5">
				<div style="margin-left: 5%;">
					<button type="button" class="btn btn-lg col mt-2" onclick="sortPrice()" name ="price" id="buttonSearch" disabled>Prezzo</button>
					<button type="button" class="btn btn-lg col mt-2" onclick="sortData()" name ="data" id="buttonSearch" disabled>Data</button>
					<button type="button" class="btn btn-lg col mt-2" onclick="sortDuration()" name ="duration" id="buttonSearch" disabled>Durata viaggio</button>
					<button type="button" class="btn btn-lg col mt-2" onclick="sortStart()" name ="start" id="buttonSearch" disabled>Orario di partenza</button>
				</div>
			</div>
		</div>
	</form>
	<div id="routeContainer"></div>
	<!-- 		<form method="get" action="/buyTicket" id="buttonSubmit">
			<div class="row mt-5 col-sm-11 col-md-11 col-lg11 col-xl-11 mx-auto">
				<div class="card mb-3 " id="cardStyle">
				  <div class="row">
				    <div class="col">				    
				      <div class="card-body">
				        <div class="mt-9 col-sm-9 col-md-9 col-lg-10 col-xl-9 mx-auto row" style="margin-top:10%;">
				        <div class="col">
				        <h5 style="color:#FFCC00;">PARTENZA</h5>
				        <input type="hidden" value="5 00" name="orario" style="color:#FFCC00;">
				        <p>5:00 </p>
				        </div>
				        <div class="col">
				        <h5 style="color:#FFCC00;">ORARIO</h5>
				        </div>
				        <div class="col">
				        <h5 style="color:#FFCC00;">ARRIVO</h5>
				        <p style="color:#FFCC00;">13:00</p>				        
				        </div>
				        </div>
				      </div>
				    </div>
				    <div class="col-sm-10 col-md-10 col-lg-6 col-xl-5 mx-auto">				    	
				      <div class="card-body" > 
				      	<button type="submit" class="btn row" id="buttonSearch" style=" height:190px; width:400px;">
				      	<h6 style="margin-top:">Acquista</h6>
				      	<h2 class="row" style="bacground-color:transparent; margin-left:25%;">20,00 EUR</h2>
				      	<p class="card-text"><small class="text-muted">Tariffa singola</small></p>				      					      	
				      	</button>				      	 
				      </div>
				    </div>
				  </div>
				</div>
			</div>	  			
		</form>  -->
</body>
</html>
