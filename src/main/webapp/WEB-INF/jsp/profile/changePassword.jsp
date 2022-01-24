<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script src="/js/changePasswordEmail.js"></script>
<form method="get" action="changePasswordForm" class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 col-xxl-9" id="change-password">
	<div class="list-group list-group-flush mt-5 col">		
		<div>
			<div class="row">
				<div class="col-md-12">
					<input type="password" id="oldPassword" name = "newPassword" placeholder="Old Password" required/>
					<input type="password" id="newPassword" name = "oldPassword" placeholder="New Password" required/>
					<input type="password" id="confirmPassword" placeholder="Confirm New Password" required/>
					<button type="submit" onclick="checkPassword()">Cambia</button>
				</div>
			</div>
		</div>
	</div>
</form>