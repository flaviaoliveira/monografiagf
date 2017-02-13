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
						<h2>Edirar Lavouras</h2>
					</div>


					<div class="form-group">
						<table class="table table-bordred table-striped">

							<thead>
								<tr>
									<th>Nome</th>
									<th>Tamanho(hectare)</th>
									<th>Localização</th>
									<th>Número de covas</th>
									<th>Variedade do café</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="lavoura" items="${lavouras}">
									<tr>
										<td>${lavoura.nome}</td>
										<td>${lavoura.lavoura_tamanho}</td>
										<td>${lavoura.estado}</td>
										<td>${lavoura.covas_numero}</td>
										<td>${lavoura.variedade}</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#editar"
													id="${lavoura.id_propriedade}">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete"
													id="${lavoura.id_propriedade}">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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

	<div id="editar" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">

				<form method="POST" action="">


					<div class="form-group">
						<button id="criarconta" type="submit"
							class="btn btn-info btn-block">Cadastrar</button>
					</div>

				</form>
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