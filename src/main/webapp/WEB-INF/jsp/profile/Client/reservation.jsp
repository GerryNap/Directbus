<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 col-xxl-9" id="reservation">							   	
	<div class="list-group list-group-flush mt-5 col">
		<div id="gestioneAccount" class="list-group-item mt-3" style="background-color:transparent;">						
			<h1 id="buttonProfile">Prenotazioni</h1>
		</div>
			<div id="profilo" class="list-group-item mb-3" style="background-color:transparent;">
				<h2 id="buttonProfile">Le mie prenotazioni</h2>
			</div>					    
		<div>
			<div class="row">
				<div id="cardStyle" class="card mb-3" style="max-width: 540px; margin-left:5%;">
					<div class="row g-0">
					    <div class="col-md-4" style="margin-top:7%;">								    	
					      	<img id="circular-square" src="images/login_logo.png" class="img-fluid rounded-start" alt="">								      	
						</div>
						<div class="col-md-8">
							<div class="card-body">
						        <h5 class="card-title" id="buttonProfile">Nome agenzia</h5>
						        <p class="card-text" id="buttonProfile">Andata: ...</p>
						        <p class="card-text" id="buttonProfile">Ritorno: ...</p> 
								<p class="card-text" id="buttonProfile"><span class="badge bg-warning text-dark">In corso</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>							
		</div>	
	</div>					   							  							  						  				 									
</div>