<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
<%
    session=request.getSession(false);
    if(session.getAttribute("user")==null)
        response.sendRedirect("/");
%>
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
					<c:choose>
			        	<c:when test="${userType == 'Client'}">
				    		<%@include file="profile/userClientCard.jsp"%>
			        		<%@include file="profile/accountSummaryClient.jsp"%>			
						    <%@include file="profile/travelHistory.jsp"%>
						    <%@include file="profile/reservation.jsp"%>	
			        	</c:when>
			        	<c:when test="${userType == 'Agency'}">
				    		<%@include file="profile/userAgencyCard.jsp"%>
			        		<%@include file="profile/accountSummaryAgency.jsp"%>
			        		<%@include file="profile/activeRoutes.jsp"%>
			        		<%@include file="profile/oldRoutes.jsp"%>
			        	</c:when>
		        	</c:choose>		
					<%@include file="profile/paymentData.jsp"%>		  						  				 									
				</div>
			</div>	
		</form>	
  </body>
 </html>