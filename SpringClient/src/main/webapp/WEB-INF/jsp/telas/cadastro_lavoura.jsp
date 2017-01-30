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

		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="POST" action = "validaLavoura" >
					<div class="form-group">
							<h2>Regitro de Lavoura</h2>
					</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label class="control-label" for="nome">Nome da propriedade:</label>
							    <input name="nome" type="text" maxlength="50" class="form-control">
							</div>
							<div class="form-group">
								<label class="control-label" for="nome">Tamanho da propriedade(Hectare):</label>
								<input name="propriedade_tamanho" type="text" maxlength="50" class="form-control">
							</div>
							<div class="form-group">
								<label class="control-label" for="lavoura_tamanho">Área da lavoura(Hectare):</label> 
								<input name="lavoura_tamanho" type="text" maxlength="50" class="form-control">
							</div>
							<div class="form-group">
								<label class="control-label" for="estado">Estado:</label> <input
									name="estado" type="text" maxlength="50" class="form-control">
							</div>
							<div class="form-group">
								<label class="control-label" for="cidade">Cidade:</label> <input
									name="cidade" type="text" maxlength="50" class="form-control">
							</div>
							
						</div>
						<div class="col-lg-6">
						    <div class="form-group">
								<label class="control-label" for="municipio">Municipio/Distrito:</label>
								<input name="municipio" type="text" class="form-control">
							</div>
							<div class="form-group">
								<label class="control-label" for="covas_numeros">Número de Covas:</label>
								<input name="covas_numero" type="text"  class="form-control">
							</div>
							<div class="form-group">
								<label class="control-label" for="numero_talhao">Número de talhões na propriedade:</label>
								<input name="numero_talhao" type="text" class="form-control">
							</div>
							
							<div class="form-group">
								<label class="control-label" for="tipo_cafe">Tipo do café:</label> 
								<input name="tipo_cafe" type="text" class="form-control">
							</div>
							<div class="form-group">
								<label class="control-label" for="altitude">Variedade do café:</label>
								<input name="variedade" type="text" class="form-control">
							</div>
							<div class="form-group">
							<button value = "validaLavoura" id="validaLavoura" type="submit" class="btn btn-info btn-block">Salvar</button>
						</div>
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

	<!-- jQuery -->
</body>
</html>