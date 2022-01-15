<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<div class="col" style="width:5%; margin-top:7%;" id="oldRoutes">
	<div class="list-group list-group-flush mt-5 col">
		<div id="gestioneAccount" class="list-group-item mt-3" style="background-color:transparent;">
			<h1 id="buttonProfile">Tratte</h1>
		</div>
		<div id="profilo" class="list-group-item mb-3" style="background-color:transparent;">
			<h2 id="buttonProfile">Tratte attive</h2>
		</div>
		<div>
			<div class="row">
				<div class="row g-0">					
					<div class="col-md-8">
						<div class="card" style="margin-left:5%;" id="cardStyle">
							<div style="margin:5%;">
							<h5 class="card-title" id="buttonProfile">Codice tratta</h5>
							<p class="card-text" id="buttonProfile">Stazione di arrivo:...</p>
							<p class="card-text" id="buttonProfile">Stazione di partenza:...</p>
							<p class="card-text" id="buttonProfile">Data:...</p>
							<p class="card-text" id="buttonProfile"><span class="badge bg-danger text-white">Terminata</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>