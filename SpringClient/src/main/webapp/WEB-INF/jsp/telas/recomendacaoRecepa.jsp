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
							<label class="control-label">Data:</label> <input value="data" name="data"
								type="date" class="form-control">
						</div>
						<div class="form-group">
							<div class="form-inline">

								<label class="control-label">Espaçamento(mxn):</label> 
								<input name="m" id = "m" onblur="controll()" type="text" class="form-control" style="width: 10%">
								<label class="control-label">X</label> 
								<input name="n" id = "n" onblur="controll()" type="text" class="form-control" style="width: 10%"> 
								<label> __ </label>
								<label class="control-label" id = "pl_ha"> ${producao.pl_ha }</label> 
								<label>pl/ha</label> 
								
							</div>
						</div>
						<div class="form-group">

							<label class="control-label">Análise do Solo:</label>

							<div class="form-group">
								<table class="table-bordered">
									<tbody>
										<tr>
											<td style="width: 30%">P (Mehlich-1)</td>
											<td style="width: 20%"><input id = "p" name="P" type="text"
												class="form-control"></td>
											<td style="width: 30%">mg/dm³</td>
										</tr>
										<tr>
											<td>K (Mehlich-1)</td>
											<td><input id = "k" name="K" type="text" class="form-control"></td>
											<td>mg/dm³</td>
										</tr>
										<tr>
											<td>Matéria Org.</td>
											<td><input id = "mo" name="MO" type="text" class="form-control"></td>
											<td>%</td>
										</tr>
										<tr>
											<td>Sat. Bases(V)</td>
											<td><input  id = "sb" name="SB" type="text" class="form-control"></td>
											<td>%</td>
										</tr>
										<tr>
											<td>CTC do solo (T)</td>
											<td><input id = "ctc" name="CTC" type="text" class="form-control"></td>
											<td>cmolc/dm³</td>
										</tr>
										<tr>
											<td>PRNT do calcário</td>
											<td><input id = "prnt" name="PRNT" type="text" class="form-control"></td>
											<td>%</td>
										</tr>
										<tr>
											<td>Número Covas do talhão</td>
											<td><input id = "n_covas" name="n_covas" type="text" class="form-control"></td>
											<td>Covas</td>
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
									<th style="width: 30%"> Calagem:</th>
									<td style="width: 30%"> 000 </td>
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
										<th>000</th>
										<td>g/planta</td>
										<th> Supersimples </th>
									</tr>
									<tr>
									    <td></td>
										<th>30</th>
										<td>g/planta</td>
										<th>FTE </th>
									</tr>
									<tr>
									    <td>Após 30 dias:</td>
										<th>30</th>
										<td>g/planta</td>
										<th>000---000 </th>
									</tr>
									<tr>
									    <td>Após 70 dias:</td>
										<th>50</th>
										<td>g/planta</td>
										<th>000---000 </th>
									</tr>
										<tr>
									    <td>Após 120 dias:</td>
										<th>80</th>
										<td>g/planta</td>
										<th>000---000 </th>
									</tr>
								</tbody>
							</table>
						</div>
				
						<div class="form-group">
							<label class="control-label">Quantidade de Insumos(referente a 1ª opção):</label>
							<table class="table">
								<tbody>
								<tr>
										<th>Descrição:</th>
										<th>ha</th>
										<th>Area do talhão: XX ha</th>
										
									</tr>
									<tr>
										<td>Quant. de formulado(sc/ano):</td>
										<td>xxx</td>
										<td>ooo</td>
										
									</tr>
									<tr>
										<td>Quant. de superfosfato simples(cs/ano):</td>
										<td>XX</td>
										<td>000</td>
									</tr>
									<tr>
										<td>Quant. de calcário(cs/ha):</td>
										<td>XX</td>
										<td>000</td>
									</tr>
								</tbody>
							</table>
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
</body>
</html>