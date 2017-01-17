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
					<div class="form-group">
						<h2>Recomendação para Lavoura em Produção</h2>
					</div>
					<form method="POST" action="insereAnaliseProducao">
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
								<label class="control-label">Data:</label> <input name="data"
									type="date" class="form-control">
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
									<label class="control-label">Produtividade(sc/ha):</label> <input
										name="produtividade" id="produtividade" onblur="controll()"
										type="text" class="form-control" style="width: 10%"> <label
										class="control-label">Número de covas do talhão:</label> <input
										name="n_cova" id="n_covas" type="text" class="form-control"
										style="width: 20%" onblur="controll()">
								</div>
							</div>
							<div class="form-group">

								<label class="control-label">Análise do Solo:</label>

								<div class="form-group">
									<table class="table-bordered">
										<tbody>
											<tr>
												<td style="width: 30%">P (Mehlich-1)</td>
												<td style="width: 20%"><input name="P" id="p"
													type="text" onblur="controll()" class="form-control"></td>
												<td style="width: 30%">mg/dm³</td>
											</tr>
											<tr>
												<td>K (Mehlich-1)</td>
												<td><input name="k" id="k" onblur="controll()"
													type="text" class="form-control"></td>
												<td>mg/dm³</td>
											</tr>
											<tr>
												<td>Matéria Org.</td>
												<td><input name="mo" id="mo" onblur="controll()"
													type="text" class="form-control"></td>
												<td>%</td>
											</tr>
											<tr>
												<td>Fósforo Remanescente (P-rem)</td>
												<td><input name="fosforo" id="fosforo"
													onblur="controll()" type="text" class="form-control"></td>
												<td>mg/L</td>
											</tr>
											<tr>
												<td>Sat. Bases(V)</td>
												<td><input name="sb" id="sb" onblur="controll()"
													type="text" class="form-control"></td>
												<td>%</td>
											</tr>
											<tr>
												<td>CTC do solo (T)</td>
												<td><input name="ctc" id="ctc" onblur="controll()"
													type="text" class="form-control"></td>
												<td>cmolc/dm3</td>
											</tr>
											<tr>
												<td>PRNT do calcário</td>
												<td><input name="prnt" id="prnt" type="text"
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
											<td style="width: 30%" id="calagem">${producao.calagem}
											</td>
											<td style="width: 30%">t/ha de calcário</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="form-group">
								<label class="control-label">Aplicação de Nutrientes:</label>

								<table class="table">
									<tbody>
										<tr>
											<th id="N">${producao.n}</th>
											<td>kg/ha/ano de N</td>
										</tr>
										<tr>
											<th id="PO">${producao.PO}</th>
											<td>kg/ha/ano P2O5</td>
										</tr>
										<tr>
											<th id="KO">${producao.KO}</th>
											<td>kg/ha/ano K20</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">

								<table class="table">
									<tbody>
										<tr>
											<th style="width: 30%">Doses de fertilizantes:</th>
											<td style="width: 30%">Número de pacelas:</td>
											<td style="width: 20%"><input name="parcelas"
												id="parcelas" onblur="controll()" type="text"
												class="form-control"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<table class="table">
									<tbody>
										<tr>
											<th>1ª opção:</th>
											<th id="dose1">${producao.dose1}</th>
											<td>Aplicação de</td>
											<th id="apl1">${producao.apl1}</th>
											<td>g/planta de</td>
											<th id="f1">${producao.f1}</th>
										</tr>
										<tr>
											<th></th>
											<th id="dose2">${producao.dose2}</th>
											<td>Aplicações de</td>
											<th id="apl2">${producao.apl2}</th>
											<td>g/planta de</td>
											<th id="f2">${producao.f2}</th>
										</tr>
										<tr>
											<th>2ª opção:</th>
											<th id="dose3">${producao.dose3}</th>
											<td>Aplicações de</td>
											<th id="apl3">${producao.apl3}</th>
											<td>g/planta de</td>
											<th id="f3">${producao.f3}</th>
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
											<th>Quantidade:</th>
											<td>ha</td>
											<td>Area do talhão: <label class="control-label"
												id="area_talhao">${producao.area_talhao}</label> ha
											</td>

										</tr>
										<tr>
											<td>Formulado(sc/ha):</td>
											<th id="ha_formulado">${producao.ha_formulado}</th>
											<th id="area_formulado">${producao.area_formulado}</th>
										</tr>
										<tr>
											<td>Superfosfato simples(sc/ha):</td>
											<th id="ha_superfosfato">${producao.ha_superfosfato}</th>
											<th id="area_superfosfato">${producao.area_superfosfato}</th>
										</tr>
										<tr>
											<td>Calcário(sc/ha):</td>
											<th id="ha_calcario">${producao.ha_calcario}</th>
											<th id="area_calcario">${producao.area_calcario}</th>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group pull-right">
								<button value="insereAnaliseProducao" id="insereAnalise"
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
		
		var m = document.getElementById("m");
		var n = document.getElementById("n");
		var plha_o = Math.round(10000/(n.value*m.value));
		// Calcular o pl_ha
		var pl_ha = document.getElementById("pl_ha");
		if(n.value != 0 && m.value != 0){
	       pl_ha.innerHTML = Math.round(10000/(n.value*m.value));
	    }
		// Quantidade de Nutrientes
		var produtividade = document.getElementById("produtividade");
		var mo = document.getElementById("mo");
		
		var mo_o = 10;
		if(mo.value <= 10){
			mo_o = mo.value;
		}
		
		// calcula valor de N
		var N = document.getElementById("N");
		var N_o = Math.round(226.417 + 2.465 * produtividade.value - (10*mo_o));
		if(N_o>0){
			N.innerHTML = N_o;
		}else{
			N.innerHTML = 0;
			N_o = 0;
		}
		
		
		//calcula valor de P2O5
		var po = document.getElementById("PO");
		var fosforo = document.getElementById("fosforo");
		var p = document.getElementById("p");
		var PO_o = Math.round((189 + (0.537 * produtividade.value) - (8.26 * p.value) - (2.1 * fosforo.value))- 2 * mo_o);
		if(PO_o>0){
			 po.innerHTML = PO_o;
		 }else{
			 po.innerHTML = 0;
			 PO_o = 0;
		 }
		
		//Calcula  o valor de k20
		var k = document.getElementById("k");
		var ko = document.getElementById("KO");
		var KO_o = Math.round((236.45+(2.381*produtividade.value)-(1.21*k.value))-(mo_o*3));
		if(KO_o>0){
			ko.innerHTML = KO_o;
		}else{
			ko.innerHTML = 0;
			KO_o=0;
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
		
		//doses de fertilizantes
		var parcelas = document.getElementById("parcelas");
		var dose1 = document.getElementById("dose1");
		var dose2 = document.getElementById("dose2");
		var dose3 = document.getElementById("dose3");
		var apl1  = document.getElementById("apl1");
		var apl2  = document.getElementById("apl2");
		var apl3  = document.getElementById("apl3");
		var f2  = document.getElementById("f2");
		var f3  = document.getElementById("f3");
		
		dose1.innerHTML = 1;
		dose2.innerHTML = parcelas.value;
		dose3.innerHTML = parcelas.value;

		var aplPO = Math.round(((PO_o * 5)/plha_o)*1000);
		var aplNO = Math.round((((N_o * 5)/plha_o)*1000)/parcelas.value);
		apl1.innerHTML = aplPO;
		apl2.innerHTML = aplNO;
		apl3.innerHTML = aplNO;
		
		
		//quantidade de formulado 
		
		var M27 = Math.round((N_o*100)/20);
		console.log(M27);
		//calculos auxiliares 
		var O25 = Math.round((KO_o*100)/M27);
		
		f2.innerHTML = "20-0-" + O25;
		
		var N25 =Math.round((PO_o*100)/M27);
		
		f3.innerHTML = "20-"+ N25 +"-" + O25;
		
		//Quannidadee de insumos da opção 1
		
		var n_covas = document.getElementById("n_covas"); 
		var area_talhao = document.getElementById("area_talhao");
		var area = Math.round(n_covas.value/plha_o);
		area_talhao.innerHTML = Math.round(area); 
		
		//formulado
		var ha_formulado = document.getElementById("ha_formulado");
		var ha_1 = (((aplNO*plha_o)/1000)/50)*parcelas.value;
		ha_formulado.innerHTML = Math.round(ha_1);
		
		
		var area_formulado = document.getElementById("area_formulado");
		var area_1 = area*ha_1;
		area_formulado.innerHTML = Math.round(area_1);
		
		
		//superfosfato
		var ha_superfosfato = document.getElementById("ha_superfosfato");
		var ha_2 = (PO_o*5)/50;
		ha_superfosfato.innerHTML = Math.round(ha_2);
		
		
		var area_superfosfato = document.getElementById("area_superfosfato");
		var area_2 = area*ha_2;
		area_superfosfato.innerHTML =Math.round(area_2);
		
		//calcario
		var ha_calcario = document.getElementById("ha_calcario");
		var ha_3 = (cal*1000)/50;
		ha_calcario.innerHTML =Math.round(ha_3);
		
		
		var area_calcario = document.getElementById("area_calcario");
		var area_3 = area*ha_3;
		area_calcario.innerHTML =Math.round(area_3);
		
	}
   </script>
</body>
</html>