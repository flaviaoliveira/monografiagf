<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Gestor Cafeeiro</title>
   <link
	href="<c:url value="/assets/bootstrap-3.3.5-dist/css/bootstrap.min.css" />"
	rel="stylesheet" media="screen">
  <link
  href="<c:url value="/assets/css/relatorioEspecifico.css" />"
  rel="stylesheet" media="screen">
<script type="text/javascript"
	src="<c:url value="/assets/jquery/jquery-1.11.3.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/assets/bootstrap-3.3.5-dist/js/bootstrap.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/assets/bootstrap-3.3.5-dist/js/chart.min.js" />"></script>

  <!-- Graphs libraries -->
    <link href="<c:url value="/assets/js/jqPlot/jquery.jqplot.css" />"  rel="stylesheet" type="text/css">

    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/jquery.jqplot.js" />"></script>

    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/plugins/jqplot.dateAxisRenderer.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/plugins/jqplot.barRenderer.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/plugins/jqplot.categoryAxisRenderer.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/plugins/jqplot.donutRenderer.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/plugins/jqplot.cursor.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/plugins/jqplot.highlighter.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/plugins/jqplot.dragable.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jqPlot/plugins/jqplot.trendline.js" />"></script>
    

    <script type="text/javascript" src="<c:url value="/assets/js/graphLib/graphLib.js" />"></script>

<script type="text/javascript"
  src="<c:url value="/assets/js/relatorioEspecifico.js" />"></script>



<body   background="/assets/bootstrap-3.3.5-dist/img/plano1.png">
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="inicio">GESTOR CAFEEIRO </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse">
            
    <ul class="nav navbar-nav">
     
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown">Registro
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="cadastralavoura">Lavoura</a></li>
          <li><a href="despesas">Despesas</a></li>
          <li><a href="pragasdoencas">Pragas e Doenças </a></li>
        </ul>
        
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown">Adubação e Calagem 
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="recomendacaoPlantio">Plantio e formação</a></li>
          <li><a href="recomendacaoLavouraProducao">Lavoura em produção</a></li>
          <li><a href="recomendacaoLavouraRecepada">Lavoura recepada</a></li>
          
        </ul>
     
         <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown">Relatório 
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="relatorioEspecifico">Um ano específico</a></li>
          <li><a href="relatorioGeral">Geral</a></li>    
        </ul>
        
          <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown">Edição
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="editarlavouras">Lavoura</a></li>
          <li><a href="editardespesas">Despesas</a></li> 
          <li><a href="editarpragas">Pragas e doenças</a></li> 
        </ul>
        
    </ul>
 

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
					<a class="dropdown-toggle" role="button" data-toggle="dropdown"> 
					<i class="glyphicon glyphicon-user">${usuarioLogado.nome}</i><span class="caret"></span>
					</a> <ul id="g-account-menu" class="dropdown-menu" role="menu">
					     <li><a href="#">Editar perfil</a></li>
						 <li><a href="logout"><i class="glyphicon glyphicon-lock"></i>Sair</a></li>
				</ul>
			
				</li>
				</ul>
				
			</div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </div>
  <!-- Page Content -->
   
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