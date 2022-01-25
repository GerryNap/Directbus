$(document).ready(
	function() {
		$("#nascosto").hide();
		$("#nascosto2").hide();
		$("#idPasseggero").hide();
		const queryString = window.location.search;
		const urlParams = new URLSearchParams(queryString);
		const passeggeri = urlParams.get('passeggeri');
		const prezzoBiglietto = urlParams.get('prezzo');
		
		for (let i = 1; i < passeggeri; i++) {
			var h5 = document.createElement("h5"); h5.innerHTML = "Passeggero " +(i+1);
			document.getElementById("colonnaSinistra").appendChild(h5);
			createRow("Nome", "Cognome");
			createRow("Telefono", "Email");
		}
		creaRiepilogo(passeggeri, prezzoBiglietto);
		prezzo(prezzoBiglietto, passeggeri);
	}
)

function creaRiepilogo(passeggeri, prezzoBiglietto) {
	for (let i = 0; i < passeggeri; i++) {
		//Passeggero
		var row = document.createElement("div"); row.setAttribute("class", "row");
		var col = document.createElement("div"); col.setAttribute("class", "col");
		var index = i + 1;
		var label = document.createElement("label"); label.innerHTML = "Passeggero " + index;
		col.appendChild(label);
		row.appendChild(col);
		
		//Prezzo
		var col2 = document.createElement("div"); col2.setAttribute("class", "col");
		var label2 = document.createElement("label"); label2.innerHTML = prezzoBiglietto + " EUR";
		
		col2.appendChild(label2);
		row.appendChild(col2);
		document.getElementById("containerPasseggeri").appendChild(row);
	}
}

function prezzo(prezzoBiglietto, passeggeri) {
	var prezzoTotale = 0.0;
	for (let i = 0; i < passeggeri; i++) {
		prezzoTotale += +prezzoBiglietto;
	}
	
	var hr = document.createElement("hr"); hr.style = "color: #FFCC00";
	var row = document.createElement("div"); row.setAttribute("class", "row");
	var col1 = document.createElement("div"); col1.setAttribute("class", "col");
	var label1 = document.createElement("label"); label1.innerHTML = "Totale:";
	var col2 = document.createElement("div"); col2.setAttribute("class", "col");
	var label2 = document.createElement("label"); label2.innerHTML = prezzoTotale + " EUR";
	
	col1.appendChild(label1);
	col2.appendChild(label2);
	
	row.appendChild(col1);
	row.appendChild(col2);
	document.getElementById("containerPasseggeri").appendChild(hr);
	document.getElementById("containerPasseggeri").appendChild(row);
	
}

function checkMe() {
	var cb = document.getElementById("acquirente");
	var email = document.getElementById("sessionEmail");
	var nome = document.getElementById("sessionName");
	var cognome = document.getElementById("sessionCognome");
	if (cb.checked == false) {
		//createRow("Nome", "Cognome");
		//createRow("Telefono", "Email");
		$("#nascosto").show();
		$("#nascosto2").show();
		$("#idPasseggero").show();
	} else {
		$("#nascosto").hide();
		$("#nascosto2").hide();
		$("#idPasseggero").hide();
	}
}

function createRow(placeholder1, placeholder2) {
	var row = document.createElement("div"); row.setAttribute("class", "row");
	var col1 = document.createElement("div"); col1.setAttribute("class", "col-md");
	var form1 = document.createElement("div"); form1.setAttribute("class", "form-floating mb-3");
	var input1 = document.createElement("input"); input1.setAttribute("class", "form-control"); input1.setAttribute("id", placeholder1); input1.setAttribute("placeholder", placeholder1);

	
	var label1 = document.createElement("label"); label1.setAttribute("for", placeholder1); label1.innerHTML = placeholder1;
	var col2 = document.createElement("div"); col2.setAttribute("class", "col-md");
	var form2 = document.createElement("div"); form2.setAttribute("class", "form-floating mb-3");
	var input2 = document.createElement("input"); input2.setAttribute("class", "form-control"); input2.setAttribute("id", placeholder2); input2.setAttribute("placeholder", placeholder2);

	
	if (placeholder2 == "Email") {
		input2.setAttribute("type", "email");
	}
	var label2 = document.createElement("label"); label2.setAttribute("for", placeholder2); label2.innerHTML = placeholder2;

	form1.appendChild(input1);
	form1.appendChild(label1);
	col1.appendChild(form1);
	
	form2.appendChild(input2);
	form2.append(label2);
	col2.appendChild(form2);
	
	row.appendChild(col1);
	row.appendChild(col2);
	
	document.getElementById("colonnaSinistra").appendChild(row);
}

