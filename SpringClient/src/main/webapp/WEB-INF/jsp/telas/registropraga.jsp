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
	<div class="container" style="width: default">
		<div class="row">
			<div class="panel panel-primary">
				<form method="POST" action="registrapragasdoencas">
					<div class="panel-body">
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
								<label class="control-label" for="data_inicio">Data de
									inicio:</label> <input name="data_inicio" type="date"
									class="form-control">
							</div>

							<div class="col-lg-6 col-sm-6">
								<label class="control-label" for="data_fim">Data do fim:</label>
								<input name="data_fim" type="date" class="form-control">
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

	<!-- Footer -->
	<footer>
		<div class="row">
			<div class="col-lg-10">
				<p></p>
			</div>
		</div>
	</footer>

</body>
</html>