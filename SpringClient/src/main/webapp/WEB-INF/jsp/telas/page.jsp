
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

		<div class="row text-center" >
			<div class="panel panel-primary">
				<div class="panel-body">
					<div class="form-group">
						<div class="container-fluid">


							<section class="jumbotron text-center">
								<div class="container">
									<h1 class="jumbotron-heading">Gestor Cafeeiro</h1>
									<p class="lead text-muted">Garantindo uma gestão eficiente
										das suas lavouras!</p>
								</div>
							</section>
							<!-- Team Members Row -->

							<div class="row text-center">
							
								<h2>Registrar</h2>
								<hr>					
							
								<div class="col-lg-4 text-center">
									<a href="cadastralavoura"><img
										class="img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/lavouraProdução.png">
										<h3>Lavoura</h3></a>

								</div>
								<!-- /.col-lg-4 -->
								<div class="col-lg-4 text-center">
									<a href="despesas"> <img
										class="img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/gasto.png">
										<h3>Despesa</h3></a>


								</div>
								<!-- /.col-lg-4 -->
								<div class="col-lg-4 text-center">
									<a href="pragasdoencas"> <img
										class="img-fluid img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/praga.png">
										<h3>Pragas ou Doenças</h3></a>


								</div>
								<!-- /.col-lg-4 -->
							</div>
							
							
							
							<div class="row text-center" >
							
								
								<h2>Adubação e Calagem</h2>
								<hr>					
							
								<div class="col-lg-4 text-center">
									<a href="recomendacaoPlantio"><img
										class=" img-fluid img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/lavouraPlatio.png">
										<h3>Plantio e Formação</h3></a>

								</div>
								<!-- /.col-lg-4 -->
								<div class="col-lg-4 text-center">
									<a href="recomendacaoLavouraProducao"> <img
										class=" img-fluid img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/lavouraProdução.png">
										<h3>Lavoura em Produção</h3></a>


								</div>
								<!-- /.col-lg-4 -->
								<div class="col-lg-4 text-center">
									<a href="recomendacaoLavouraRecepada"> <img
										class="img-fluid img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/lavouraRecepada.png">
										<h3>Lavoura Recepada</h3></a>


								</div>
								<!-- /.col-lg-4 -->
							</div>


							<div class="row">
							
								<h2>Relatórios</h2>
								<hr>					
							
								<div class="col-lg-4 text-center">
									<a href=""><img
										class=" img-fluid img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/relatorioespecifico.png">
										<h3>Ano Específico</h3></a>

								</div>
								<!-- /.col-lg-4 -->
								<div class="col-lg-4 text-center">
									<a href=""> <img
										class=" img-fluid img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/relatoriogeral.png">
										<h3>Geral</h3></a>
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
					<p>rodapé</p>
				</div>
			</div>
			<!-- /.row -->
		</footer>
	</div>
</body>
</html>
