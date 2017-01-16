<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link href="<c:url value="/assets/bootstrap-3.3.5-dist/css/bootstrap.min.css" />" rel="stylesheet" media="screen">
    
	<!--
	O jquery é necessário para o bootstrap.
	-->
	<script type="text/javascript" src="<c:url value="/assets/jquery/jquery-1.11.3.min.js" />"></script>
	<!--
	O bootstrap é adicionado apenas para exemplificar.
	-->
	<script type="text/javascript" src="<c:url value="/assets/bootstrap-3.3.5-dist/js/bootstrap.min.js" />"></script>
	
	<!--
	Este é um arquivo com o método que faz a requisição para o webservice.
	-->
	<script type="text/javascript" src="<c:url value="/assets/js/request.js" />"></script>
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

    <div id="login-overlay" class="modal-dialog" style="width:100%" style ="height:auto">
      <div class="modal-content">
          <div class="modal-header">
              
         <h4 class="modal-title" id="myModalLabel">Gestor Cafeeiro</h4>
          </div>
          <div class="modal-body" style="width:50%" style ="height:auto">
              <div class="row">
                  <div class="col-xs-6">
                      <div class="well">
                          <form method="POST" action="efetuaLogin" role="form">
						<div class="form-group">
							<h2>Login </h2>
						</div>
						<div class="form-group">
							<label class="control-label" for="e-mail">Email</label> <input
								name="email" type="text" maxlength="50" class="form-control">
						</div>
						<div class="form-group">
							<label class="control-label" for="Senha">Senha</label> <input
								name= "senha" type="password" maxlength="11" class="form-control">
						</div>
						
						
						<div class="form-group">
							<button id="entrar" type="submit"  value= "Entrar na Conta"
							class="btn btn-info btn-block">Entrar</button>
						</div>						
					</form>

                      </div>
                  </div>
                  <div class="col-xs-6">
                      <p class="lead">Register now for <span class="text-success">FREE</span></p>
                      <ul class="list-unstyled" style="line-height: 2">
                          <li><span class="fa fa-check text-success"></span> See all your orders</li>
                          <li><span class="fa fa-check text-success"></span> Fast re-order</li>
                          <li><span class="fa fa-check text-success"></span> Save your favorites</li>
                          <li><span class="fa fa-check text-success"></span> Fast checkout</li>
                          <li><span class="fa fa-check text-success"></span> Get a gift <small>(only new customers)</small></li>
                          <li><a href="/read-more/"><u>Read more</u></a></li>
                      </ul>
                      <p><a href="/new-customer/" class="btn btn-info btn-block">Yes please, register now!</a></p>
                  </div>
              </div>
          </div>
      </div>
  </div>

    
    <!-- /.container -->

    <!-- jQuery -->
    <script src="/assets/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/assets/js/bootstrap.min.js"></script>

</body>
</html>