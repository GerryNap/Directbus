$(document).ready(
    function() {  
		$("#changePassword").hide();
		$("#activeRoutes").hide();
		$("#oldRoutes").hide();
})

function loadSummary() {
	$("#activeRoutes").hide();
	$("#oldRoutes").hide();
	$("#accountSummary").show();
	window.location.href='#accountSummary'
}

function loadActiveTrip(){
	$("#accountSummary").hide();
	$("#oldRoutes").hide();
	$("#activeRoutes").show();
	window.location.href='#activeRoutes';
	
	$.ajax({
		type: "POST",
		url: "getActiveRoutes",
		success: function() {
			$("#activeRoutes").load(document.URL+'  #activeRoutes');
		},
		error: function() {
			alert("Nessuna tratta attiva trovata", "primary")
		}
	});
}

function loadOldTrip(){
	$("#accountSummary").hide();
	$("#activeRoutes").hide();
	$("#oldRoutes").show();
	window.location.href='#oldRoutes';
	
	$.ajax({
		type: "POST",
		url: "getOldRoutes",
		success: function() {
			$("#oldRoutes").load(document.URL+'  #oldRoutes');
		},
		error: function() {
			alert("Nessuna tratta trovata", "primary")
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
