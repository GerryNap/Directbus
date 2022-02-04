<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="it">

<head>
<c:if test="${user == null}">
	<c:redirect url="/login" />
</c:if>
<%@include file="includes/import.jsp"%>

<link href="css/login-register.css" rel="stylesheet" />

<title>MyProfile - DirectBus</title>
</head>
<body id="body">
	<%@include file="includes/navbar.jsp"%>
	<form method="get" action="myProfile" class="mx-auto">
	<header class="col-9 col-sm-10 col-md-10 col-lg-10 col-xl-10">
	<h1>IL TUO ACCOUNT</h1>
	</header>
		<c:choose>
			<c:when test="${userType == 'Client'}">
				<%@include file="profile/Client/newAccountClient.jsp"%>
				<%@include file="profile/Client/accountSummaryClient.jsp"%>
				<%@include file="profile/Client/travelHistory.jsp"%>
				<%@include file="profile/Client/reservation.jsp"%>
			</c:when>
			<c:when test="${userType == 'Agency'}">
				<%@include file="profile/Business/newAccountBuisness.jsp"%>
				<%@include file="profile/Business/accountSummaryAgency.jsp"%>
				<%@include file="profile/Business/activeRoutes.jsp"%>
				<%@include file="profile/Business/oldRoutes.jsp"%>
			</c:when>
		</c:choose>
		<section id="logout"style="margin-top:5%;margin-left:10%;margin-bottom:5%;">
				<button type ="button" style="font-size:100%;" onclick="window.location.href = '/logout'">ESCI</button>
		</section>
	</form>
</body>
</html>