$(document).ready(
	function(){
		setMinDate();
		
		$("#searchForm").on("submit", function(event){
			event.preventDefault();

			if(checkStation())
				ajaxSearch();
		});
		
		function setMinDate(){
			let date = new Date();
			let year = date.getFullYear();
			let correctMonth = date.getMonth()+1
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
				success: function() {
					window.location.reload(true);	
				},
				error: function() {
					$("#cardTicket").hide();
					alert("Destinazione non trovata", "primary")
				}
			});
		}
	}
)