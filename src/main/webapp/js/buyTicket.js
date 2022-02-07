$(document).ready(
	function() {
		$("#nascosto").hide();
		$("#nascosto2").hide();
		$("#idPasseggero").hide();
		const queryString = window.location.search;
		const urlParams = new URLSearchParams(queryString);
		const passeggeri = urlParams.get('passengers');
		const prezzoBiglietto = urlParams.get('price');

		
		var prezzo = prezzoTotale(passeggeri, prezzoBiglietto);
		generatePayment(prezzo, urlParams);
		for (let i = 2; i <= passeggeri; i++) {
			var h5 = document.getElementById("passeggero"+i);
			h5.innerHTML = "Passeggero " + i;
		}
		
		//RIEPILOGO ORDINE
		for (let i = 1; i <=passeggeri; i++) {
			var label = document.getElementById("Passeggero" + i);
			label.innerHTML = "Passeggero " + i;
		}
	}
)

function alert(message) {
	var alertPlaceholder = document.getElementById('liveAlertPlaceholder');
	var wrapper = document.createElement('div');
	wrapper.innerHTML = '<div class="alert alert-warning alert-dismissible" role="alert">' + message + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
	alertPlaceholder.append(wrapper);
	
	$(".alert-dismissible").fadeTo(10000, 500).slideUp(500, function(){
		$(".alert-dismissible").alert("close");
	})
}

function prezzoTotale(passeggeri, prezzoBiglietto) {
	var prezzoTotale = 0.0;
	for (let i = 0; i < passeggeri; i++) {
		prezzoTotale = (+prezzoTotale + +prezzoBiglietto);
	}
	
	document.getElementById("prezzoTotale").innerHTML = prezzoTotale + " EUR";
	return prezzoTotale;
}

function generatePayment(value, url) {
	paypal.Buttons({
		style: {
			layout: 'horizontal',
			color: 'gold'
		},
		createOrder: function(data, actions) {
	      return actions.order.create({
	        purchase_units: [{
	          amount: {
	            value: value
	          }
	        }]
	      });
	    }, onApprove: function() {
			addTicket(url);
			alert("Pagamento avvenuto con successo");
		}, onCancel: function() {
			alert("Pagamento rifiutato");
		}
	}).render('#paypal-button-container');
}

function addTicket(url){
	var ticket = {
		routeCod : url.get("codice"),
		clientEmail : $("#sessionEmail").val()
	};
        
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "addTicket",
        data : JSON.stringify(ticket)
	});
}

function checkMe() {
	var cb = document.getElementById("acquirente");

	if (cb.checked == false) {
		$("#nascosto").show();
		$("#nascosto2").show();
		$("#idPasseggero").show();
	} else {
		$("#nascosto").hide();
		$("#nascosto2").hide();
		$("#idPasseggero").hide();
	}
}