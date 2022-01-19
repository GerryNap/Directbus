<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 col-xxl-9" id="oldRoutes">
	<div class="list-group list-group-flush mt-5 col">
		<div id="gestioneAccount" class="list-group-item mt-3" style="background-color:transparent;">
			<h1 id="buttonProfile">Tratte</h1>
		</div>
		<div id="profilo" class="list-group-item mb-3" style="background-color:transparent;">
			<h2 id="buttonProfile">Vecchie tratte</h2>
		</div>
		<div>
			<div class="row">
				<div class="row g-0">					
					<div class="col-md-8">
						<div class="card" style="margin-left:5%;" id="cardStyle">
							<div style="margin:5%;">
							<h5 class="card-title" id="buttonProfile">Codice tratta</h5>
							<p class="card-text" id="buttonProfile">Stazione di arrivo:<label id="buttonProfile">...</label></p>
							<p class="card-text" id="buttonProfile">Stazione di partenza:<label id="buttonProfile">...</label></p>
							<p class="card-text" id="buttonProfile">Data:<label id="buttonProfile">...</label></p>
							<p class="card-text" id="buttonProfile"><span class="badge bg-danger text-white">Terminata</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>