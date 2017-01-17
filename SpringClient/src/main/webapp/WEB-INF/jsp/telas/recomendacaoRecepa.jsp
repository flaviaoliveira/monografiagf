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
						<h2>Recomendação para Lavoura Recepada</h2>
					</div>
					<form method="POST" action="insereAnaliseRecepada">
						<div class="col-lg-6">
							<div class="form-group">
								<label for="lavoura">Lavoura:</label> <select
									class="form-control" id="id_propriedade" name="id_propriedade">
									<c:forEach var="lavoura" items="${lavouras}">
										<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label class="control-label">Data:</label> <input value="data"
									name="data" type="date" class="form-control">
							</div>
							<div class="form-group">
								<div class="form-inline">

									<label class="control-label">Espaçamento(mxn):</label> <input
										name="m" id="m" onblur="controll()" type="text"
										class="form-control" style="width: 10%"> <label
										class="control-label">X</label> <input name="n" id="n"
										onblur="controll()" type="text" class="form-control"
										style="width: 10%"> <label> __ </label> <label
										class="control-label" id="pl_ha"> ${producao.pl_ha }</label> <label>pl/ha</label>

								</div>
							</div>
							<div class="form-group">
								<div class="form-inline">
									<label class="control-label">Número de covas do talhão:</label><input
										name="n_covas" id="n_covas" type="text" class="form-control"
										style="width: 10%">
								</div>
							</div>

							<div class="form-group">

								<label class="control-label">Análise do Solo:</label>

								<div class="form-group">
									<table class="table-bordered">
										<tbody>
											<tr>
												<td style="width: 30%">P (Mehlich-1)</td>
												<td style="width: 20%"><input id="p" name="P"
													type="text" class="form-control"></td>
												<td style="width: 30%">mg/dm³</td>
											</tr>
											<tr>
												<td>K (Mehlich-1)</td>
												<td><input id="k" name="k" type="text"
													class="form-control"></td>
												<td>mg/dm³</td>
											</tr>
											<tr>
												<td>Matéria Org.</td>
												<td><input id="mo" name="mo" type="text"
													class="form-control"></td>
												<td>%</td>
											</tr>
											<tr>
												<td>Sat. Bases(V)</td>
												<td><input id="sb" name="sb" type="text"
													class="form-control"></td>
												<td>%</td>
											</tr>
											<tr>
												<td>CTC do solo (T)</td>
												<td><input id="ctc" name="ctc" type="text"
													class="form-control"></td>
												<td>cmolc/dm³</td>
											</tr>
											<tr>
												<td>PRNT do calcário</td>
												<td><input id="prnt" name="prnt" type="text"
													class="form-control"></td>
												<td>%</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="col-lg-6">

							<div class="form-group">

								<table class="table">
									<tbody>
										<tr>
											<th style="width: 30%">Calagem:</th>
											<td style="width: 30%">${recepa.calagem}</td>
											<td style="width: 30%">t/ha de calcário</td>
										</tr>
									</tbody>
								</table>
							</div>




							<div class="form-group">
								<label class="control-label">Doses de fertilizantes:</label>

								<table class="table">
									<tbody>
										<tr>
											<td>Na desbrota</td>
											<th>${recepa.desbrota1}</th>
											<td>g/planta</td>
											<th>Supersimples</th>
										</tr>
										<tr>
											<td></td>
											<th>${recepa.desbrota2}</th>
											<td>g/planta</td>
											<th>FTE</th>
										</tr>
										<tr>
											<td>Após 30 dias:</td>
											<th>30</th>
											<td>g/planta</td>
											<th>${recepa.fert3}</th>
										</tr>
										<tr>
											<td>Após 70 dias:</td>
											<th>50</th>
											<td>g/planta</td>
											<th>${recepa.fert3}</th>
										</tr>
										<tr>
											<td>Após 120 dias:</td>
											<th>80</th>
											<td>g/planta</td>
											<th>${recepa.fert3}</th>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="form-group">
								<label class="control-label">Quantidade de
									Insumos(referente a 1ª opção):</label>
								<table class="table">
									<tbody>
										<tr>
											<th>Descrição:</th>
											<th>ha</th>
											<th>Area do talhão: ${recepa.area_talhao} ha</th>

										</tr>
										<tr>
											<td>Quant. de formulado(sc/ano):</td>
											<td>${recepa.ha_formulado}</td>
											<td>${recepa.area_formulado}</td>

										</tr>
										<tr>
											<td>Quant. de superfosfato simples(cs/ano):</td>
											<td>${recepa.ha_superfosfato}</td>
											<td>${recepa.area_superfosfato}</td>
										</tr>
										<tr>
											<td>Quant. de calcário(cs/ha):</td>
											<td>${recepa.ha_calcario}</td>
											<td>${recepa.area_calcario}</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group pull-right">
								<button value="insereAnaliseRecepada" id="insereAnalise"
									type="submit" class="btn btn-info btn-block">Salvar
									resultado da Análise</button>
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
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</footer>

	</div>
	<!-- /.container -->
	<script>
	function controll(){
		
		//Calcula a quantidade de plantas por talhão 
		var m = document.getElementById("m");
		var n = document.getElementById("n");
		var plha_o = Math.round(10000/(n.value*m.value));
		
		//calagem 
		var prnt = document.getElementById("prnt");
		var ctc  = document.getElementById("ctc");
		var sb   = document.getElementById("sb");
		var calagem  = document.getElementById("calagem");
		var cal = (ctc.value*(60-sb.value)/prnt.value);
		if(cal>0){
			calagem.innerHTML = parseFloat(cal.toFixed(1)); 
		}else{
			calagem.innerHTML = 0; 
			cal = 0;
		}
		//Dose de fertilizante 3
		//SE(D10<60;"20-00-30";SE(E(D10>=60;D10<120);"20-00-20";SE(E(D10>=120;D10<200);"20-00-15";SE(E(D10>=200;D10<280);"20-00-10";"Sultato de Amônio"))))
		var k = document.getElementById("k");
		var fert3 = document.getElementById("fert3");
		if(k<60){
			fert3.innerHTML = "20-00-30";
		}else{if(k.value<120){
			      fert3.innerHTML = "20-00-20";
		     }else{if(k.value<200){
		    	     fert3.innerHTML = "20-00-15";
		           }else{if(k.value<280){
		        	        fert3.innerHTML = "20-00-10";
		                   }else{
		                	   fert3.innerHTML = "Sultato de Amônio";
		                   }
		        	   
		                }
		    	 
		           }
		    	 
		     }
		
		//Quantidade de formulado ha
		var formuladoha = document.getElementById("ha_formulado");
		var fh = (((160)*plha_o/1000)/50);
		formuladoha.innerHTML = fh;
		//Quantidade de formulado final
		var formuladoa = document.getElementById("area_formulado");
		var fa =fh*plha_o ;
		formuladoa.innerHTML = fa;
	}
		
	
	</script>
</body>
</html>