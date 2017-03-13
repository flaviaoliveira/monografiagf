
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Gestor Cafeeiro</title>
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

	<div class="container" style="width: default">

		<div class="row text-center">
			<div class="panel panel-primary">
				<div class="panel-body">
					<div class="form-group">
						<div class="container-fluid">





							<div class="container-fluid bg-3 text-center">
								<h2>Gestor Cafeeiro</h2>
								<hr>
								<br>
								<div class="row">
									<div class="col-sm-3">
										<a href="cadastralavoura">
											<p>Regitrar Lavoura</p> <img class=" img-fluid img-circle" style="width:70%"
											src="/assets/bootstrap-3.3.5-dist/img/lavoura2.jpg"
											alt="Image">
										</a>
									</div>
									<div class="col-sm-3">
										<a href="despesas">
											<p>Registrar Despesas</p> <img class=" img-fluid img-circle" style="width:70%"
											src="/assets/bootstrap-3.3.5-dist/img/gasto.png" alt="Image">
										</a>
									</div>
									<div class="col-sm-3">
										<a href="pragasdoencas">
											<p>Registrar Pragas ou Doenças</p> <img class=" img-fluid img-circle" style="width:70%"
											src="/assets/bootstrap-3.3.5-dist/img/praga.png" alt="Image">
										</a>
									</div>
									
									
									<div class="col-sm-3">
										<a href="relatorioGeral">
											<p>Relatório Geral</p> <img class=" img-fluid img-circle" style="width:70%"
											src="/assets/bootstrap-3.3.5-dist/img/relatoriogeral.png"
											alt="Image">
										</a>
									</div>
								</div>
							</div>
							<hr><br> 

							<div class="container-fluid bg-3 text-center">
								<div class="row">
								<div class="col-sm-3">
										<a href="recomendacaoPlantio">
											<p>Recomendação-Plantio e formação</p> <img class=" img-fluid img-circle" style="width:70%"
											src="/assets/bootstrap-3.3.5-dist/img/lavouraPlatio.png"
											alt="Image">
										</a>
									</div>
									<div class="col-sm-3">
										<a href="recomendacaoLavouraProducao">
											<p>Recomendação-Lavoura em produção</p> <img class=" img-fluid img-circle" style="width:70%"
											src="/assets/bootstrap-3.3.5-dist/img/lavouraProdução.png"
											alt="Image">
										</a>
									</div>


									<div class="col-sm-3">
										<a href="recomendacaoLavouraRecepada">
											<p>Recomendação-Lavoura Recepada</p> <img class=" img-fluid img-circle" style="width:70%"
											src="/assets/bootstrap-3.3.5-dist/img/lavouraRecepada.png"
											alt="Image">
										</a>
									</div>
									<div class="col-sm-3">
										<a href="recomendacaoLavouraRecepada">
											<p>Relatório Específico</p> <img class=" img-fluid img-circle" style="width:70%"
											src="/assets/bootstrap-3.3.5-dist/img/relatorioespecifico.png"
											alt="Image">
										</a>
									</div>
									
								</div>

							</div>
							<br> <br>
						</div>

					</div>
				</div>
			</div>
		</div>


		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-10">
					<p>rodapé</p>
				</div>
			</div>
			<!-- /.row -->
		</footer>
	</div>
</body>
</html>
