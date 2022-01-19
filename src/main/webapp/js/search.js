$(document).ready(
    function() {
        $("#search-form").on("submit", function(event) {
            event.preventDefault();
            ajaxLoginPost();
        });

        function ajaxLoginPost() {
			console.log("entro");
			var route = {
				data: $("#dataAndata").val(),
				destinationS: $("#stazioneArrivo").val(),
				startS: $("#stazionePartenza").val(),
				nBiglietti: null,
				agency: null,
				time: null,
				startTime: null
			}
        	console.log("ok")
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "searchRoutes",
                data : JSON.stringify(route),
				success: function(data, status, xhr) {
					var routes = data;
					routes.forEach(element => console.log(element));
					console.log("OK");
					addElements(routes);
				},
				error: function(data, status, xhr) {
					console.log("no bueno");
				}
			});
        }
    }
)

function addElements(routes) {
	console.log(routes.length)
	for (let i = 0; i < routes.length; i++) {
		document.getElementById("firstContainer").appendChild(createFirstElement(routes[i]));
		document.getElementById("firstContainer").appendChild(createSecondElement(routes[i]));
	}
	for (let i = 0; i < routes.length; i++) {
		console.log("ggggggg");
		console.log(routes[i].startS);
	}
}



function createFirstElement(element) {
	//COLONNA
	var col = document.createElement("div");
	var classCol = document.createAttribute("class"); classCol.value = "col";
	col.setAttributeNode(classCol);
	//CARD-BODY
	var card = document.createElement("div");
	var classCard = document.createAttribute("class"); classCard.value = "card-body";
	card.setAttributeNode(classCard);
	//RIGA
	var row = document.createElement("div");
	var classRow = document.createAttribute("class"); classRow.value = "row";
	//COLONNA PORTANTE
	var colPortante = document.createElement("div");
	var classColPortante = document.createAttribute("class"); classColPortante.value = "col";
	//H5
	var h5 = document.createElement("h5");
	h5.innerHTML = "PARTENZA";
	//P
	var p = document.createElement("p");
	p.innerHTML = element.startTime;
	//AGGIUNTA
	colPortante.appendChild(h5);
	colPortante.appendChild(p);
	
	var colPortante2 = document.createElement("div");
	var classColPortante2 = document.createAttribute("class"); classColPortante2.value = "col";
	colPortante2.setAttributeNode(classColPortante2);
	var p2 = document.createElement("p");
	p2.innerHTML = "ORARIO";
	colPortante2.appendChild(p2);
	
	var colPortante3 = document.createElement("div");
	var classColPortante3 = document.createAttribute("class"); classColPortante3.value = "col";
	colPortante3.setAttributeNode(classColPortante3);
	var h5_2 = document.createElement("h5");
	h5_2.innerHTML = "ARRIVO";
	var p3 = document.createElement("p");
	p3.innerHTML = "1234:1234";
	colPortante3.appendChild(h5_2);
	colPortante3.appendChild(p3);
	
	row.appendChild(colPortante);
	row.appendChild(colPortante2);
	row.appendChild(colPortante3);
	
	card.appendChild(row);
	
	col.appendChild(card);
	return col;
}

function createSecondElement(element) {
	var col = document.createElement("div");
	var classCol = document.createAttribute("class"); classCol.value = "col";
	col.setAttributeNode(classCol);
	
	var card = document.createElement("div");
	var classCard = document.createAttribute("class"); classCard.value = "card-body";
	card.setAttributeNode(classCard);
	var button = document.createElement("button");
	var buttonType = document.createAttribute("type"); buttonType.value = "button";
	button.setAttributeNode(buttonType);
	var classButton = document.createAttribute("class"); classButton.value = "btn row";
	var idButton = document.createAttribute("id"); idButton.value = "buttonSearch";
	button.setAttributeNode(classButton);
	button.setAttributeNode(idButton);
	
	var h6 = document.createElement("h6");
	h6.innerHTML = "Acquista";
	
	var h2 = document.createElement("h2");
	var classH2 = document.createAttribute("class"); classH2.value = "row";
	h2.setAttributeNode(classH2);
	h2.innerHTML = "Prezzo elemento";
	
	var p = document.createElement("p");
	var classP = document.createAttribute("class"); classP.value = "card-text";
	p.setAttributeNode(classP);
	
	card.appendChild(button);
	card.appendChild(h6);
	card.appendChild(h2);
	card.appendChild(p);
	
	col.appendChild(card);
	
	return col;
}