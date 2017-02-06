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
<body>
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
					<form method="POST" action="">
						<div class="form-group">
							<h2>Relatório Específico</h2>
						</div>


						<div class="form-group">
							<div class="form-inline">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
										class="form-control" id="sel1" name="id_propriedade">
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
				</div>
			</div>
		</div>
	</div>

	<div class="col-sm-12" id="graphDiv" style="margin-top: 60px; margin-bottom: 60px; height: 300px;">
		<div class="col-sm-1" id="legendasGrafico" ><span >Despesas</span></div>
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
				<button id="btn-insert" class="btn btn-primary btn-cancel" data-dismiss="modal">Fechar</button>
				</div>
			</div>
		</div>
	</div>
</div>



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

	<!-- /.container -->
</body>
</html>