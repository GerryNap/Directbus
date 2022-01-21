<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 col-xxl-9" id="accountSummary">
	<div class="list-group list-group-flush">
		<div id="gestioneAccount" class="list-group-item mt-3"
			style="background-color: transparent;">
			<h1 id="buttonProfile">Riepilogo dell'account</h1>
		</div>
		<div id="profilo" class="list-group-item mb-3"
			style="background-color: transparent;">
			<h2 id="buttonProfile">Profilo</h2>
		</div>
		<div style="margin-left: 2%;">
			<div class="row">
				<div class="list-group-item col"
					style="background-color: transparent;">
					<h5 id="buttonProfile">Nome</h5>
				</div>
				<div id="nome" class="list-group-item col"
					style="background-color: transparent;">
					<label id="buttonProfile">${user.firstName}</label>
				</div>
				<div class="list-group-item col"
					style="background-color: transparent;">
					<br>
				</div>
			</div>
			<div class="row">
				<div class="list-group-item col"
					style="background-color: transparent;">
					<h5 id="buttonProfile">Cognome</h5>
				</div>
				<div id="cognome" class="list-group-item col"
					style="background-color: transparent;">
					<label id="buttonProfile">${user.lastName}</label>
				</div>
				<div class="list-group-item col"
					style="background-color: transparent;">
					<br>
				</div>
			</div>
			<div class="row">
				<div class="list-group-item col"
					style="background-color: transparent;">
					<h5 id="buttonProfile">Email</h5>
				</div>
				<div id="email" class="list-group-item col"
					style="background-color: transparent;">
					<label id="buttonProfile">${user.email}</label>
				</div>
				<div class="list-group-item col"
					style="background-color: transparent;">
					<button id="sendButton" type="button" style="font-size: 13px;"
						class="btn">Modifica</button>
				</div>
			</div>
			<div class="row">
				<div class="list-group-item col"
					style="background-color: transparent;">
					<h5 id="buttonProfile">Password</h5>
				</div>
				<div id="password" class="list-group-item col"
					style="background-color: transparent;">
					<label id="buttonProfile">---</label>
				</div>
				<div class="list-group-item col"
					style="background-color: transparent;">
					<button id="sendButton" type="button" style="font-size: 13px;"
						class="btn">Modifica</button>
				</div>
				<div class="list-group-item row"style="background-color: transparent; margin-top:2%;">
					<input type="text" id="oldPassword"/>
					<input type="text" id="newPassword"/>
				</div>
			</div>
		</div>
	</div>
</div>