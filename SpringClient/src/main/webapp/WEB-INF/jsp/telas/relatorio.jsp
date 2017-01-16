<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Gestor Cafeeiro</title>
<!--
	O bootstrap é adicionado apenas para exemplificar.
	-->
<link
	href="<c:url value="/assets/bootstrap-3.3.5-dist/css/bootstrap.min.css" />"
	rel="stylesheet" media="screen">

<!--
	O jquery é necessário para o bootstrap.
	-->
<script type="text/javascript"
	src="<c:url value="/assets/jquery/jquery-1.11.3.min.js" />"></script>
<!--
	O bootstrap é adicionado apenas para exemplificar.
	-->
<script type="text/javascript"
	src="<c:url value="/assets/bootstrap-3.3.5-dist/js/bootstrap.min.js" />"></script>

<!--
	Este é um arquivo com o método que faz a requisição para o webservice.
	-->
<script type="text/javascript"
	src="<c:url value="/assets/js/request.js" />"></script>
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

	<div class="container" style="width: 40%">

		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="POST" action="">
						<div class="form-group">
							<h2>Relatórios</h2>
						</div>
						<div class="form-group">
							<label class="control-label" for="nome">Lavoura:</label> <input
								name="nome" type="text" maxlength="50" class="form-control">
						</div>
						<div class="form-group">
							<label><input type="radio" name="optradio">Em um ano especifico.</label>
						</div>
						<div class="form-group">
							<label class="control-label" for="nome">Ano:</label> <input
								name="nome" type="text" maxlength="50" class="form-control">
						</div>
						<div class="form-group">
							<label><input type="radio" name="optradio">Em um intervalo de anos.</label>
						</div>
						<div class="form-group">
							<label class="control-label" for="nome">Ano inicial:</label> <input
								name="nome" type="text" maxlength="50" class="form-control">
						</div>
						<div class="form-group">
							<label class="control-label" for="nome">Ano final:</label> <input
								name="nome" type="text" maxlength="50" class="form-control">
						</div>
						<div class="form-group">
							<button id="cadastraTalhao" type="submit"
								class="btn btn-info btn-block">Gerar</button>
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