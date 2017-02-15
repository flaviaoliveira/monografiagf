
function openModal(point){
	$('#modalLavoura').modal('show');

	var coluna = document.getElementById('detalhesColuna');
	$("#detalhesColuna").empty();
	coluna.appendChild(document.createTextNode("detalhes do campo " + (point+1)));
}

