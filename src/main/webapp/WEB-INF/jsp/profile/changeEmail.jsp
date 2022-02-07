<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script src="/js/changeEmail.js"></script>
<form id="changeEmailForm">
	<div class="list-group list-group-flush col">
		<div class="row mt-5">
			<input type="hidden" id="oldEmail" name="oldEmail" value="${user.email}" />
			<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mt-3">
				<input type="text" id="newEmail" name="newEmail" placeholder="New Email" required />
			</div>
			<div class="col-12 col-sm-8 col-md-8 col-lg-8 col-xl-8 mt-3">
				<input type="password" id="password" name="password" placeholder="Password" required
					style="border: 1px solid #171717; font-size: 100%; padding: 5px; border-radius: 5px;" />
			</div>
			<div class="col-12 col-sm-1 col-md-1 col-lg-1 col-xl-1 mt-3" style=" margin-left:6%;">
				<button id="change-button-email" type="button" class="btn"
					style="font-size: 13px;">Cambia</button>
			</div>
		</div>
	</div>
</form>