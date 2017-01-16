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

	<div class="container" style="width: 60%">

		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
						<div class="form-group">
							<h2>Recomendação de Adubação e Calagem</h2>
						</div>
                        <form action="recomendacaoPlantio">
						<div class="form-group">
							<button value="recomendacaoPlantio" id="recomendacaoPlantio" type="submit"
								class="btn btn-info btn-block">Plantio e Formação</button>
						</div>
						</form>
						<form action="recomendacaoLavouraProducao">
						<div class="form-group">
							<button value="recomendacaoLavouraProducao" id="recomendacaoLavouraProducao" type="submit"
								class="btn btn-info btn-block">Lavoura em Produção</button>
						</div>
						</form>
						<form action="recomendacaoLavouraRecepada">
						<div class="form-group">
							<button value="recomendacaoLavouraRecepada" id="recomendacaoLavouraRecepada" type="submit"
								class="btn btn-info btn-block">Lavoura Recepada</button>
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

	</div>
	

</body>
</html>