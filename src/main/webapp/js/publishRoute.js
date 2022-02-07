$(document).ready(
	function() {
		setMinDate();
		
		$("#register-form").on("submit", function(event) {
			event.preventDefault();
			if(checkStation() && checkDate());
				ajaxPublishRoute();
		});
		
		$("#startStation").on("keyup", function(event) {
			event.preventDefault();
			liveSearch("#startStation");
		});
		
		$("#endStation").on("keyup", function(event) {
			event.preventDefault();
			liveSearch("#endStation");
		});
	}
)

function setMinDate(){
	let today = new Date();
	let tomorrow = new Date(today);
	tomorrow.setDate(tomorrow.getDate() + 1);
	
	let year = tomorrow.getFullYear();
	let correctMonth = tomorrow.getMonth()+1;
	if(correctMonth < 10)
		var month = '0'+correctMonth;
	if(tomorrow.getDate() < 10)
		var day = '0'+ tomorrow.getDate();
	let minDate = year + '-' + month + '-' + day ;
	document.getElementById("startDate").setAttribute("min", minDate + "T00:00:00");
	document.getElementById("arrivalDate").setAttribute("min", minDate + "T00:00:00")
}
					
function alert(message, type) {
	var alertPlaceholder = document.getElementById('liveAlertPlaceholder');
	var wrapper = document.createElement('div');
	wrapper.innerHTML = '<div class="alert alert-' + type + ' alert-dismissible" role="alert">' + message + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
	alertPlaceholder.append(wrapper);
	
	$(".alert-dismissible").fadeTo(10000, 500).slideUp(500, function(){
		$(".alert-dismissible").alert("close");
	})
}

function checkStation(){
	if($("#startStation").val() === $("#endStation").val()){
		alert("Stazione di partenza e di arrivo non possono coinciderei", "warning");
		return false;
	}
	return true;
}

function checkDate(){
	if($("#startDate").val() === $("#arrivalDate").val()){
		alert("Data e ora di partenza e di arrivo non possono coincidere", "warning");
		return false;
	}
	
	let splitted1 = $("#startDate").val().split("T");
	let splitted2 = $("#arrivalDate").val().split("T");
	if(splitted1[0] === splitted2[0]){
		if(splitted2[1] <= splitted1[1]){
			alert("Inserisci un'ora o una data successiva a quella di partenza'", "primary");
			return false;
		}
	}
	
	return true;
}

function liveSearch(id){	
	let text = $(id).val();	
	$.ajax({
		type : "GET",
		url : "getStation",
        data : {"text":text},
        success : function(data) {
			$(id).autocomplete({
				delay: 0,
				autoFocus: true,
				source: data
			});
		}
	})
}
	
function ajaxPublishRoute(){
	var userData = {
		dataPartenza: $("#startDate").val(),
		destinationS: $("#endStation").val(),
		startS: $("#startStation").val(),
		nBiglietti: $("#Biglietti").val(),
		agency: document.getElementById("session").getAttribute("value"),
		dataArrivo: $("#arrivalDate").val(),
		price: $("#price").val()
	}
	
	$.ajax({
		type: "POST",
		contentType: "application/json",
		url: "doRoute",
		data: JSON.stringify(userData),
		success: function(){
					window.location.href = "/myProfile";
				 },
		error: function(){
					alert("Tratta già esistente", "warning");
			   }
	});
}