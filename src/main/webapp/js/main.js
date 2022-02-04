$(document).ready(
	function(){
		$("#search").on("click", function(event){
			event.preventDefault();

			if(checkStation())
				ajaxSearch();
		});
					
		function alert(message, type) {
			var alertPlaceholder = document.getElementById('liveAlertPlaceholder');
			var wrapper = document.createElement('div');
			wrapper.innerHTML = '<div class="alert alert-' + type + ' alert-dismissible" role="alert">' + message + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
			alertPlaceholder.append(wrapper);
		}
		
		function checkStation(){
			if($("#startStation").val() === $("#endStation").val()){
				alert('Stazione di partenza e di arrivo non possono essere uguali', 'warning');
				return false;
			}
			return true;
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
				success: function(data) {
					console.log(data);
					window.location.reload(true);
					
				},
				error: function(data) {
					console.log(data);
					alert("Destinazione non trovata", "primary")
				}
			});
		}
	}
)