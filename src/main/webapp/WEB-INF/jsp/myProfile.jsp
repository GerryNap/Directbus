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
	    <form method="get" action="myProfile" class="position-relative">
	    
			<div class="container mt-5 " id="firstContainer">
				<div class="row">						
					
				    <%@include file="profile/userCard.jsp"  %>
				    <%@include file="profile/accountSummary.jsp"  %>	  							  						  				 									
				</div>
			</div>	
		</form>	
  </body>
 </html>