$(document).ready(
	function(){
		setMinDate();
		disableButtons();
		$("cardTicket").hide();
		
		$("#startStation").on("keyup", function(event) {
			event.preventDefault();
			let text = $("#startStation").val();
				
			$.ajax({
				type : "GET",
				url : "getStation",
		        data : {"text":text},
		        success : function(data) {
					liveSearchA(data);
				}
			})
		})
		
		$("#endStation").on("keyup", function(event) {
			event.preventDefault();
			let text = $("#endStation").val();
				
			$.ajax({
				type : "GET",
				url : "getStation",
		        data : {"text":text},
		        success: function(data) {
					liveSearchR(data);
				}
			})
		})
		
		$("#searchForm").on("submit", function(event){
			event.preventDefault();

			if(checkStation())
				ajaxSearch();
		});
	}
)
		
function setMinDate(){
	let date = new Date();
	let year = date.getFullYear();
	let correctMonth = date.getMonth()+1;
	if(correctMonth < 10)
		var month = '0'+correctMonth;
	if(date.getDate() < 10)
		var day = '0'+date.getDate();
	let today = year + '-' + month + '-' + day;
	document.getElementById("date").setAttribute("min", today);
}
					
function alert(message, type) {
	var alertPlaceholder = document.getElementById('liveAlertPlaceholder');
	var wrapper = document.createElement('div');
	wrapper.innerHTML = '<div class="alert alert-' + type + ' alert-dismissible" role="alert">' + message + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
	alertPlaceholder.append(wrapper);
}

function liveSearchA(stations) {
	$("#startStation").autocomplete({
		delay: 0,
		autoFocus: true,
		source: stations
	});
}

function liveSearchR(stations) {
	$("#endStation").autocomplete({
		delay: 0,
		autoFocus: true,
		source: stations
	});
}

function checkStation(){
	if($("#startStation").val() === $("#endStation").val()){
		alert('Stazione di partenza e di arrivo non possono essere uguali', 'warning');
		return false;
	}
	return true;
}

var routes;
var orderedRoutes;

function enableButtons(){
	document.getElementById("orderByPrice").disabled = false;
	document.getElementById("orderByData").disabled = false;
	document.getElementById("orderByDuration").disabled = false;
	if($("#date").val() !== "")
		document.getElementById("orderByTime").disabled = false;
}

function disableButtons(){
	document.getElementsById("orderByPrice").disable = true;
	document.getElementById("orderByData").disable = true;
	document.getElementById("orderByDuration").disable = true;
	document.getElementById("orderByTime").disable = true;
}

function reload(){
	$("#cardTicket").load(document.URL+"  #cardTicket");
	$("#cardTicket").show();
}
		
function ajaxSearch(){
	var route = {
		dataPartenza: $("#date").val(),
		destinationS: $("#endStation").val(),
		startS: $("#startStation").val(),
		nBiglietti: $("#passengers").val(),
		agency: null,
		departureTime: null,
		price: null,
		dataArrivo: null,
		arrivalTime: null
	}
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "searchRoutes",
        data : JSON.stringify(route),
		success: function() {
			reload();
			enableButtons();
		},
		error: function() {
			$("#cardTicket").hide();
			disableButtons();
			alert("Destinazione non trovata", "primary")
		}
	});
}

function sort(sortUrl){
	$.ajax({
		type: "POST",
		url: sortUrl,
		success: function(){
			reload();
		}
	});
}














