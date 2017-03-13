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
							<h2>Pré-Plantio</h2>
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
														data-toggle="modal" data-target="#editarpreplantio">
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
														data-toggle="modal" data-target="#editarplantio">
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
														data-toggle="modal" data-target="#editarColheita">
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
														data-toggle="modal" data-target="#editaposcolheita">
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
														data-toggle="modal" data-target="#editabeneficiamento">
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
														data-toggle="modal" data-target="#editainsumo">
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
														data-toggle="modal"
														data-target="#editamanutencaoequipamento">
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
														data-toggle="modal" data-target="#editamenutencaolavoura">
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


	<!-- MODAL-Editar Pre plantio  -->
	<div id="editarpreplantio" class="modal fade" role="dialog">

		<div class="modal-dialog">
			<div class="modal-content">

				<form method="POST" action="registrapragasdoencas">
					<div class="panel-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Fechar">
							<span aria-hidden="true">&times;</span>
						</button>
						<div class="form-group">
							<h2>Editar Pré-Plantio</h2>
						</div>
						<div class="col-lg-6">

							<h3>Informações</h3>
							<div class="form-group">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
										class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label" for="data">Data:</label> <input
										name="data" type="date" class="form-control">
								</div>
							</div>

							<h3></h3>

							<div class="form-group">
								<label class="control-label" for="area_t">Área
									trabalhada(%):</label> <input name="area_t" type="text"
									class="form-control"> <label class="control-label"
									for="n_covas">Número de covas: </label> <input name="n_covas"
									type="text" class="form-control">
							</div>

							<hr>
							<div class="form-group">
								<h3>Mão de Obra</h3>
							</div>
							<div class="form-group">
								<label class="control-label" for="qnt_func">Qtd. de
									funcionários:</label> <input name="qnt_func" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_func">Despesa: </label> <input name="despesa_func"
									type="text" class="form-control">
							</div>
							<hr>

							<div class="form-group">
								<h3>Adubação</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="tipo_adubo">Adubo:</label> <select
									class="form-control" id="sel1" name="tipo_adubo">
									<option>P2O5</option>
									<option>P resina</option>
									<option>Outros</option>
								</select> <label class="control-label" for="qnt_adubo">Qtd.:</label> <input
									name="qnt_adubo" type="text" class="form-control"> <label
									class="control-label" for="despesa_adubo">Despesa:</label> <input
									name="despesa_adubo" type="text" class="form-control">
							</div>

						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<h3>Calagem</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="tipo_calcario">Calcário:</label>
								<select class="form-control" id="sel1" name="tipo_calcario">
									<option>Calcario01</option>
									<option>Calcario02</option>
									<option>Outros</option>
								</select> <label class="control-label" for="qnt_calcario">Qtd.:</label> <input
									name="qnt_calcario" type="text" class="form-control"> <label
									class="control-label" for="despesa_calcario">Despesa:</label> <input
									name="despesa_calcario" type="text" class="form-control">
							</div>
							<hr>
							<div class="form-group">
								<h3>Herbicida</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="tipo_herbicida">Herbicida:</label>
								<select class="form-control" id="sel1" name="tipo_herbicida">
									<option>herbicida01</option>
									<option>herbicida02</option>
									<option>Outros</option>
								</select> <label class="control-label" for="qnt_herbicida">Qtd.:</label>
								<input name="qnt_herbicida" type="text" class="form-control">
								<label class="control-label" for="despesa_herbicida">Despesa:</label>
								<input name="despesa_herbicida" type="text" class="form-control">
							</div>
							<hr>

							<div class="form-group">
								<h3>Outros</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="descricao">Descrição:</label>
								<input name="descricao" type="text" class="form-control">
								<label class="control-label" for="descricao">Despesa:</label> <input
									name="despesa_outro" type="text" class="form-control">
							</div>
							<h3></h3>
							<div class="form-group pull-right">
								<button id="salvar" type="submit" value="salvar"
									class="btn btn-info btn-block">Salvar</button>
							</div>

						</div>

					</div>
				</form>
			</div>
		</div>
	</div>



	<div id="editarplantio" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">

				<form method="POST" action="">
					<div class="panel-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Fechar">
							<span aria-hidden="true">&times;</span>
						</button>
						<div class="form-group">
							<h2>Editar Plantio</h2>
						</div>
						<div class="col-lg-6">
							<h3>Informações</h3>
							<div class="form-group">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
										class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label" for="data">Data:</label> <input
										name="data" type="date" class="form-control">
								</div>
							</div>
							<h3></h3>
							<div class="form-group">
								<label class="control-label" for="area_p">Área
									trabalhada(%):</label> <input name="area_p" type="text"
									class="form-control">
							</div>
							<hr>
							<div class="form-group">
								<h3>Mão de Obra</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="qnt_func">Qtd. de
									funcionários:</label> <input name="qnt_func" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_func">Despesa: </label> <input name="despesa_func"
									type="text" class="form-control">
							</div>


						</div>
						<div class="col-lg-6">

							<div class="form-group">
								<h3>Café plantado (muda)</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="tipo_muda">Tipo:</label> <input
									name="tipo_muda" type="text" class="form-control"> <label
									class="control-label" for="qnt_muda">Qtd.:</label> <input
									name="qnt_muda" type="text" class="form-control"> <label
									class="control-label" for="despesa_muda">Despesa:</label> <input
									name="despesa_muda" type="text" class="form-control">
							</div>
							<hr>

							<div class="form-group">
								<h3>Outros</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="descricao">Descrição:</label>
								<input name="descricao" type="text" class="form-control">
								<label class="control-label" for="descricao">Despesa:</label> <input
									name="despesa_outro" type="text" class="form-control">
							</div>
							<h3></h3>
							<div class="form-group pull-right">
								<button id="salvar" type="submit" value="salvar"
									class="btn btn-info btn-block">Salvar</button>
							</div>

						</div>

					</div>
				</form>
			</div>
		</div>
	</div>


	<div id="editarColheita" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">

				<form method="POST" action="registrapragasdoencas">
					<div class="panel-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Fechar">
							<span aria-hidden="true">&times;</span>
						</button>
						<div class="form-group">
							<h2>Editar Colheita</h2>
						</div>
						<div class="col-lg-6">

							<h3>Informações</h3>
							<div class="form-group">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
										class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label" for="data">Data:</label> <input
										name="data" type="date" class="form-control">
								</div>
							</div>
							<h3></h3>

							<hr>
							<div class="form-group">
								<h3>Mão de Obra</h3>
							</div>
							<div class="form-group">
								<label class="control-label" for="qnt_func">Qtd. de
									funcionários:</label> <input name="qnt_func" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_func">Despesa: </label> <input name="despesa_func"
									type="text" class="form-control">
							</div>
							<hr>

							<div class="form-group">
								<h3>Café</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="qnt_sacas">Qtd.
									colhido(saco):</label> <input name="qnt_sacas" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_saca">Preço por saco:</label> <input
									name="despesa_saca" type="text" class="form-control">
							</div>
						</div>
						<div class="col-lg-6">


							<div class="form-group">
								<h3>Transporte</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="n_viagens">Número de
									viagens: </label> <input name="n_viagens" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_viagens">Despesa: </label> <input
									name="despesa_viagens" type="text" class="form-control">
							</div>
							<hr>
							<div class="form-group">
								<h3>Outros</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="descricao">Descrição:</label>
								<input name="descricao" type="text" class="form-control">
								<label class="control-label" for="descricao">Despesa:</label> <input
									name="despesa_outro" type="text" class="form-control">
							</div>


							<div class="form-group pull-right">
								<button id="salvar" type="submit" value="salvar"
									class="btn btn-info btn-block">Salvar</button>
							</div>

						</div>

					</div>
				</form>
			</div>
		</div>
	</div>



	<div id="editaposcolheita" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">

				<form method="POST" action="">
					<div class="panel-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Fechar">
							<span aria-hidden="true">&times;</span>
						</button>
						<div class="form-group">
							<h2>Editar Pós-Colheita</h2>
						</div>
						<div class="col-lg-6">

							<h3>Informações</h3>
							<div class="form-group">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
										class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label" for="data">Data:</label> <input
										name="data" type="date" class="form-control">
								</div>
							</div>
							<h3></h3>

							<hr>
							<div class="form-group">
								<h3>Mão de Obra</h3>
							</div>
							<div class="form-group">
								<label class="control-label" for="qnt_func">Qtd. de
									funcionários:</label> <input name="qnt_func" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_func">Despesa: </label> <input name="despesa_func"
									type="text" class="form-control">
							</div>
							<hr>

							<div class="form-group">
								<h3>Café</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="qnt_sacas">Qtd.
									colhido(saco):</label> <input name="qnt_sacas" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_saca">Preço por saco:</label> <input
									name="despesa_saca" type="text" class="form-control">
							</div>
						</div>
						<div class="col-lg-6">


							<div class="form-group">
								<h3>Transporte</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="n_viagens">Número de
									viagens: </label> <input name="n_viagens" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_viagens">Despesa: </label> <input
									name="despesa_viagens" type="text" class="form-control">
							</div>
							<hr>
							<div class="form-group">
								<h3>Outros</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="descricao">Descrição:</label>
								<input name="descricao" type="text" class="form-control">
								<label class="control-label" for="descricao">Despesa:</label> <input
									name="despesa_outro" type="text" class="form-control">
							</div>
							<h3></h3>

							<div class="form-group pull-right">
								<button id="salvar" type="submit" value="salvar"
									class="btn btn-info btn-block">Salvar</button>
							</div>

						</div>
				</form>
			</div>
		</div>
	</div>

	<div id="#editabeneficiamento" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">

				<form method="POST" action="registrapragasdoencas">
					<div class="panel-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Fechar">
							<span aria-hidden="true">&times;</span>
						</button>
						<div class="form-group">
							<h2>Editar Beneficiamento</h2>
						</div>
						<div class="col-lg-6">

							<h3>Informações</h3>
							<div class="form-group">
								<div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
										class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label" for="data">Data:</label> <input
										name="data" type="date" class="form-control">
								</div>
							</div>
							<h3></h3>

							<hr>
							<div class="form-group">
								<h3>Mão de Obra</h3>
							</div>
							<div class="form-group">
								<label class="control-label" for="qnt_func">Qtd. de
									funcionários:</label> <input name="qnt_func" type="text"
									class="form-control"> <label class="control-label"
									for="despesa_func">Despesa: </label> <input name="despesa_func"
									type="text" class="form-control">
							</div>
							<hr>


						</div>
						<div class="col-lg-6">

							<div class="form-group">
								<h3>Café no secador</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="qnt_cafe">Qtd.:</label> <input
									name="qnt_cafe" type="text" class="form-control"> <label
									class="control-label" for="hrs_secador">Hrs. :</label> <input
									name="hrs_secador" type="text" class="form-control"> <label
									class="control-label" for="despesa_secador">Despesa:</label> <input
									name="despesa_secador" type="text" class="form-control">

							</div>
							<div class="form-group"></div>

							<hr>
							<div class="form-group">
								<h3>Outros</h3>
							</div>

							<div class="form-group">
								<label class="control-label" for="descricao">Descrição:</label>
								<input name="descricao" type="text" class="form-control">
								<label class="control-label" for="descricao">Despesa:</label> <input
									name="despesa_outro" type="text" class="form-control">
							</div>
							<h3></h3>

							<div class="form-group pull-right">
								<button id="salvar" type="submit" value="salvar"
									class="btn btn-info btn-block">Salvar</button>
							</div>

						</div>
					</div>
				</form>

			</div>
		</div>
	</div>







	<div class="modal" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="modalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="modalLabel">Excluir Item</h4>
				</div>
				<div class="modal-body">Deseja realmente excluir este item?</div>

				<div class="modal-footer">

					<button type="button" class="btn btn-primary">Sim</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
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