<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
    <link href="css/login-register.css" rel="stylesheet" />
    
    <script src="/js/search.js"></script>
	
    <title>MyProfile - DirectBus</title>
  </head>
  <body id="body">
    <%@include file="includes/header.jsp" %>
    <form method="get" action="searchPage" class="mt-5 position-relative" id="search-form">
    	<div id="firstContainer">
		    <nav class="col-md-10 col-lg-8 col-xl-7 mx-auto position-relative row">    	
				<div class="input-group position-relative input-group-lg mb-5" style="background-color:transparent;">
		    		<input name="andata" type="text" class="form-control" placeholder="Stazione di andata" style="background-color:#171717; border:1px solid #FFCC00; color:white;" id="stazionePartenza">
		    		<input name="ritorno" type="text" class="form-control" placeholder="Stazione di ritorno" style="background-color:#171717; border:1px solid #FFCC00;" id="stazioneArrivo">
		    		<input name="dataAndata" type="date" class="form-control" placeholder="Andata" style="background-color:#171717; border:1px solid #FFCC00;" id="dataAndata">
		   			<input name="dataRitorno"type="date" class="form-control" placeholder="Ritorno" style="background-color:#171717; border:1px solid #FFCC00;" id="dataRitorno">
		   			<button type="submit" class="form-control" id="sendButton">Cerca</button>
		 		</div>
			</nav>	
			<div class="col-8 col-sm-8 col-md-8 col-lg-5 col-xl-7 col-xxl-12 mx-auto position-relative row">
			<h1 style="color:white">Prenota il tuo viaggio da<label style="color:white">Napoli</label> a<label style="color:white">Badolato</label></h1>
			</div>
			<div class="container mt-5">
				<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 col-xxl-12">
					<div style="margin-left:5%;">
					<button type="button" class="btn btn-lg col mt-2" id="buttonSearch"> Prezzo </button>				
					<button type="button" class="btn btn-lg col mt-2" id="buttonSearch"> Data </button>				
					<button type="button" class="btn btn-lg col mt-2" id="buttonSearch"> Durata viaggio </button>				
					<button type="button" class="btn btn-lg col mt-2" id="buttonSearch"> Orario di partenza </button>				
					<button type="button" class="btn btn-lg col mt-2" id="buttonSearch"> Orario di arrivo </button>
					</div>
				</div>
			</div>
<!--			<div class="row mt-5 col-sm-11 col-md-11 col-lg11 col-xl-11 mx-auto">
				<div class="card mb-3 " id="cardStyle">
				  <div class="row">
				    <div class="col">				    
				      <div class="card-body">
				        <div class="mt-9 col-sm-9 col-md-9 col-lg-10 col-xl-9 mx-auto row" style="margin-top:6%;">
				        <div class="col">
				        <h5 style="color:#FFCC00;">PARTENZA</h5>
				        <p style="color:#FFCC00;">Rosarno</p>
				        <p style="color:#FFCC00;">05:00</p>
				        </div>
				        <div class="col">
				        <h5 style="color:#FFCC00;">ORARIO</h5>
				        </div>
				        <div class="col">
				        <h5 style="color:#FFCC00;">ARRIVO</h5>
				        <p style="color:#FFCC00;">Roma </p>	
				        <p style="color:#FFCC00;">13:00</p>				        
				        </div>
				        </div>
				      </div>
				    </div>
				    <div class="col-sm-10 col-md-10 col-lg-6 col-xl-5 mx-auto">				    	
				      <div class="card-body">
				      	<button type="button" class="btn row" id="buttonSearch" style=" height:190px; width:400px;">
				      	<h6 style="margin-top:">Acquista</h6>
				      	<h2 class="row" style="background-color:transparent; margin-left:25%;">20,00 EUR</h2>
				      	<p class="card-text"><small class="text-muted">Tariffa singola</small></p>				      					      	
				      	</button>				      	 
				      </div>
				    </div>
				  </div>
				</div>
			</div>   -->
		</div>			
	</form>	
  </body>
</html>
