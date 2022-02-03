$(document).ready(
	function(){
		$("#search").on("click", function(event){
			event.preventDefault();
			console.log($("#endStation").val());
			ajaxSearch();
		});
		
		function ajaxSearch(){
			var route = {
				data: $("#date").val(),
				destinationS: $("#endStation").val(),
				startS: $("#startStation").val(),
				nBiglietti: $("#passengers").val(),
				agency: null,
				time: null,
				price: null
			}
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "searchRoutes",
                data : JSON.stringify(route),
				success: function(data) {
					console.log(data);
					$('#cardTicket').load("search/printTicket.jsp");
				},
				error: function(data) {
					console.log(data);
				}
			});
		}
	}
)