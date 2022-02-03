<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<div class="row justify-content-center align-items-center">
		<c:forEach var="route" items="${routes}">
			<div class="card me-5 mt-3" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">${route.agency}</h5>
					<p class="card-text">${route.data}</p>
					<p class="card-text">stazione partenza - orario</p>
					<p class="card-text">stazione arrivo - orario</p>
					<a href="#" class="rounded-pill btn btn-primary">acquista</a>
				</div>
			</div>
		</c:forEach>
	</div>
</div>