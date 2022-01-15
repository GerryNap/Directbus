$(document).ready(
    function() {  
		$("#paymentData").hide();
})

function loadSummary() {
	$("#paymentData").hide();
	$("#accountSummary").show();
}

function loadTrip(){
	
}

function loadOldTrip(){
	
}

function loadPaymentData(){
	$("#accountSummary").hide();
	$("#paymentData").show();
}