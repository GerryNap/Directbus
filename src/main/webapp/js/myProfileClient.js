$(document).ready(
    function() {
		$("#oldPassword").hide()
		$("#newPassword").hide()
	 	$("#reservation").hide();
		$("#paymentData").hide();
		$("#travelHistory").hide();   
})

function loadSummary() {

	$("#accountSummary").show();
 	$("#reservation").hide();
	$("#paymentData").hide();
	$("#travelHistory").hide();
	$("#oldPassword").hide()
	$("#newPassword").hide()
}

function loadReserveation(){
	$("#accountSummary").hide();
 	$("#reservation").show();
	$("#paymentData").hide();
	$("#travelHistory").hide();
	$("#oldPassword").hide()
	$("#newPassword").hide()
}

function loadPaymentData(){
	$("#accountSummary").hide();
 	$("#reservation").hide();
	$("#paymentData").show();
	$("#travelHistory").hide();
	$("#oldPassword").hide()
	$("#newPassword").hide()
}

function loadTravelHistory(){
	$("#accountSummary").hide();
 	$("#reservation").hide();
	$("#paymentData").hide();
	$("#travelHistory").show();
	$("#oldPassword").hide()
	$("#newPassword").hide()
}

function modifyPassword(){
		$("#accountSummary").show();
		$("#oldPassword").show()
		$("#newPassword").show()
	 	$("#reservation").hide();
		$("#paymentData").hide();
		$("#travelHistory").hide();
		
}
function modifyEmail(){
		$("#accountSummary").show();
		$("#oldPassword").hide()
		$("#newPassword").show()
	 	$("#reservation").hide();
		$("#paymentData").hide();
		$("#travelHistory").hide();
}
