<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<nav class="navbar navbar-dark navbar-expand bg-black navigation-clean">
    <div class="container">
    	<a class="navbar-brand" href="/">DirectBus</a>
    	<button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"></button>
        <div class="collapse navbar-collapse" id="navcol-1">
        	<c:choose>
	        	<c:when test="${user == null}">
	        		<a class="btn btn-dark ms-auto" role="button" href="../login" style="background-color:transparent; border:none">Sign In</a>
	        	</c:when>
	        	<c:otherwise>
	        		<a class="btn btn-dark ms-auto" role="button" href="../myProfile" style="background-color:transparent; border:none">Account</a>
	        	</c:otherwise>
        	</c:choose>
        </div>
    </div> 
</nav>