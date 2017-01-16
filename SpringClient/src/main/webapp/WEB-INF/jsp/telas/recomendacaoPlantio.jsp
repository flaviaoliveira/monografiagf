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
			
				<div class="panel-body">
					<div class="form-group">
						<h2>Recomendação para Plantio e Formação</h2>
					</div>
					<form  method="POST" action = "insereAnalisePlantio">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="lavoura">Lavoura:</label> <select
								class="form-control" id="sel1" name="id_propriedade">
								<c:forEach var="lavoura" items="${lavouras}">
									<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label class="control-label">Data:</label> <input name="data"
								type="date" class="form-control">
						</div>
						<div class="form-group">
							<div class="form-inline">

								<label class="control-label">Dimensões da cova(cm):</label> 
								<input name="dimensao1" id = "d1"type="text" class="form-control"  style="width: 10%" onblur="calcDSBCP()">
								<input name="dimensao2" id = "d2" type="text" class="form-control" style="width: 10%" onblur="calcDSBCP()">
							    <input name="dimensao3" id = "d3" type="text" class="form-control" style="width: 10%"  onblur="calcDSBCP()">

							</div>
						</div>
						<div class="form-group">

							<label class="control-label">Análise do Solo:</label>

							<div class="form-group">
								<table class="table-bordered">
									<tbody>
										<tr>
											<td style="width: 30%">P (Mehlich-1)</td>
											<td style="width: 15%"><input name="p" id = "P" type="text"
												class="form-control" onblur="calcDSBCP()"></td>
											<td style="width: 30%">mg/dm³</td>
										</tr>
										<tr>
											<td>K (Mehlich-1)</td>
											<td><input name="k"  id = "K" type="text" class="form-control"  onblur="calcAdubacaoCobertura()"></td>
											<td>mg/dm³</td>
										</tr>
										<tr>
											<td>Matéria Org.</td>
											<td><input name="mo"  id = "MO" type="text" class="form-control" onblur="calcEsterco()"></td>
											<td>%</td>
										</tr>
										<tr>
											<td>Sat. Bases(V)</td>
											<td><input name="sb" id = "SB" type="text" class="form-control" onblur="calcDSBCP()"></td>
											<td>%</td>
										</tr>
										<tr>
											<td>CTC do solo (T)</td>
											<td><input name="ctc" id = "CTC" type="text" class="form-control" onblur="calcDSBCP()"></td>
											<td>cmolc/dm3</td>
										</tr>
										<tr>
											<td>PRNT do calcário</td>
											<td><input name="prnt"  id = "PRNT" type="text" class="form-control" onblur="calcDSBCP()"></td>
											<td>%</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<label class="control-label">OBSERVAÇÃO: Caso não seja possível a incorporação do calcário,
						dividir em doses de, no máximo 3 t/ha, por vez, espaçados de um período de, no mínimo, 10 meses. </label>
						
					</div>
					</form>
					<div class="col-lg-6">
						<div class="form-group">
							<label class="control-label">Aplicação na cova:</label>

							<table class="table">
								<tbody>
									<tr>
										<th id = "esterco">${plantio.esterco}</th>
										<td>L de esterco de curral</td>
									</tr>
									<tr>
										<th id = "superfosfato">${plantio.superfosfato}</th>
										<td>g de superfosfato simples</td>
									</tr>
									<tr>
										<th id = "calcario">${plantio.calcario}</th>
										<td>g de calcário</td>
									</tr>
									<tr>
										<th id = "fte">${plantio.fte}</th>
										<td>g de FTE</td>
									</tr>
									<tr> 
									   <th><label class="control-label">Calagem:</label></th>
										<td><label class="control-label" id = "calagem">${plantio.calagem}</label>  t/ha de calcário (Ler observação)</td>
										
									</tr>		
								</tbody>
							</table>
						</div>

						<div class="form-group">
							<label class="control-label">Aplicação de cobertura após
								plantio:</label>
							<table class="table">
								<tbody>
									<tr>
										<td>30 dias do plantio:</td>
										<th>25</th>
										<td>g/covas de</td>
										<th id = "cobertura1">${plantio.cobertura}</th>
									</tr>
									<tr>
										<td>60 dias do plantio:</td>
										<th>30</th>
										<td>g/covas de</td>
										<th id = "cobertura2">${plantio.cobertura}</th>
									</tr>
									<tr>
										<td>90 dias do plantio:</td>
										<th>40</th>
										<td>g/covas de</td>
										<th id = "cobertura3">${plantio.cobertura}</th>
									</tr>
								</tbody>
							</table>
						</div>
						
						<div class="form-group">
							<label class="control-label">Adubação de primeiro ano:</label>
							<table class="table">
								<tbody>
									<tr>
										<td>Setembro:</td>
										<th>60</th>
										<td>g/covas de</td>
										<th id = "cobertura4">${plantio.cobertura}</th>
									</tr>
									<tr>
										<td>Novembro:</td>
										<th>80</th>
										<td>g/covas de</td>
										<th id = "cobertura5">${plantio.cobertura}</th>
									</tr>
									<tr>
										<td>Janeiro:</td>
										<th>100</th>
										<td>g/covas de</td>
										<th id = "cobertura6">${plantio.cobertura}</th>
									</tr>
								</tbody>
							</table>
						</div>
						
						<div class="form-group pull-right">
							<button value = "insereAnalisePlantio" id="insereAnalise" type="submit"
							        class="btn btn-info btn-block">Salvar resultado da Análise</button>
						</div>
						
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

	</div>
	<!-- /.container -->
	<script>
      function calcEsterco() {
    	   
    	    var MO = document.getElementById("MO");
    	    var esterco = document.getElementById("esterco");
    	    if (MO.value<1){
    	    	esterco.innerHTML = 15;
    	    }
    	    if(MO.value >= 1&& MO.value < 3){
    	    	esterco.innerHTML = 10;
    	    }
    	    if(MO.value >= 3&&MO.value < 5){
   	    	    esterco.innerHTML = 7;
   	       }
    	   if(MO.value >= 5){
   	    	    esterco.innerHTML = 5;
   	       }
    	    
      }
      
      function calcDSBCP() {
    	  
    	   
    	    var d1 = document.getElementById("d1");
    	    var d2 = document.getElementById("d2");
    	    var d3 = document.getElementById("d3");
    	    
    	    var superfosfato = document.getElementById("superfosfato");
    	    
    	    var d = (d1.value * d2.value * d3.value)/1000;
    	    
    	    // calcula superfosfato
    	    var P = document.getElementById("P");
    	    superfosfato.innerHTML = Math.round(((((80 - P.value)/0.2)*d)/1000)*2.3*5);

    	    
    	    var SB = document.getElementById("SB");
    	    var CTC = document.getElementById("CTC");
    	    var PRNT = document.getElementById("PRNT");
    	   
    	    
    	    
    	    
    	    //calcula calcario
    	    var calcario = document.getElementById("calcario");
    	    var cl = ((80-SB.value)*CTC.value)/PRNT.value;
        	var c2 = (cl/2)*d;
    	   	if(c2> 0){
    	 		calcario.innerHTML = c2;
    	    }else{
    	  		calcario.innerHTML = 0;
    	    }
    	    	 //Calagem
    	  	var calagem = document.getElementById("calagem");
    	  	var ca = ((60-SB.value)*CTC.value)/PRNT.value;
    	  	if(ca> 0){
   	    	     calagem.innerHTML = ca;
   	       }else{
   	  		     calagem.innerHTML = 0;
    	   }
    	    
    	    
    	      	    
      }
      
      function calcAdubacaoCobertura() {
    	  
  	     var K = document.getElementById("K");
  	     
  	     var c1 = document.getElementById("cobertura1");
  	     var c2 = document.getElementById("cobertura2");
  	     var c3 = document.getElementById("cobertura3");
	     var c4 = document.getElementById("cobertura4");
	     var c5 = document.getElementById("cobertura5");
	     var c6 = document.getElementById("cobertura6");
  	    
  	     
  	     
  	     if (K.value < 60){
  	        c1.innerHTML = "20-00-20";
  	        c2.innerHTML = "20-00-20";
  	        c3.innerHTML = "20-00-20";
  	        c4.innerHTML = "20-00-20";
  	        c5.innerHTML = "20-00-20";
  	        c6.innerHTML = "20-00-20";
  	     }
  	     if (K.value >= 60 && K.value < 120){
  	    	c1.innerHTML = "20-00-15";
  	        c2.innerHTML = "20-00-15";
  	        c3.innerHTML = "20-00-15";
  	        c4.innerHTML = "20-00-15";
  	        c5.innerHTML = "20-00-15";
  	        c6.innerHTML = "20-00-15";
	      
	     }
  	     if (K.value >= 120 && K.value < 220){
  	    	c1.innerHTML = "20-00-10";
  	        c2.innerHTML = "20-00-10";
  	        c3.innerHTML = "20-00-10";
  	        c4.innerHTML = "20-00-10";
  	        c5.innerHTML = "20-00-10";
  	        c6.innerHTML = "20-00-10";
	    	 
	     }
  	     if (K.value >= 220){
  	    	c1.innerHTML = "Sulfato de Amônio";
  	        c2.innerHTML = "Sulfato de Amônio";
  	        c3.innerHTML = "Sulfato de Amônio";
  	        c4.innerHTML = "Sulfato de Amônio";
  	        c5.innerHTML = "Sulfato de Amônio";
  	        c6.innerHTML = "Sulfato de Amônio";
  	    	
	     }   
  	}
     </script>

</body>
</html>