<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="/js/myProfileAgency.js"></script>
<link href="css/accountSummaryAgency.css" rel="stylesheet" />

<section class="col-9 col-sm-10 col-md-10 col-lg-10 col-xl-10" id="accountSummary">
	<h1  style="margin-left:50%;">I MIEI DATI</h1>
	<div class="col" id="summary-col">
		<div class="row">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-9">
				<h5>NOME</h5>
			</div>
			<div id="nome" class="col-xl-5 col-lg-5 col-md-9 col-sm-9 col-9">
				<label>${user.name}</label>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-9">
				<h5>INDIRIZZO</h5>
			</div>
			<div id="cognome" class="col-xl-5 col-lg-5 col-md-9 col-sm-9 col-9">
				<label>${user.address}</label>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-9">
				<h5>P.IVA</h5>
			</div>
			<div id="cognome" class="col-xl-5 col-lg-5 col-md-9 col-sm-9 col-9">
				<label>${user.pIva}</label>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-9">
				<h5>EMAIL</h5>
			</div>
			<div id="email" class="col-xl-5 col-lg-5 col-md-9 col-sm-9 col-9">
				<label>${user.email}</label>
			</div>
			<div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
				<button id="sendButton" type="submit"
					style="font-size: 13px; margin-top: 10%; margin-left: 0%;"
					class="btn" onclick="modifyEmail()">Modifica</button>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-9">
				<h5>PASSWORD</h5>
			</div>
			<div id="password" class="col-xl-5 col-lg-5 col-md-9 col-sm-9 col-9">
				<label>---</label>
			</div>
			<div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
				<button id="sendButton" type="submit"
					style="font-size: 13px; margin-top: 10%; margin-left: 0%;"
					class="btn" onclick="modifyPassword()">Modifica</button>
			</div>
			<div id="changePassword">
				<%@include file="../changePassword.jsp"%>
			</div>
			<div id="changeEmail">
				<%@include file="../changeEmail.jsp"%>
			</div>
		</div>
	</div>
</section>