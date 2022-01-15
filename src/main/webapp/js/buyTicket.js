
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

