$(document).ready(
    function() {
		$("#changeEmail").hide();
		$("#changePassword").hide();
	 	$("#reservation").hide();
		$("#travel-history").hide();  
	}
)

function loadSummary() {
 	$("#reservation").hide();
	$("#travel-history").hide();
	$("#account-summary").show();
	window.location.href='#account-summary'
}

function loadReserveation(){
	$("#travel-history").hide();
	$("#account-summary").hide();
 	$("#reservation").show();
	window.location.href='#reservation'
}

function loadTravelHistory(){
	$("#account-summary").hide();
 	$("#reservation").hide();
	$("#travel-history").show();
	window.location.href='#travel-history'
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
