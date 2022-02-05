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
			color: 'blue'
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
			window.alert("Pagamento avvenuto con successo");
		}, onCancel: function() {
			window.alert("Pagamento rifiutato");
		}
	}).render('#paypal-button-container');
}

function addTicket(url){
	var ticket = {
		routeCod : url.get("codice"),
		clientEmail : $("#sessionEmail").val()
	};
	console.log(ticket.routeCode);
        
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