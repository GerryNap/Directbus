$(document).ready(
    function() {
		$("#changeEmail").hide();
		$("#changePassword").hide();
	 	$("#reservation").hide();
		$("#travelHistory").hide();  
	}
)

function loadSummary() {
 	$("#reservation").hide();
	$("#travelHistory").hide();
	$("#accountSummary").show();
}

function loadReserveation(){
	$("#travelHistory").hide();
	$("#accountSummary").hide();
 	$("#reservation").show();
}

function loadTravelHistory(){
	$("#accountSummary").hide();
 	$("#reservation").hide();
	$("#travelHistory").show();
}

var activePsw = false;
var activeEmail = false;

function modifyPassword(){
	if(!activePsw){
		$("#changeEmail").hide();
		$("#changePassword").show();
	}
	else{
		$("#changeEmail").hide();
		$("#changePassword").hide();
	}
	activeEmail = false;
	activePsw = !activePsw;
}

function modifyEmail(){
	if(!activeEmail){
		$("#changePassword").hide();
		$("#changeEmail").show();
	}
	else{
		$("#changePassword").hide();
		$("#changeEmail").hide();
	}
	activePsw = false;
	activeEmail = !activeEmail;	
}
