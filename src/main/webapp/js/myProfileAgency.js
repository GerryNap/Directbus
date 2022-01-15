$(document).ready(
    function() {  
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