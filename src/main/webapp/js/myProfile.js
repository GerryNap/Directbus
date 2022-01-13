$(document).ready(
    function() {
	 	$("#reservation").hide();
		$("#paymentData").hide();
		$("#travelHistory").hide();   
})

function loadSummary() {

	$("#accountSummary").show();
 	$("#reservation").hide();
	$("#paymentData").hide();
	$("#travelHistory").hide();
}

function loadReserveation(){
	$("#accountSummary").hide();
 	$("#reservation").show();
	$("#paymentData").hide();
	$("#travelHistory").hide();
}

function loadPaymentData(){
	$("#accountSummary").hide();
 	$("#reservation").hide();
	$("#paymentData").show();
	$("#travelHistory").hide();
}

function loadTravelHistory(){
	$("#accountSummary").hide();
 	$("#reservation").hide();
	$("#paymentData").hide();
	$("#travelHistory").show();
}

