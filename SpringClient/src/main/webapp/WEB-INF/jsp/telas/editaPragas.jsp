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

					<div class="form-group">
						<h2>Edirar ocorrência de pragas ou doenças na lavoura</h2>
					</div>

					<div class="form-group">
						<form method="POST" action="buscapd">
							<div class="form-inline">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label><select
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
						</form>
						<hr>
						<div class="form-group">
							<c:if test="${listapd!=null}">
								<table class="table table-bordred table-striped">

									<thead>
										<tr>
											<th>Praga ou doença</th>
											<th>Data de inicio</th>
											<th>Data de fim</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="listapd" items="${listapd}">
											<tr>
												<td>Broca do café</td>
												<td>${listapd.data_inicio}</td>
												<td>${listapd.data_fim}</td>

												<td><p data-placement="top" data-toggle="tooltip"
														title="Edit">
														<button class="btn btn-primary btn-xs" data-title="editar"
															data-toggle="modal" data-target="#editar">
															<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</p></td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Delete">
														<button class="btn btn-danger btn-xs" data-title="Delete"
															data-toggle="modal" data-target="#delete">
															<span class="glyphicon glyphicon-trash"></span>
														</button>
													</p></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</c:if>
						</div>
					</div>

					<div id="editar" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">

								<form method="POST" action="registrapragasdoencas">
									<div class="panel-body">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Fechar">
											<span aria-hidden="true">&times;</span>
										</button>
										<div class="form-group">
											<h2>Ocorrência de Pragas e Doenças</h2>
										</div>
										<div class="form-group">
											<label for="lavoura">Lavoura:</label> <select
												class="form-control" id="sel1" name="id_propriedade">
												<c:forEach var="lavoura" items="${lavouras}">
													<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
												</c:forEach>
											</select>
										</div>
										<div class="form-group">
											<label for="pragadoenca">Praga ou Doença:</label> <select
												class="form-control" id="sel2" name="id_pragas">
												<c:forEach var="pd" items="${tipos_pd}">
													<option value="${pd.id_pragas}">${pd.nome}</option>
												</c:forEach>

											</select>
										</div>

										<div class="form-group">
											<div class="col-lg-6 col-sm-6">
												<label class="control-label" for="data_inicio">Data
													de inicio:</label> <input name="data_inicio" type="date"
													class="form-control" value="">
											</div>

											<div class="col-lg-6 col-sm-6">
												<label class="control-label" for="data_fim">Data do
													fim:</label> <input name="data_fim" type="date"
													class="form-control">
											</div>
										</div>
									</div>

									<div class="form-group">
										<div class="panel-body">
											<div class="botao">
												<button id="registrapragasdoencas" type="submit"
													class="btn btn-info btn-block">Salvar</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>


					<div class="modal" id="delete" tabindex="-1" role="dialog"
						aria-labelledby="modalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Fechar">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="modalLabel">Excluir Item</h4>
								</div>
								<div class="modal-body">Deseja realmente excluir este
									item?</div>

								<div class="modal-footer">

									<button type="button" class="btn btn-primary">Sim</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">N&atilde;o</button>
								</div>
							</div>
						</div>
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