<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Gestor Cafeeiro</title>

</head>
<body onload="loadPage()">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div>
				<jsp:include page="menu.jsp" />
			</div>
		</div>
	</nav>
	<!-- Page Content -->
	<hr>
	<hr>

	<div class="container">

		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="POST" action="pesquisarelatorioEspecifico">
						<div class="form-group">
							<h2>Relatório Específico</h2>
						</div>


						<div class="form-group">
							<div class="form-inline">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
										class="form-control" id="sel1" name="id">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
								</div>



								<div class="form-group">
									<label class="control-label" for="data">Ano:</label> <input
										name="ano" type="text" class="form-control">
								</div>

								<div class="form-group">
									<button value="insereAnalisePlantio" id="insereAnalise"
										type="submit" class="btn btn-info btn-block">Pesquisar
									</button>
								</div>
							</div>
						</div>
					</form>

					<hr>
					<div class="col-sm-12" id="graphDiv"
						style="margin-top: 60px; margin-bottom: 60px; height: 300px;">
						<div class="col-sm-1" id="legendasGrafico">
							<span>Despesas</span>
						</div>
						<div class="col-sm-11" id="graph" style="height: 100%"></div>
					</div>

					<div class="col-sm-12" id="listDiv">
						<ul id="lavouraInforma" class="list-group">
						</ul>
					</div>


					<div class="modal fade" id="modalLavoura" role="dialog">
						<div class="modal-dialog">

							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Detalhes</h4>
								</div>
								<div class="modal-body">
									<div class="body-content col-sm-12">

										<span id="detalhesColuna"></span>

									</div>
								</div>
								<div class="modal-footer">

									<div class="col-sm-12">
										<button id="btn-insert" class="btn btn-primary btn-cancel"
											data-dismiss="modal">Fechar</button>
									</div>
								</div>
							</div>
						</div>

					</div>

					<!-- Esses itens são as barras do gráfico -->

					<c:set var="despesa_total_preplantio" scope="session"
						value="${despesa_total_preplantio}" />
					<c:set var="despesa_total_plantio" scope="session"
						value="${despesa_total_plantio}" />
					<c:set var="despesa_total_colheita" scope="session"
						value="${despesa_total_colheita}" />
					<c:set var="despesa_total_poscolheita" scope="session"
						value="${despesa_total_poscolheita}" />
					<c:set var="despesa_total_beneficiamento" scope="session"
						value="${despesa_total_beneficiamento}" />
					<c:set var="despesa_total_insumos" scope="session"
						value="${despesa_total_insumos}" />
					<c:set var="despesa_total_manutencao" scope="session"
						value="${despesa_total_manutencao}" />
					<c:set var="despesa_total_despesaadd" scope="session"
						value="${despesa_total_despesaadd}" />
					


					<!-- Esses itens são os dados que devem conter quando é clicado na barra do gráfico -->
					<c:forEach var="preplantio" items="${preplantio}"></c:forEach>
					<c:forEach var="plantio" items="${plantio}"></c:forEach>
					<c:forEach var="colheita" items="${colheita}"></c:forEach>
					<c:forEach var="poscolheita" items="${poscolheita}"></c:forEach>
					<c:forEach var="beneficiamento" items="${beneficiamento}"></c:forEach>
					<c:forEach var="insumos" items="${insumos}"></c:forEach>
					<!--Esse dois vai junto pra manutenção  -->
					<c:forEach var="manulavoura" items="${manulavoura}"></c:forEach>
					<c:forEach var="manuequipamento" items="${manuequipamento}"></c:forEach>
					<c:forEach var="despesaadd" items="${despesaadd}"></c:forEach>

				</div>
			</div>
		</div>


	</div>

	<script type="text/javascript">
		var valoresLavra = [ '${despesa_total_preplantio}',
				'${despesa_total_plantio}', '${despesa_total_colheita}',
				'${despesa_total_poscolheita}',
				'${despesa_total_beneficiamento}', '${despesa_total_insumos}',
				'${despesa_total_manutencao}' ];
		console.log(valoresLavra);
	</script>

	<!-- Footer -->
	<footer>
		<div class="row">
			<div class="col-lg-10">
				<p></p>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</footer>


</body>
</html>