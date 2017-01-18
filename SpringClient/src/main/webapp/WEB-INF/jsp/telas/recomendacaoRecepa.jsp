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
										style="width: 10%"> <label> --- </label> <label
										class="control-label" id="pl_ha"> ${producao.pl_ha }</label> <label>pl/ha</label>

								</div>
							</div>
							<div class="form-group">
								<div class="form-inline">
									<label class="control-label">Número de covas do talhão:</label><input
										name="n_covas" id="covas" onblur="controll()" type="text" class="form-control"
										style="width: 20%">
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
													onblur="controll()" type="text" class="form-control"></td>
												<td style="width: 30%">mg/dm³</td>
											</tr>
											<tr>
												<td>K (Mehlich-1)</td>
												<td><input id="k" name="k" type="text"
													onblur="controll()" class="form-control"></td>
												<td>mg/dm³</td>
											</tr>
											<tr>
												<td>Matéria Org.</td>
												<td><input id="mo" name="mo" type="text"
													onblur="controll()" class="form-control"></td>
												<td>%</td>
											</tr>
											<tr>
												<td>Sat. Bases(V)</td>
												<td><input id="sb" name="sb" type="text"
													onblur="controll()" class="form-control"></td>
												<td>%</td>
											</tr>
											<tr>
												<td>CTC do solo (T)</td>
												<td><input id="ctc" name="ctc" type="text"
													onblur="controll()" class="form-control"></td>
												<td>cmolc/dm³</td>
											</tr>
											<tr>
												<td>PRNT do calcário</td>
												<td><input id="prnt" name="prnt" type="text"
													onblur="controll()" class="form-control"></td>
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
											<td style="width: 30%" id="calagem">${recepa.calagem}</td>
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
											<th id="desbrota1">${recepa.desbrota1}</th>
											<td>g/planta</td>
											<th>Supersimples</th>
										</tr>
										<tr>
											<td></td>
											<th id="desbrota2">${recepa.desbrota2}</th>
											<td>g/planta</td>
											<th>FTE</th>
										</tr>
										<tr>
											<td>Após 30 dias:</td>
											<th>30</th>
											<td>g/planta</td>
											<th id="fert3">${recepa.fert3}</th>
										</tr>
										<tr>
											<td>Após 70 dias:</td>
											<th>50</th>
											<td>g/planta</td>
											<th id="fert4">${recepa.fert3}</th>
										</tr>
										<tr>
											<td>Após 120 dias:</td>
											<th>80</th>
											<td>g/planta</td>
											<th id="fert5">${recepa.fert3}</th>
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
											<th>Area do talhão:<label id="area_talhao">
											    ${recepa.area_talhao}</label>ha</th>

										</tr>
										<tr>
											<td>Quant. de formulado(sc/ano):</td>
											<td id="ha_formulado">${recepa.ha_formulado}</td>
											<td id="area_formulado">${recepa.area_formulado}</td>

										</tr>
										<tr>
											<td>Quant. de supersimples(cs/ano):</td>
											<td id="ha_superfosfato">${recepa.ha_superfosfato}</td>
											<td id="area_superfosfato">${recepa.area_superfosfato}</td>
										</tr>
										<tr>
											<td>Quant. de calcário(cs/ha):</td>
											<td id="ha_calcario">${recepa.ha_calcario}</td>
											<td id="area_calcario">${recepa.area_calcario}</td>
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
		// Calcular o pl_ha
		var pl_ha = document.getElementById("pl_ha");
		if(n.value != 0 && m.value != 0){
	       pl_ha.innerHTML = Math.round(10000/(n.value*m.value));
	    }
		
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
		
		//Dose de fertilizante na desbrota
		//SE(D9<10;200;SE(E(D9>=10;D9<20);150;SE(E(D9>=20;D9<40);100;SE(E(D9>=40;D9<60);50;0))))
		var p = document.getElementById("p");
		var desbrota1 = document.getElementById("desbrota1");
		var d1 =0;
		if(p.value<10){
			desbrota1.innerHTML = 200;
			d1 =200;
		}else{if(p.value<20){
			desbrota1.innerHTML = 150;
			d1 =150;
		}else{if(p.value<40){
			desbrota1.innerHTML = 100;
			d1 =100;
		}else{if(p.value<60){
			desbrota1.innerHTML = 50;
			d1 = 50;
		}else{
			desbrota1.innerHTML = 0;
			d1 = 0;
		}
			
		}
			
		}
			
		}
		

		//Dose de fertilizante 3
	    //SE(D10<60;"20-00-30";SE(E(D10>=60;D10<120);"20-00-20";SE(E(D10>=120;D10<200);"20-00-15";SE(E(D10>=200;D10<280);"20-00-10";"Sultato de Amônio"))))
		var k = document.getElementById("k");
		var fert3 = document.getElementById("fert3");
		var fert4 = document.getElementById("fert4");
		var fert5 = document.getElementById("fert5");
		if(k.value<60){
			fert3.innerHTML = "20-00-30";
			fert4.innerHTML = "20-00-30";
			fert5.innerHTML = "20-00-30";
		}else{if(k.value<120){
			fert3.innerHTML = "20-00-20";
			fert4.innerHTML = "20-00-20";
			fert5.innerHTML = "20-00-20";
		}else{if(k.value<200){
		    fert3.innerHTML = "20-00-15";
		    fert4.innerHTML = "20-00-15";
		    fert5.innerHTML = "20-00-15";
		}else{if(k.value<280){
		    fert3.innerHTML = "20-00-10";
		    fert4.innerHTML = "20-00-10";
		    fert5.innerHTML = "20-00-10";
		    
		}else{
		   fert3.innerHTML = "Sultato de Amônio";
		   fert4.innerHTML = "Sultato de Amônio";
		   fert5.innerHTML = "Sultato de Amônio";
		}
		        	   
		}
		
		}   	 
		
		}
		//Área do talhão 
		var area_talhao = document.getElementById("area_talhao");
		var n_covas = document.getElementById("covas");
		var area = n_covas.value/plha_o;
		if(plha_o>0){
			area_talhao.innerHTML = n_covas.value/plha_o;
		}
		
		
		//Quantidade de formulado ha
		var formuladoha = document.getElementById("ha_formulado");
		var fh = (((160)*plha_o/1000)/50);
		formuladoha.innerHTML = Math.round(fh);
		//Quantidade de formulado final
		var formuladoa = document.getElementById("area_formulado");
		var fa =fh*area;
		formuladoa.innerHTML = Math.round(fa);
		
		
		
		//quantidade de supersimples
		var supersimplesha = document.getElementById("ha_superfosfato");
		var sh =(((d1*plha_o)/1000)/50);
		supersimplesha.innerHTML = Math.round(sh);
		//Quantidade de supersimples final
		var supersimplesa = document.getElementById("area_superfosfato");
		var sa =sh*area;
		supersimplesa.innerHTML= Math.round(sa);
		
		
		//Quantidade de Calcário
		var calcarioha = document.getElementById("ha_calcario");
		var ca = cal*1000/50;
		calcarioha.innerHTML = Math.round(ca);
		var calcarioarea = document.getElementById("area_calcario");
		var cc = ca*area;
		calcarioarea.innerHTML = Math.round(cc);
	
	}
		
	
	</script>
</body>
</html>