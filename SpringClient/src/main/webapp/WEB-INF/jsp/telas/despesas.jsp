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

					<div class="form-horizontal">
						<h2>Registro de despesas!</h2>
					</div>



					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#preplantio"
							aria-controls="preplatio" role="tab" data-toggle="tab">Pré-plantio</a></li>
						<li role="presentation"><a href="#plantio"
							aria-controls="plantio" role="tab" data-toggle="tab">Plantio</a></li>
						<li role="presentation"><a href="#colheita"
							aria-controls="colheita" role="tab" data-toggle="tab">Colheita</a></li>
						<li role="presentation"><a href="#poscolheita"
							aria-controls="colheita" role="tab" data-toggle="tab">Pos-Colheita</a></li>
						<li role="presentation"><a href="#beneficiamento"
							aria-controls="beneficiamento" role="tab" data-toggle="tab">Beneficiamento</a></li>
						<li role="presentation"><a href="#insumos"
							aria-controls="insumos" role="tab" data-toggle="tab">Aplicação
								de insumos</a></li>
						<li role="presentation"><a href="#manutencao"
							aria-controls="manutencao" role="tab" data-toggle="tab">Manutenção
						</a></li>
						<li role="presentation"><a href="#despesasadicionais"
							aria-controls="manutencao" role="tab" data-toggle="tab">Despesas
								Adicionais </a></li>

					</ul>

					<div class="tab-content">

						<div role="tabpanel" class="tab-pane active" id="preplantio">
							<form method="POST" action="registraPrePlantio">
								<div class="col-lg-6">

									<h3>Informações</h3>
									<div class="form-inline">
										<div class="form-group" style="width: 50%">
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

									<div class="form-inline">
										<label class="control-label" for="area_t">Área
											trabalhada(%):</label> <input name="area_t" type="text"
											class="form-control" style="width: 20%"> <label
											class="control-label" for="n_covas">Número de covas: </label>
										<input name="n_covas" type="text" class="form-control"
											style="width: 20%">
									</div>

									<hr>
									<div class="form-group">
										<h3>Mão de Obra</h3>
									</div>
									<div class="form-inline">
										<label class="control-label" for="qnt_func">Qtd. de
											funcionários:</label> <input name="qnt_func" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_func">Despesa: </label> <input
											name="despesa_func" type="text" class="form-control"
											style="width: 25%">
									</div>
									<hr>

									<div class="form-group">
										<h3>Adubação</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="tipo_adubo">Adubo:</label> <select
											class="form-control" style="width: 20%" id="sel1"
											name="tipo_adubo">
											<option>P2O5</option>
											<option>P resina</option>
											<option>Outros</option>
										</select> <label class="control-label" for="qnt_adubo">Qtd.:</label> <input
											name="qnt_adubo" type="text" class="form-control"
											style="width: 20%"> <label class="control-label"
											for="despesa_adubo">Despesa:</label> <input
											name="despesa_adubo" type="text" class="form-control"
											style="width: 25%">
									</div>

								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<h3>Calagem</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="tipo_calcario">Calcário:</label>
										<select class="form-control" style="width: 20%" id="sel1"
											name="tipo_calcario">
											<option>Calcario01</option>
											<option>Calcario02</option>
											<option>Outros</option>
										</select> <label class="control-label" for="qnt_calcario">Qtd.:</label>
										<input name="qnt_calcario" type="text" class="form-control"
											style="width: 20%"> <label class="control-label"
											for="despesa_calcario">Despesa:</label> <input
											name="despesa_calcario" type="text" class="form-control"
											style="width: 25%">
									</div>
									<hr>
									<div class="form-group">
										<h3>Herbicida</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="tipo_herbicida">Herbicida:</label>
										<select class="form-control" style="width: 20%" id="sel1"
											name="tipo_herbicida">
											<option>herbicida01</option>
											<option>herbicida02</option>
											<option>Outros</option>
										</select> <label class="control-label" for="qnt_herbicida">Qtd.:</label>
										<input name="qnt_herbicida" type="text" class="form-control"
											style="width: 20%"> <label class="control-label"
											for="despesa_herbicida">Despesa:</label> <input
											name="despesa_herbicida" type="text" class="form-control"
											style="width: 23%">
									</div>
									<hr>

									<div class="form-group">
										<h3>Outros</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="descricao">Descrição:</label>
										<input name="descricao" type="text" class="form-control"
											style="width: 51%"> <label class="control-label"
											for="descricao">Despesa:</label> <input name="despesa_outro"
											type="text" class="form-control" style="width: 20%">
									</div>
									<h3></h3>
									<div class="form-group pull-right">
										<button id="salvar" type="submit" value="salvar"
											class="btn btn-info btn-block">Salvar</button>
									</div>

								</div>


							</form>

						</div>





						<div role="tabpanel" class="tab-pane" id="plantio">
							<form method="POST" action="registraPlantio">
								<div class="col-lg-6">

									<h3>Informações</h3>
									<div class="form-inline">
										<div class="form-group" style="width: 50%">
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
									<div class="form-inline">
										<label class="control-label" for="area_p">Área
											trabalhada(%):</label> <input name="area_p" type="text"
											class="form-control">
									</div>
									<hr>
									<div class="form-group">
										<h3>Mão de Obra</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="qnt_func">Qtd. de
											funcionários:</label> <input name="qnt_func" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_func">Despesa: </label> <input
											name="despesa_func" type="text" class="form-control"
											style="width: 25%">
									</div>


								</div>
								<div class="col-lg-6">

									<div class="form-group">
										<h3>Café plantado (muda)</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="tipo_muda">Tipo:</label> <input
											name="tipo_muda" type="text" class="form-control"
											style="width: 25%"> <label class="control-label"
											for="qnt_muda">Qtd.:</label> <input name="qnt_muda"
											type="text" class="form-control" style="width: 25%">

										<label class="control-label" for="despesa_muda">Despesa:</label>
										<input name="despesa_muda" type="text" class="form-control"
											style="width: 21%">
									</div>
									<hr>

									<div class="form-group">
										<h3>Outros</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="descricao">Descrição:</label>
										<input name="descricao" type="text" class="form-control"
											style="width: 51%"> <label class="control-label"
											for="descricao">Despesa:</label> <input name="despesa_outro"
											type="text" class="form-control" style="width: 20%">
									</div>
									<h3></h3>
									<div class="form-group pull-right">
										<button id="salvar" type="submit" value="salvar"
											class="btn btn-info btn-block">Salvar</button>
									</div>

								</div>


							</form>

						</div>



						<div role="tabpanel" class="tab-pane" id="colheita">

							<form method="POST" action="registraColheita">
								<div class="col-lg-6">

									<h3>Informações</h3>
									<div class="form-inline">
										<div class="form-group" style="width: 50%">
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
									<div class="form-inline">
										<label class="control-label" for="qnt_func">Qtd. de
											funcionários:</label> <input name="qnt_func" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_func">Despesa: </label> <input
											name="despesa_func" type="text" class="form-control"
											style="width: 25%">
									</div>
									<hr>

									<div class="form-group">
										<h3>Café</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="qnt_sacas">Qtd.
											colhido(saco):</label> <input name="qnt_sacas" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_saca">Preço por
											saco:</label> <input name="despesa_saca" type="text"
											class="form-control" style="width: 25%">
									</div>
								</div>
								<div class="col-lg-6">


									<div class="form-group">
										<h3>Transporte</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="n_viagens">Número
											de viagens: </label> <input name="n_viagens" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_viagens">Despesa:
										</label> <input name="despesa_viagens" type="text"
											class="form-control" style="width: 30%">
									</div>
									<hr>
									<div class="form-group">
										<h3>Outros</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="descricao">Descrição:</label>
										<input name="descricao" type="text" class="form-control"
											style="width: 51%"> <label class="control-label"
											for="descricao">Despesa:</label> <input name="despesa_outro"
											type="text" class="form-control" style="width: 20%">
									</div>
									<h3></h3>

									<div class="form-group pull-right">
										<button id="salvar" type="submit" value="salvar"
											class="btn btn-info btn-block">Salvar</button>
									</div>

								</div>

							</form>


						</div>





						<div role="tabpanel" class="tab-pane" id="poscolheita">

							<form method="POST" action="registraPosColheita">
								<div class="col-lg-6">

									<h3>Informações</h3>
									<div class="form-inline">
										<div class="form-group" style="width: 50%">
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
									<div class="form-inline">
										<label class="control-label" for="qnt_func">Qtd. de
											funcionários:</label> <input name="qnt_func" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_func">Despesa: </label> <input
											name="despesa_func" type="text" class="form-control"
											style="width: 25%">
									</div>
									<hr>


								</div>
								<div class="col-lg-6">

									<div class="form-group">
										<h3>Café no secador</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="qnt_cafe">Qtd.:</label> <input
											name="qnt_cafe" type="text" class="form-control"
											style="width: 20%"> <label class="control-label"
											for="hrs_secador">Hrs. :</label> <input name="hrs_secador"
											type="text" class="form-control" style="width: 20%">
										<label class="control-label" for="despesa_secador">Despesa:</label>
										<input name="despesa_secador" type="text" class="form-control"
											style="width: 20%">

									</div>
									<div class="form-group"></div>

									<hr>
									<div class="form-group">
										<h3>Outros</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="descricao">Descrição:</label>
										<input name="descricao" type="text" class="form-control"
											style="width: 51%"> <label class="control-label"
											for="descricao">Despesa:</label> <input name="despesa_outro"
											type="text" class="form-control" style="width: 20%">
									</div>
									<h3></h3>

									<div class="form-group pull-right">
										<button id="salvar" type="submit" value="salvar"
											class="btn btn-info btn-block">Salvar</button>
									</div>

								</div>

							</form>


						</div>





						<div role="tabpanel" class="tab-pane" id="beneficiamento">

							<form method="POST" action="registraBeneficiamento">
								<div class="col-lg-6">

									<h3>Informações</h3>
									<div class="form-inline">
										<div class="form-group" style="width: 50%">
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
									<div class="form-inline">
										<label class="control-label" for="qnt_func">Qtd. de
											funcionários:</label> <input name="qnt_func" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_func">Despesa: </label> <input
											name="despesa_func" type="text" class="form-control"
											style="width: 25%">
									</div>
									<hr>
									<div class="form-group">
										<h3>Limpeza na máquina</h3>
									</div>
									<div class="form-inline">
										<label class="control-label" for="qnt_bags">Qtd.(bag):</label>
										<input name="qnt_bags" type="text" class="form-control"
											style="width: 20%"> <label class="control-label"
											for="qnt_maquina">Hrs. :</label> <input name="hrs_maquina"
											type="text" class="form-control" style="width: 20%">
										<label class="control-label" for="despesa_maquina">Despesa:</label>
										<input name="despesa_maquina" type="text" class="form-control"
											style="width: 20%">

									</div>
								</div>

								<div class="col-lg-6">
									<div class="form-group">
										<h3>Outros</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="descricao">Descrição:</label>
										<input name="descricao" type="text" class="form-control"
											style="width: 51%"> <label class="control-label"
											for="descricao">Despesa:</label> <input name="despesa_outro"
											type="text" class="form-control" style="width: 20%">
									</div>
									<hr>
									<div class="form-group">
										<h3>Final do beneficiamento</h3>
									</div>
									<div class="form-inline">
										<label class="control-label" for="qnt_sacas">Qtd. de
											sacas:</label> <input name="qnt_sacas" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="valor_saca">Valor da saca
											vendida: </label> <input name="valor_saca" type="text"
											class="form-control" style="width: 25%">
									</div>


									<h3></h3>

									<div class="form-group pull-right">
										<button id="salvar" type="submit" value="salvar"
											class="btn btn-info btn-block">Salvar</button>
									</div>

								</div>

							</form>


						</div>


						<div role="tabpanel" class="tab-pane" id="insumos">
							<form method="POST" action="registraInsumo">
								<div class="col-lg-6">

									<h3>Informações</h3>
									<div class="form-inline">
										<div class="form-group" style="width: 50%">
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
									<div class="form-inline">
										<label class="control-label" for="area_p">Área
											trabalhada(%):</label> <input name="area_p" type="text"
											class="form-control">
									</div>
									<hr>
									<div class="form-group">
										<h3>Mão de Obra</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="qnt_func">Qtd. de
											funcionários:</label> <input name="qnt_func" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_func">Despesa: </label> <input
											name="despesa_func" type="text" class="form-control"
											style="width: 25%">
									</div>


								</div>
								<div class="col-lg-6">

									<div class="form-group">
										<h3>Insumo</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="tipo_adubo">Tipo:</label> <select
											class="form-control" style="width: 20%" id="sel1"
											name="tipo_adubo">
											<option>Insumo01</option>
											<option>Insumo02</option>
											<option>Outros</option>
										</select> <label class="control-label" for="qnt_adubo">Qtd.:</label> <input
											name="qnt_adubo" type="text" class="form-control"
											style="width: 20%"> <label class="control-label"
											for="despesa_adubo">Despesa:</label> <input
											name="despesa_adubo" type="text" class="form-control"
											style="width: 25%">
									</div>

									<div class="form-group">
										<h3>Outros</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="descricao">Descrição:</label>
										<input name="descricao" type="text" class="form-control"
											style="width: 51%"> <label class="control-label"
											for="descricao">Despesa:</label> <input name="despesa_outro"
											type="text" class="form-control" style="width: 20%">
									</div>
									<h3></h3>
									<div class="form-group pull-right">
										<button id="salvar" type="submit" value="salvar"
											class="btn btn-info btn-block">Salvar</button>
									</div>
								</div>


							</form>


						</div>



						<div role="tabpanel" class="tab-pane" id="manutencao">

							<form method="POST" action="registraManutencaoLavoura">
								<div class="col-lg-6">

									<h3>Manutenção da lavoura</h3>

									<h3>Informações</h3>
									<div class="form-inline">
										<div class="form-group" style="width: 50%">
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
									<div class="form-inline">
										<label class="control-label" for="area_p">Área
											trabalhada(%):</label> <input name="area_p" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="tipo_manutencao">Serviço:</label>
										<select class="form-control" style="width: 25%"
											name="tipo_manutencao">
											<option>Capina</option>
											<option>Retirada de erva daninha</option>
											<option>Estrada</option>
										</select>
									</div>
									<hr>
									<div class="form-group">
										<h3>Mão de Obra</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="qnt_func">Qtd. de
											funcionários:</label> <input name="qnt_func" type="text"
											class="form-control" style="width: 25%"> <label
											class="control-label" for="despesa_func">Despesa: </label> <input
											name="despesa_func" type="text" class="form-control"
											style="width: 25%">
									</div>

									<h3></h3>
									<div class="form-group pull-right">
										<button id="salvar" type="submit" value="salvar"
											class="btn btn-info btn-block">Salvar</button>
									</div>
								</div>

							</form>
							<form method="POST" action="registraManutencaoEquipamento">
								<div class="col-lg-6">

									<div class="form-group">
										<h3>Manutenção de equipamentos</h3>
									</div>

									<div class="form-inline">
										<label class="control-label" for="covas_numeros">Data:</label>
										<input name="data" type="date" class="form-control"> <label
											class="control-label" for="equipamento">Equipamento:</label>
										<select class="form-control" name="equipamento">
											<option>Secador</option>
											<option>Veículo</option>
											<option>Outros</option>
										</select>
									</div>
									<h3></h3>
									<div class="form-inline">
										<label class="control-label" for="acao">Ação feita:</label> <select
											class="form-control" name="acao">
											<option>Manutenção</option>
											<option>Obtenção de um novo</option>
											<option>Peça</option>
											<option>Outros</option>
										</select> <label class="control-label" for="despesa">Valor
											gasto</label> <input name="despesa" type="text" class="form-control">
									</div>


									<h3></h3>
									<div class="form-group pull-right">
										<button id="salvar" type="submit" value="salvar"
											class="btn btn-info btn-block">Salvar</button>
									</div>

								</div>


							</form>

						</div>





						<div role="tabpanel" class="tab-pane" id="despesasadicionais">

							<form method="POST" action="registraDespesasAdd">
								<div class="col-lg-6">

									<h3>Despesas adicionais</h3>

									<div class="form-inline">
										<div class="form-group" style="width: 50%">
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
									<div class="form-inline">
										<label class="control-label" for="tipo_despesa">Tipo da despesa:</label>
										<select class="form-control" style="width: 25%"
											name="tipo_despesa">
											<option>Multa</option>
											<option>ITR</option>
											<option>imposto</option>
											<option>Combustível</option>
											<option>Taxa</option>
											<option>Outros</option>
										</select> <label class="control-label" for="despesa">
											Despesa: </label> <input name="despesa" type="text"
											class="form-control" style="width: 25%">
									</div>
									<hr>
									
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

			</div>
		</div>

	</div>


	<!-- Team Members Row -->
	<div class="row">


		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
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