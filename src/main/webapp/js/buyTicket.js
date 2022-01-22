$(document).ready(
	function() {
		const queryString = window.location.search;
		const urlParams = new URLSearchParams(queryString);
		const passeggeri = urlParams.get('passeggeri');
		const prezzoBiglietto = urlParams.get('prezzo');
		var prezzoTotale = 0.0;
		for (let i = 0; i < passeggeri; i++) {
			prezzoTotale = +prezzoBiglietto + prezzoTotale;
			//createRow("Nome", "Cognome", i);
			//createRow("Telefono", "Email", i);
		}
		creaRiepilogo(passeggeri, prezzoBiglietto);
		prezzo(prezzoTotale);
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

function prezzo(prezzoTotale) {
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
	if (cb.checked == true) {
		createElements();
	} else {
		console.log("No")
	}
}

function createElements() {
	//nome
	var mainRow = createMainRow();
	var mainColumn = createMainColumn();
	var columnSx = createColumnSx();
	var h5 = createH5();
	var row = createRow();
	var columnInput = createColumnInput();
	var input = createInput("nome", "Nome");
	columnInput.appendChild(input);
	row.appendChild(columnInput);
	columnSx.appendChild(h5);
	columnSx.appendChild(row);
	mainColumn.appendChild(columnSx);
	mainRow.appendChild(mainColumn);
	document.getElementById("register-form").appendChild(mainRow);
	
	
	//cognome
	var columnInput2 = createColumnInput();
	var input2 = createInput("cognome", "Cognome");
	columnInput2.appendChild(input2);
	row.appendChild(columnInput2);
	//numero di telefono
	var row2 = createRow();
	var columnInput3 = createColumnInput();
	var input3 = createInput("numeroTelefono", "Telefono");
	columnInput3.appendChild(input3);
	row2.appendChild(columnInput3);
	columnSx.appendChild(row2);
	//email
	var columnInput4 = createColumnInput();
	var input4 = createInput("email", "Email");
	columnInput4.appendChild(input4);
	row2.appendChild(columnInput4);
	columnSx.appendChild(row2);
}

function createMainRow() {
	var mainRow = document.createElement("div");
	var rowClassName = document.createAttribute("class"); rowClassName.value = "row";
	mainRow.setAttributeNode(rowClassName);
	return mainRow;
}

function createMainColumn() {
	var mainColumn = document.createElement("div");
	var columnClassName = document.createAttribute("class"); columnClassName.value = "col";
	mainColumn.setAttributeNode(columnClassName);
	return mainColumn;
}

function createColumnSx() {
	var columnSx = document.createElement("div");
	var columnClassName = document.createAttribute("class"); columnClassName.value = "col-sx";
	columnSx.setAttributeNode(columnClassName);
	return columnSx;
}

function createH5() {
	var h5 = document.createElement("h5");
	h5.innerHTML = "Passeggero";
	return h5;
}

function createRow() {
	var row = document.createElement("div");
	var rowClassName = document.createAttribute("class"); rowClassName.value = "row";
	row.setAttributeNode(rowClassName);
	return row;
}

function createColumnInput() {
	var column = document.createElement("div");
	var columnClassName = document.createAttribute("class"); columnClassName.value = "col-md";
	column.setAttributeNode(columnClassName);
	return column;
}

function createInput(id, placeholder) {
	var div = document.createElement("div");
	var divClassName = document.createAttribute("class"); divClassName.value = "form-floating mb-3";
	div.setAttributeNode(divClassName);
	var input = document.createElement("input");
	var inputClassName = document.createAttribute("class"); inputClassName.value = "form-control";
	var inputType = document.createAttribute("type"); inputType.value = "text";
	input.setAttributeNode(inputClassName);
	input.setAttributeNode(inputType);
	var inputId = document.createAttribute("id"); inputId.value = id;
	var inputPlaceholder = document.createAttribute("placeholder"); inputPlaceholder.value = placeholder;
	input.setAttributeNode(inputId);
	input.setAttributeNode(inputPlaceholder);
	var label = document.createElement("label");
	var forLabel = document.createAttribute("for"); forLabel.value = id;
	label.setAttributeNode(forLabel);
	label.innerText = placeholder;
	div.appendChild(input);
	div.appendChild(label);
	return div;
}






function createRow(campo1, campo2, index) {
	//h5
	index = index + 1;
	var row = document.createElement("div"); row.setAttribute("class", "row");
	var col1 = document.createElement("div"); col1.setAttribute("class", "col-md");
	var form1 = document.createElement("div"); form1.setAttribute("class", "form-floating mb-3");
	var input1 = document.createElement("input"); input1.setAttribute("class", "form-control"); input1.setAttribute("id", campo1); input1.setAttribute("placeholder", campo1);
	if (campo1 == "Telefono") {
		input1.setAttribute("type", "tel");
	}
	var label1 = document.createElement("label"); label1.setAttribute("for", campo1); label1.innerHTML = campo1;
	var col2 = document.createElement("div"); col2.setAttribute("class", "col-md");
	var form2 = document.createElement("div"); form2.setAttribute("class", "form-floating mb-3");
	var input2 = document.createElement("input"); input2.setAttribute("class", "form-control"); input2.setAttribute("id", campo2); input2.setAttribute("placeholder", campo2);
	if (campo2 == "Email") {
		input2.setAttribute("type", "email");
	}
	var label2 = document.createElement("label"); label2.setAttribute("for", campo2); label2.innerHTML = campo2;

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

