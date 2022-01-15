<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
    <link href="css/login-register.css" rel="stylesheet" />
	
    <title>MyProfile - DirectBus</title>
  </head>
  <body id="body">
    <%@include file="includes/header.jsp" %>
    <form method="get" action="searchPage" class="mt-5 position-relative">
    	<div id="firstContainer ">
		    <nav class="col-md-10 col-lg-8 col-xl-7 mx-auto position-relative row">    	
				<div class="input-group position-relative input-group-lg mb-5" style="background-color:transparent;">
		    		<input type="text" class="form-control" placeholder="Stazione di andata" style="background-color:#171717; border:1px solid #FFCC00; color:white;">
		    		<input type="text" class="form-control" placeholder="Stazione di ritorno" style="background-color:#171717; border:1px solid #FFCC00;">
		    		<input type="date" class="form-control" placeholder="Andata" style="background-color:#171717; border:1px solid #FFCC00;">
		   			<input type="date" class="form-control" placeholder="Ritorno" style="background-color:#171717; border:1px solid #FFCC00;">
		   			<button type="submit" class="form-control" id="sendButton">Cerca</button>
		 		</div>
			</nav>	
			<div class="col-md-8 col-lg-6 col-xl-4 mx-auto position-relative row">
			<h1 style="color:white">Prenota il tuo viaggio da<label style="color:white">Napoli</label> a<label style="color:white">Badolato</label></h1>
			</div>
			<div class="container mt-5 row">
				<div class="col">
					<div style="margin-left:5%;">
					<button type="button" class="btn btn-lg col" id="buttonSearch" > Prezzo </button>				
					<button type="button" class="btn btn-lg col" id="buttonSearch"> Data </button>				
					<button type="button" class="btn btn-lg col" id="buttonSearch"> Durata viaggio </button>				
					<button type="button" class="btn btn-lg col" id="buttonSearch"> Orario di partenza </button>				
					<button type="button" class="btn btn-lg col" id="buttonSearch"> Orario di arrivo </button>
					</div>
				</div>
			</div>
			<div class="row mt-5" style="margin-left:5%;">
				<div class="card mb-3" style="max-width: 95%; height:210px; margin:-1%;" id="cardStyle">
				  <div class="row">
				    <div class="col" style="margin-top:20px;">				    
				      <div class="card-body" style="margin-top:20px;">
				        <div class="row">
				        <div class="col" style="margin-left:20%; margin-top:1%;">
				        <h5 style="color:#FFCC00;">PARTENZA</h2>
				        <p style="color:#FFCC00;">05:00</p>
				        </div>
				        <div class="col">
				        <h5 style="color:#FFCC00; margin-top:20%">ORARIO</h2>
				        </div>
				        <div class="col">
				        <h5 style="color:#FFCC00; margin-top:1%;">ARRIVO</h2>
				        <p style="color:#FFCC00;">13:00</p>				        
				        </div>
				        </div>
				      </div>
				    </div>
				    <div class="col" style="margin-right:-30%; width:350px;">
				      <div class="card-body" style="margin-top:-3%;">
				      	<button type="button" class="btn row" id="buttonSearch" style=" height:190px; width:400px; margin-top:2%;">
				      	<h6>Acquista</h6>
				      	<h2 class="row" style="bacground-color:transparent; margin-left:25%; margin-top:10%;">20,00 EUR</h2>
				      	<p class="card-text" style="margin-top:10%;"><small class="text-muted">Tariffa singola</small></p>				      					      	
				      	</button>				      	 
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</div>			
	</form>	
  </body>
</html>