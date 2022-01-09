<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
	<%@include file="includes/import.jsp" %>

    <title>DirectBus</title>
  </head>
  
  <body>
  	<%@include file="includes/header.jsp" %>
  	
    <header class="text-center text-white masthead" style="background: url(&quot;assets/img/hero-img.webp&quot;);background-size: cover;">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto position-relative">
                    <h1 style="color: black;" class="mb-5">Tranquilli arriverete in orario, non vendiamo biglietti di FEDERICO qui.
                        <br><br>Rispettiamo i nostri clienti.
                    </h1>
                </div>
                <div class="col-md-10 col-lg-8 col-xl-7 mx-auto position-relative">
                    <form class="container">
                        <div class="row justify-content-center">
                            <div class="col-9 col-md-6 mb-2 mb-md-0">
                                <label class="form-label">DA</label>
                                <input class="form-control form-control-lg" type="search">
                            </div>
                            <div class="col-9 col-md-6 mb-2 mb-md-0">
                                <label class="form-label">A</label>
                                <input class="form-control form-control-lg" type="search">
                            </div>
                            <div class="col-9 col-md-6 mb-2 mb-md-0">
                                <label class="form-label">ANDATA</label>
                                <input class="form-control form-control-lg" type="date">
                            </div>
                            <div class="col-9 col-md-6 mb-2 mb-md-0">
                                <label class="form-label">RITORNO</label>
                                <input class="form-control form-control-lg" type="date">
                            </div>
                            <div class="col-6 col-md-3 mb-2 mb-md-0">
                                <label class="form-label">POSTI</label>
                                <input class="form-control form-control-lg" type="number" min="1" max="4">
                            </div>
                        </div>
                        <button style="padding-top: 5px;;" type="submit" class="btn btn-dark">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </header>
  </body>
</html>