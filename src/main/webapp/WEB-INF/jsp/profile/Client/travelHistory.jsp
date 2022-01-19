<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 col-xxl-9" id="travelHistory">
	<div class="list-group list-group-flush mt-5 col">
		<div id="gestioneAccount" class="list-group-item mt-3"
			style="background-color: transparent;">
			<h1 id="buttonProfile">Prenotazioni</h1>
		</div>
		<div id="profilo" class="list-group-item mb-3"
			style="background-color: transparent;">
			<h2 id="buttonProfile">Le mie prenotazioni</h2>
		</div>
		<div>
			<div class="row">
				<div class="col-md-8">
					<div class="card mb-3" id="cardStyle">
						<div class="card-body">
							<h5 class="card-title" id="buttonProfile">Nome agenzia</h5>
							<p class="card-text" id="buttonProfile">Andata:<label>...</label></p>
							<p class="card-text" id="buttonProfile">Ritorno:<label>...</label></p>
							<p class="card-text" id="buttonProfile">
								<span class="badge bg-success text-white">Terminato</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>