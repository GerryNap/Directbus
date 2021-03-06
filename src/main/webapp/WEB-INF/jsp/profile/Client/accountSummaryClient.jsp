<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<script src="/js/myProfileClient.js"></script>
<link href="css/accountSummaryClient.css" rel="stylesheet" />

<section  id="account-summary">
	<h1 style="margin: 70px 0px 0px 0px; text-align: center;">I MIEI DATI</h1>
	<div class="col" id="summary-col" style="margin-top: 50px;">
		<div class="row">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-9">
				<h5>NOME</h5>
			</div>
			<div id="nome" class="col-xl-5 col-lg-5 col-md-9 col-sm-9 col-9">
				<label>${user.firstName}</label>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-9">
				<h5>COGNOME</h5>
			</div>
			<div id="cognome" class="col-xl-5 col-lg-5 col-md-9 col-sm-9 col-9">
				<label>${user.lastName}</label>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-9">
				<h5>EMAIL</h5>
			</div>
			<div id="email" class="col-xl-5 col-lg-5 col-md-9 col-sm-9 col-9">
				<label>${user.email}</label>
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
				<button id="change-button-password" type="button"
					style="font-size: 13px; margin-top: 10%; margin-left: 0%;"
					class="btn" onclick="modifyPassword()">MODIFICA</button>
			</div>
			<div id="changePassword">
				<%@include file="../changePassword.jsp"%>
			</div>
		</div>
	</div>
</section>