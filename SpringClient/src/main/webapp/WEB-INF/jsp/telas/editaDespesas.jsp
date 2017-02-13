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

	<div class="container">

		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">

					<div class="form-group">
						<h2>Edirar despesas</h2>
					</div>


					<div class="form-group">
						<form method="POST" action="BuscaDespesa">
							<div class="form-inline">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
										class="form-control" id="sel1" name="id">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
								</div>



								<div class="form-group">
									<label class="control-label" for="data">Ano:</label> <input
										name="ano" type="text" class="form-control">
								</div>


								<div class="form-group">
									<label for="lavoura">Despesa:</label> <select
										class="form-control" id="sel2" name="despesa">
										<option>pre-plantio</option>
										<option>plantio</option>
										<option>colheita</option>
										<option>pos-colheita</option>
										<option>beneficiamento</option>
										<option>aplicação de insumos</option>
										<option>manutenção</option>
										<option>despesas adicionais</option>

									</select>
								</div>

								<div class="form-group">
									<button value="insereAnalisePlantio" id="insereAnalise"
										type="submit" class="btn btn-info btn-block">Pesquisar
									</button>
								</div>
							</div>

						</form>
					</div>
					<hr>

					<c:if test="${preplantio != null}">
						<div class="form-group">
							<h2>Pré-Plantio/h2>
						</div>


						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Área trabalhada(%)</th>
										<th>Número de Covas</th>
										<th>Despesa com Mão de Obra</th>
										<th>Despesa com Adubação</th>
										<th>Despesa com Calagem</th>
										<th>Despesa com Herbicida</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="preplantio" items="${preplantio}">
										<tr>
											<td>${preplantio.area_t}</td>
											<td>${preplantio.n_covas}</td>
											<td>${preplantio.despesa_func}</td>
											<td>${preplantio.despesa_adubo}</td>
											<td>${preplantio.despesa_calcario}</td>
											<td>${preplantio.despesa_herbicida}</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>
					<c:if test="${plantio!= null}">
						<div class="form-group">
							<h2>Plantio</h2>
						</div>

						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Área Plantada</th>
										<th>Quantidade de mudas</th>
										<th>Despesa com Mão de Obra</th>
										<th>Despesa com muda</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="plantio" items="${plantio}">
										<tr>
											<td>${plantio.area_p}</td>
											<td>${plantio.qnt_muda}</td>
											<td>${plantio.despesa_func}</td>
											<td>${plantio.despesa_muda}</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>

					<c:if test="${colheita!= null}">
						<div class="form-group">
							<h2>Colheita</h2>
						</div>


						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Quantidade de sacos colhido</th>
										<th>Quantidade de fucionários</th>
										<th>Preço pago por saco</th>
										<th>Despesa com viagens</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="colheita" items="${colheita}">
										<tr>
											<td>${colheita.qnt_sacas}</td>
											<td>${colheita.qnt_func}</td>
											<td>${colheita.despesa_saca}</td>
											<td>${colheita.despesa_viagens}</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>

					<c:if test="${poscolheita!= null}">
						<div class="form-group">
							<h2>Pós-Colheita</h2>
						</div>

						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Quantidade de café(bag)</th>
										<th>Despesa com funcionários</th>
										<th>Horas de Secador</th>
										<th>Despesa com Secador</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="poscolheita" items="${poscolheita}">
										<tr>
											<td>${poscolheita.qnt_cafe}</td>
											<td>${poscolheita.qnt_cafe}</td>
											<td>${poscolheita.hrs_secador}</td>
											<td>${poscolheita.despesa_secador}</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>


					<c:if test="${beneficiamento!= null}">
						<div class="form-group">
							<h2>Beneficiamento</h2>
						</div>

						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Quantidade de café(bag)</th>
										<th>Despesa com funcionários</th>
										<th>Despesa com máquina</th>
										<th>Qtd. fianl de sacas</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="beneficiamento" items="${beneficiamento}">
										<tr>
											<td>${beneficiamento.qnt_bags}</td>
											<td>${beneficiamento.despesa_func}</td>
											<td>${beneficiamento.despesa_maquina}</td>
											<td>${beneficiamento.qnt_sacas}</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>


					<c:if test="${insumo!= null}">
						<div class="form-group">
							<h2>Aplicação de insumos</h2>
						</div>


						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Insumo usado</th>
										<th>Qtd. de insumo</th>
										<th>Despesa com insumo</th>
										<th>Despesa funcionário</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="insumo" items="${insumo}">
										<tr>
											<td>${insumo.tipo_insumos}</td>
											<td>${insumo.qnt_insumos}</td>
											<td>${insumo.despesa_insumos}</td>
											<td>${insumo.despesa_func}</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>

					<c:if test="${manuequipamento!= null}">
						<div class="form-group">
							<h2>Manutenção de equipamentos</h2>
						</div>


						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Data</th>
										<th>Ação</th>
										<th>Equipamento</th>
										<th>Despesa</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="manuequipamento" items="${manuequipamento}">
										<tr>
											<td>${manuequipamento.data}</td>
											<td>${manuequipamento.acao}</td>
											<td>${manuequipamento.equipamento}</td>
											<td>${manuequipamento.despesa}</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>



					<c:if test="${manulavoura!= null}">
						<div class="form-group">
							<h2>Manutenção da lavoura</h2>
						</div>


						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Data</th>
										<th>Qtd. de funcionário</th>
										<th>Despesa funcionário</th>
										<th>Manutenção</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="manulavoura" items="${manulavoura}">
										<tr>
											<td>${manulavoura.data}</td>
											<td>${manulavoura.qnt_func}</td>
											<td>${manulavoura.despesa_func}</td>
											<td>${manulavoura.tipo_manutencao}</td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>

					<c:if test="${despesaaadd!= null}">
						<div class="form-group">
							<h2>Despesas adicionais</h2>
						</div>


						<div class="form-group">
							<table class="table table-bordred table-striped">

								<thead>
									<tr>
										<th>Data</th>
										<th>Tipo de despesa</th>
										<th>Despesa</th>


									</tr>
								</thead>
								<tbody>

									<c:forEach var="despesaaadd" items="${despesaaadd}">
										<tr>
											<td>${despesaaadd.data}</td>
											<td>${despesaaadd.tipo_despesa}</td>
											<td>${despesaaadd.despesa}</td>

											<td><p data-placement="top" data-toggle="tooltip"
													title="Edit">
													<button class="btn btn-primary btn-xs" data-title="Edit"
														data-toggle="modal" data-target="">
														<span class="glyphicon glyphicon-pencil"></span>
													</button>
												</p></td>
											<td><p data-placement="top" data-toggle="tooltip"
													title="Delete">
													<button class="btn btn-danger btn-xs" data-title="Delete"
														data-toggle="modal" data-target="#delete">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</p></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>
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
</body>
</html>