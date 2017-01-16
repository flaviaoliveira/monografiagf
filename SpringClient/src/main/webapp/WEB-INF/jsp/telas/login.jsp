<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Login</title>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div>
			<jsp:include page="menu.jsp" />
		</div>
	</div>
	</nav>
	<hr>
	<hr>
	<div class="container">
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">

					<section class="jumbotron text-center">
					<div class="container">
						<h1 class="jumbotron-heading">Gestor Cafeeiro</h1>
						<p class="lead text-muted">Faça a gestão de suas lavouras
							cafeeiras com mais eficiência. Registre suas despesas ao longo de
							toda a produção de café e disponha de relatórios completos sobre
							o andamento de sua produção.Além disso, aproveite o sistema de
							recomendação de adubação e calagem, para ajuda-ló na aplicação de
							insumos</p>
						<p>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#Entrar">Entrar</button>
							<button type="button" class="btn btn-secondary"
								data-toggle="modal" data-target="#Cadastrar">Cadastrar</button>
						</p>
					</div>
					</section>

					<!-- Modal -->
					<div id="Entrar" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">

								<form method="POST" action="efetuaLogin">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Login</h4>
									</div>
									<div class="modal-body">
										<div class="form-group">
											<label class="control-label" for="e-mail">Email</label> <input
												name="email" type="text" maxlength="50" class="form-control">
										</div>
										<div class="form-group">
											<label class="control-label" for="Senha">Senha</label> <input
												name="senha" type="password" maxlength="11"
												class="form-control">
										</div>


										<div class="form-group">
											<button id="entrar" type="submit" value="Entrar na Conta"
												class="btn btn-info btn-block">Entrar</button>
										</div>
									</div>
								</form>
							</div>


						</div>
					</div>


					<!-- --------------Modal -Cadastro -------------------------- -->
					<div id="Cadastrar" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">

								<form method="POST" action="efetuaLogin">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Cadastro</h4>
									</div>
									<div class="modal-body">

										<div class="form-group">
											<label class="control-label" for="nome">Nome</label> <input
												name="nome" type="text" class="form-control">
										</div>
										<div class="form-group">
											<label class="control-label" for="cpf">CPF</label> <input
												name="cpf" type="text" maxlength="11" class="form-control">
										</div>
										<div class="form-group">
											<label class="control-label" for="email">Email</label> <input
												name="email" type="text" class="form-control">
										</div>
										<div class="form-group">
											<label class="control-label" for="senha">Senha</label> <input
												name="senha" type="password" maxlength="25"
												class="form-control" placeholder=" No minímo 6 caracteres">
										</div>
										<div class="form-group">
											<button id="criarconta" type="submit"
												class="btn btn-info btn-block">Cadastrar</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>

					<div class="album text-muted">
						<div class="container">



							<div class="row">
								<div class="col-lg-4 text-center">
									<img class="img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/gasto.png">
									<h2>Despesa</h2>
									<p>Registre todas as despesas obtidas na sua produção de café em tempor real.</p>
								</div>
								<!-- /.col-lg-4 -->
								<div class="col-lg-4 text-center">
									<img class="img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/relatorioespecifico.png">
									<h2>Relatórios</h2>
									<p>Veja os relatorios feitos com base nós gastos registrados no Gestor Cafeeiro.</p>

								</div>
								<!-- /.col-lg-4 -->
								<div class="col-lg-4 text-center">
									<img class="img-fluid img-circle"
										src="/assets/bootstrap-3.3.5-dist/img/img2.png">
									<h2>Adubação e Calagem</h2>
									<p>Faça a recomendação de adubação e calagem de forma fácil.</p>
	
								</div>
								<!-- /.col-lg-4 -->
							</div>



						</div>
					</div>
				</div>
			</div>



		</div>
</body>
</html>