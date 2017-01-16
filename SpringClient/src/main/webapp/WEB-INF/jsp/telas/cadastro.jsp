<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Cadastro</title>
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
    <hr>
    
	<div class="container" style="width:50%">
	    
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="POST" action="cadastraProdutor">
						<div class="form-group">
							<h2>Criando uma Conta </h2>
						</div>
						
						<div class="form-group" >
							<label class="control-label" for="nome" >Nome</label> 
							<input name="nome" type="text" class="form-control">
						    <form:errors path= "Produtor.nome"/>
						</div>
						<div class="form-group">
							<label class="control-label" for="cpf">CPF</label> 
							<input name ="cpf"  type="text" maxlength="11" class="form-control">
							<form:errors path= "Produtor.cpf" />
						</div>
						<div class="form-group">
							<label class="control-label" for="email">Email</label> 
							<input name="email" type="text" class="form-control">
							<form:errors path= "Produtor.email"/>
						</div>
						<div class="form-group">
							<label class="control-label" for="senha">Senha</label>
							<input name="senha" type="password" maxlength="25" class="form-control"
							 placeholder=" No minímo 6 caracteres">
							<form:errors path= "Produtor.senha"/>
						</div>
						<div class="form-group">
							<button id="criarconta" type="submit" class="btn btn-info btn-block">Criar a Conta</button>
						</div>
											
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>