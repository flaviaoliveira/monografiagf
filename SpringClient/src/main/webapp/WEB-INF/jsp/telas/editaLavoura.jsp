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
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</form>
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