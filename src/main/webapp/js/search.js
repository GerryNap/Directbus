$(document).ready(
    function() {
        $("#search-form").on("submit", function(event) {
            event.preventDefault();
            ajaxLoginPost();
        });

        function ajaxLoginPost() {
			var route = {
				data: $("#dataAndata").val(),
				destinationS: $("#stazioneArrivo").val(),
				startS: $("#stazionePartenza").val(),
				nBiglietti: null,
				agency: null,
				time: null,
				startTime: null
			}
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "searchRoutes",
                data : JSON.stringify(route),
				success: function(data, status, xhr) {
					var routes = data;
					routes.forEach(element => console.log(element));
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
	for (let i = 0; i < routes.length; i++) {
		document.getElementById("firstContainer").appendChild(createFirstElement(routes[i]));
	}
}

function getTime() {
	
}

function createFirstElement(element) {
	var time = getTime(element.startTime, element.time);
	
	var rowPrincipale = document.createElement("div");
	var classRowPrincipale = document.createAttribute("class"); classRowPrincipale.value = "row mt-5 col-sm-11 col-md-11 col-lg11 col-xl-11 mx-auto";
	rowPrincipale.setAttributeNode(classRowPrincipale);
	
	var cardPrincipale = document.createElement("div");
	var classCardPrincipale = document.createAttribute("class"); classCardPrincipale.value = "card-mb3";
	var idCardPrincipale = document.createAttribute("id"); idCardPrincipale.value = "cardStyle";
	cardPrincipale.setAttributeNode(classCardPrincipale);
	cardPrincipale.setAttributeNode(idCardPrincipale);
	var rowSecondaria = document.createElement("div");
	var classRowSecondaria = document.createAttribute("class"); classRowSecondaria.value = "row";
	rowSecondaria.setAttributeNode(classRowSecondaria);

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
	var classRow = document.createAttribute("class"); classRow.value = "mt-9 col-sm-9 col-md-9 col-lg-10 col-xl-9 mx-auto row";
	row.setAttributeNode(classRow);
	row.style.marginTop = "6%";
	//COLONNA PORTANTE
	var colPortante = document.createElement("div");
	var classColPortante = document.createAttribute("class"); classColPortante.value = "col";
	colPortante.setAttributeNode(classColPortante);
	//H5
	var h5 = document.createElement("h5");
	h5.innerHTML = "PARTENZA";
	h5.style.color = "#FFCC00";
	var stazionePartenza = document.createElement("p");
	stazionePartenza.innerHTML = element.startS;
	stazionePartenza.style.color = "#FFCC00";
	//P
	var p = document.createElement("p");
	p.innerHTML = "05:00";
	p.style.color = "#FFCC00";
	//AGGIUNTA
	colPortante.appendChild(h5);
	colPortante.appendChild(stazionePartenza);
	colPortante.appendChild(p);
	
	var colPortante2 = document.createElement("div");
	var classColPortante2 = document.createAttribute("class"); classColPortante2.value = "col";
	colPortante2.setAttributeNode(classColPortante2);
	var p2 = document.createElement("h5");
	p2.innerHTML = "ORARIO";
	p2.style.color = "#FFCC00";
	colPortante2.appendChild(p2);
	
	var colPortante3 = document.createElement("div");
	var classColPortante3 = document.createAttribute("class"); classColPortante3.value = "col";
	colPortante3.setAttributeNode(classColPortante3);
	var h5_2 = document.createElement("h5");
	h5_2.style.color = "#FFCC00";
	h5_2.innerHTML = "ARRIVO";
	var stazioneArrivo = document.createElement("p");
	stazioneArrivo.innerHTML = element.destinationS;
	stazioneArrivo.style.color = "#FFCC00";
	var p3 = document.createElement("p");
	p3.innerHTML = "13:00";
	p3.style.color = "#FFCC00";
	colPortante3.appendChild(h5_2);
	colPortante3.appendChild(stazioneArrivo);
	colPortante3.appendChild(p3);
	
	row.appendChild(colPortante);
	row.appendChild(colPortante2);
	row.appendChild(colPortante3);
	
	card.appendChild(row);

	col.appendChild(card);
	rowSecondaria.appendChild(col);
	var secondElement = createSecondElement(element);
	rowSecondaria.appendChild(secondElement);
	cardPrincipale.appendChild(rowSecondaria);
	rowPrincipale.appendChild(cardPrincipale);
	
	return rowPrincipale;
}


/*
<div class="col">				    
  <div class="card-body">
    <div class="mt-9 col-sm-9 col-md-9 col-lg-10 col-xl-9 mx-auto row" style="margin-top:10%;">
    <div class="col">
    <h5 style="color:#FFCC00;">PARTENZA</h5>
    <p style="color:#FFCC00;">05:00</p>
    </div>
    <div class="col">
    <h5 style="color:#FFCC00;">ORARIO</h5>
    </div>
    <div class="col">
    <h5 style="color:#FFCC00;">ARRIVO</h5>
    <p style="color:#FFCC00;">13:00</p>				        
    </div>
    </div>
  </div>
</div>
*/

function createSecondElement(element) {
	var col = document.createElement("div");
	var classCol = document.createAttribute("class"); classCol.value = "col-sm-10 col-md-10 col-lg-6 col-xl-5 mx-auto";
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
	button.style.height = "190px"; button.style.width = "400px";
	var h6 = document.createElement("h6");
	h6.innerHTML = "Acquista";

	var h2 = document.createElement("h2");
	var classH2 = document.createAttribute("class"); classH2.value = "row";
	h2.setAttributeNode(classH2);
	h2.innerHTML = "20,00 EUR";
	h2.style.backgroundColor = "transparent"; h2.style.marginLeft = "25%";
	var p = document.createElement("p");
	var classP = document.createAttribute("class"); classP.value = "card-text";
	p.setAttributeNode(classP);
	var small = document.createElement("small");
	var classSmall = document.createAttribute("class"); classSmall.value = "text-muted";
	small.setAttributeNode(classSmall);
	small.innerHTML = "Tariffa singola";
	p.appendChild(small);
	button.appendChild(h6);
	button.appendChild(h2);
	button.appendChild(p);
	
	card.appendChild(button);
	col.appendChild(card);
	
	return col;
}
