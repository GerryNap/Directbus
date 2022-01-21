$(document).ready(
    function() {  
		$("#oldPassword").hide()
		$("#newPassword").hide()
		$("#paymentData").hide();
		$("#activeRoutes").hide();
		$("#oldRoutes").hide();
})

function loadSummary() {
	$("#paymentData").hide();
	$("#accountSummary").show();
	$("#activeRoutes").hide();
	$("#oldRoutes").hide();
}

function loadActiveTrip(){
	$("#accountSummary").hide();
	$("#paymentData").hide();
	$("#activeRoutes").show();
	$("#oldRoutes").hide();
}

function loadOldTrip(){
	$("#accountSummary").hide();
	$("#paymentData").hide();
	$("#activeRoutes").hide();
	$("#oldRoutes").show();
}

function loadPaymentData(){
	$("#accountSummary").hide();
	$("#paymentData").show();
	$("#activeRoutes").hide();
	$("#oldRoutes").hide();	
}
function modifyPassword(){
		$("#accountSummary").hide();
		$("#oldPassword").show()
		$("#newPassword").show()
	 	$("#reservation").hide();
		$("#paymentData").hide();
		$("#travelHistory").hide();
}
function modifyEmail(){
		$("#accountSummary").hide();
		$("#oldPassword").hide()
		$("#newPassword").show()
	 	$("#reservation").hide();
		$("#paymentData").hide();
		$("#travelHistory").hide();
}