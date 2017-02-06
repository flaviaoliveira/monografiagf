var anos = [2010,2011,2012,2013,2014,2015,2016,2017];
var lavouras = {"valores": [100,200,300,400], "campos": ["campo1", "campo2", "campo3", "campo4"]};
var lavouras2 = {"valores": [321,131,151,332], "campos": ["campoA", "campoB", "campoC", "campoD"]};


function loadPage() {
	
	buildGraph();
	buildList();
}

function buildGraph(){

	$("#graph").empty();

	var bar   = lavouras.valores;
	var ticks = lavouras.campos;
	var color = ['#FF0000']

	var formatString = "%'d";     
	var divName = "graph";

	graphBar(bar, ticks, color, divName, formatString, openModal);

}

function buildList(){
	var lista = document.getElementById("lavouraInforma");

	$("#lavouraInforma").empty();
	console.log(lista);
	var total = document.createElement("li");
	total.setAttribute("class", "list-group-item");
	total.appendChild(document.createTextNode("Total de café colhido:"));


	var price = document.createElement("spam");
	price.setAttribute("class", "pull-right");
	price.appendChild(document.createTextNode("10000"));

	total.appendChild(price);
		console.log(total);
	lista.appendChild(total);
			console.log(lista);
	var total = document.createElement("li");
	total.setAttribute("class", "list-group-item");
	total.appendChild(document.createTextNode("Total de sacas vendidas:"));

	var price = document.createElement("spam");
	price.setAttribute("class", "pull-right");
	price.appendChild(document.createTextNode("1000"));

	total.appendChild(price);
	
	lista.appendChild(total);

	var total = document.createElement("li");
	total.setAttribute("class", "list-group-item");
	total.appendChild(document.createTextNode("Total de despezas:"));

	var price = document.createElement("spam");
	price.setAttribute("class", "pull-right");
	price.appendChild(document.createTextNode("100"));

	total.appendChild(price);
	
	lista.appendChild(total);

	var total = document.createElement("li");
	total.setAttribute("class", "list-group-item");
	total.appendChild(document.createTextNode("Despezas para produzir uma saca:"));

	var price = document.createElement("spam");
	price.setAttribute("class", "pull-right");
	price.appendChild(document.createTextNode("123"));

	total.appendChild(price);
	
	lista.appendChild(total);


	var total = document.createElement("li");
	total.setAttribute("class", "list-group-item");
	total.setAttribute("style", "font-size: 18px;");
	total.appendChild(document.createTextNode("Ganho final:"));

	var price = document.createElement("spam");
	price.setAttribute("class", "pull-right");
	price.appendChild(document.createTextNode("800"));

	total.appendChild(price);
	
	lista.appendChild(total);

}

function buildGraph2(){

	$("#graph").empty();

	var bar   = lavouras2.valores;
	var ticks = lavouras2.campos;
	var color = ['#FF0000'];

	var formatString = "%'d";     
	var divName = "graph";

	graphBar(bar, ticks, color, divName, formatString, openModal);

}

function openModal(point){
	$('#modalLavoura').modal('show');

	var coluna = document.getElementById('detalhesColuna');
	$("#detalhesColuna").empty();
	coluna.appendChild(document.createTextNode("detalhes do campo " + (point+1)));
}

