$(document).ready(
    function() {
		$("#changePassword").hide();
	 	$("#reservation").hide();
		$("#travel-history").hide();  
	}
)

function loadSummary() {
 	$("#reservation").hide();
	$("#travel-history").hide();
	$("#account-summary").show();
	window.location.href='#account-summary';
}

function loadReserveation(){
	$("#travel-history").hide();
	$("#account-summary").hide();
 	$("#reservation").show();
	window.location.href='#reservation';
	
	$.ajax({
		type: "POST",
		url: "getReserveation",
		success: function() {
			$("#reservation").load(document.URL+'  #reservation');
		},
		error: function() {
			alert("Nessun biglietto attivo trovato", "primary")
		}
	});
}

function loadTravelHistory(){
	$("#account-summary").hide();
 	$("#reservation").hide();
	$("#travel-history").show();
	window.location.href='#travel-history';
	
	$.ajax({
		type: "POST",
		url: "getTravelHistory",
		success: function() {
			$("#travel-history").load(document.URL+'  #travel-history');
		},
		error: function() {
			alert("Nessun biglietto trovato", "primary")
		}
	});
}

var activePsw = false;

function modifyPassword(){
	if(!activePsw){
		$("#changePassword").show();
	}
	else{
		$("#changePassword").hide();
	}
	activePsw = !activePsw;
}
