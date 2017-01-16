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
                            <li role="presentation" class="active"><a href="#plantio" aria-controls="plantio" role="tab" data-toggle="tab">Plantio</a></li>
                            <li role="presentation"><a href="#colheita" aria-controls="colheita" role="tab" data-toggle="tab">Colheita</a></li>
                            <li role="presentation"><a href="#beneficiamento" aria-controls="beneficiamento" role="tab" data-toggle="tab">Beneficiamento</a></li>
                            <li role="presentation"><a href="#insumos" aria-controls="insumos" role="tab" data-toggle="tab">Aplicação de insumos</a></li>
                            <li role="presentation"><a href="#manutencao" aria-controls="manutencao" role="tab" data-toggle="tab">Manutenção </a></li>
                            
                         </ul>
                         
                         <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="plantio">
                                <form method="POST" action="registraPlantio">  
                                 	<div class="col-lg-6">
                                 	
                                 	<h3> Informações</h3>
						            <div class="form-group">
									<label class="control-label" for="data">Data de ocorência:</label> <input
										name="data" type="date" class="form-control">
									</div>
						
						             <div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
									class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
							         </div>
							         
							         <div class="form-group">
									<label class="control-label" for="area_p">Área trabalhada(%):</label> <input
											name="area_p" type="text" class="form-control">
									</div>
									
									<div class="form-group">		
									<label class="control-label" for="qnt_func">Quantidade de funcionários:</label> <input
											name="qnt_func" type="text" class="form-control">
							        </div>
							        <div class="form-group">
									<label class="control-label" for="despesa_func">Despesa com funcionários:</label> <input
											name="despesa_func" type="text" class="form-control">
								    </div>
								  
								     </div>
								    <div class="col-lg-6">
						     		
						     		<div class="form-group">					   						
									<h3>Café plantado (muda)</h3>
									</div>
									
									    <div class="form-group">
									 	<label class="control-label" for="tipo_muda">Tipo:</label> <input
										name="tipo_muda" type="text" class="form-control">
										</div>
										
										<div class="form-group">
									    <label class="control-label" for="qnt_muda">Quantidade de mudas:</label> <input
										name="qnt_muda" type="text" class="form-control">
										</div>
										
										<div class="form-group">			
										<label class="control-label" for="despesa_muda">Despesa:</label> <input
										name="despesa_muda" type="text" class="form-control">
										</div>
										
										<div class="form-group" >
											<button id="salvar" type="submit" value= "salvar" class="btn btn-info btn-block">Salvar</button>
										</div>
											
								</div>
								
								
							</form>
                            
                         </div>
                         
                            
                        <div role="tabpanel" class="tab-pane" id="colheita">
                            
                            <form method="POST" action="registraColheita">  
                                 	<div class="col-lg-6">
                                 	
                                 	<h3> Informações</h3>
						            <div class="form-group">
									<label class="control-label" for="data">Data de ocorência:</label> <input
										name="data" type="date" class="form-control">
									</div>
						
						             <div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
									class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
							         </div>
							         
									<div class="form-group">		
									<label class="control-label" for="qnt_func">Quantidade de funcionários:</label> <input
											name="qnt_func" type="text" class="form-control">
							        </div>
							       </div>
								    <div class="col-lg-6">
						     		
						     		<div class="form-group">					   						
									<h3>Café</h3>
									</div>
									
									    <div class="form-group">
									 	<label class="control-label" for="qnt_sacas">Quantidade colhida(sacas):</label> <input
										name="qnt_sacas" type="text" class="form-control">
										</div>
										
										<div class="form-group">
									    <label class="control-label" for="cdespesa_saca">Preço da saca:</label> <input
										name="despesa_saca" type="text" class="form-control">
										</div>
										
										<div class="form-group" >
											<button id="salvar" type="submit" value= "salvar" class="btn btn-info btn-block">Salvar</button>
										</div>
											
								</div>
							
							</form>
                            
                            
                        </div>
                        
                       <div role="tabpanel" class="tab-pane" id="beneficiamento">
                            
                          <form method="POST" action="registraBeneficiamento">  
                                 	<div class="col-lg-6">
                                 	
                                 	<h3> Informações</h3>
						            <div class="form-group">
									<label class="control-label" for="data">Data de ocorência:</label> <input
										name="data" type="date" class="form-control">
									</div>
						
						             <div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
									class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
							         </div>
							         
							         <div class="form-group">
									<label class="control-label" for="qnt_func">Número de funcionários:</label> <input
											name="qnt_func" type="text" class="form-control">
									</div>
									
									<div class="form-group">		
									<label class="control-label" for="despesa_func">Despesa com funcionários:</label> <input
											name="despesa_func" type="text" class="form-control">
							        </div>
							       </div>
								    <div class="col-lg-6">
						     		
						     		<div class="form-group">					   						
									<h3>Café</h3>
									</div>
									
									    <div class="form-group">
									 	<label class="control-label" for="qnt_café">Quantidade de café:</label> <input
										name="qnt_café" type="text" class="form-control">
										</div>
										
										<div class="form-group">
									    <label class="control-label" for="horas">Horas de secador:</label> <input
										name="horas" type="text" class="form-control">
										</div>
										
										<div class="form-group">
									    <label class="control-label" for="despesa_horas">Custo da hora de secador:</label> <input
										name="despesa_horas" type="text" class="form-control">
										</div>
										
										<div class="form-group" >
											<button id="salvar" type="submit" value= "salvar" class="btn btn-info btn-block">Salvar</button>
										</div>
											
								</div>
							
							</form>    
                            
                            
                       </div>
                           
                           
                       <div role="tabpanel" class="tab-pane" id="insumos">
                           <form method="POST" action="registraInsumo">  
                                 	<div class="col-lg-6">
                                 	
                                 	<h3> Informações</h3>
						            <div class="form-group">
									<label class="control-label" for="data">Data de ocorência:</label> <input
										name="data" type="date" class="form-control">
									</div>
						
						             <div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
									class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
							         </div>
							         
							         <div class="form-group">
									<label class="control-label" for="area">Área trabalhada(%):</label> <input
											name="area" type="text" class="form-control">
									</div>
									
									<div class="form-group">		
									<label class="control-label" for="qnt_func">Quantidade de funcionários:</label> <input
											name="qnt_func" type="text" class="form-control">
							        </div>
							        <div class="form-group">
									<label class="control-label" for="despesa_func">Despesa com funcionários:</label> <input
											name="despesa_func" type="text" class="form-control">
								    </div>
								  
								     </div>
								    <div class="col-lg-6">
						     		
						     		<div class="form-group">					   						
									<h3>Insumo</h3>
									</div>
									
									    <div class="form-group">
									 	<label class="control-label" for="tipo_insumos">Tipo:</label> <input
										name="tipo_insumos" type="text" class="form-control">
										</div>
										
										<div class="form-group">
									    <label class="control-label" for="qnt_insumos">Quantidade de insumo:</label> <input
										name="qnt_insumos" type="text" class="form-control">
										</div>
										
										<div class="form-group">			
										<label class="control-label" for="despesa_insumos">Despesa com insumo:</label> <input
										name="despesa_insumos" type="text" class="form-control">
										</div>
										
										<div class="form-group" >
											<button id="salvar" type="submit" value= "salvar" class="btn btn-info btn-block">Salvar</button>
										</div>
											
								</div>
								
								
							</form>
                           
                            
                       </div>
                       
                       
                       
                       <div role="tabpanel" class="tab-pane" id="manutencao">
                       
                       <form method="POST" action="registraManutencaoLavoura">  
                                 	<div class="col-lg-6">
                                 	
                                 	<h3> Manutenção da lavoura</h3>
                                 	
                                 	
                                 	
                                 	<div class="form-group">
                                 	<label class="control-label" for="tipo_manutencao">Tipo:</label>
                                 	<select class="form-control" name="tipo_manutencao">
  											<option>Capina</option>
  											<option>Retirada de erva daninha</option>
  											<option>Estrada</option>
									</select>
                                 	</div>
                                 	
						            <div class="form-group">
									<label class="control-label" for="data">Data de ocorência:</label> <input
										name="data" type="date" class="form-control">
									</div>
						
						             <div class="form-group">
									<label for="lavoura">Lavoura:</label> <select
									class="form-control" id="sel1" name="id_propriedade">
										<c:forEach var="lavoura" items="${lavouras}">
											<option value="${lavoura.id_propriedade}">${lavoura.nome}</option>
										</c:forEach>
									</select>
							         </div>
							         
							         
							         
							         
							         <div class="form-group">
									<label class="control-label" for="area">Área trabalhada(%):</label> <input
											name="area" type="text" class="form-control">
									</div>
									
									<div class="form-group">		
									<label class="control-label" for="qnt_func">Quantidade de funcionários:</label> <input
											name="qnt_func" type="text" class="form-control">
							        </div>
							        <div class="form-group">
									<label class="control-label" for="despesa_func">Despesa com funcionários:</label> <input
											name="despesa_func" type="text" class="form-control">
								    </div>
								  
								   <div class="form-group" >
											<button id="salvar" type="submit" value= "salvar" class="btn btn-info btn-block">Salvar</button>
										</div>
								     </div>
								     
								 </form>
								  <form method="POST" action="registraManutencaoEquipamento">  
								    <div class="col-lg-6">
						     		
						     		<div class="form-group">					   						
									<h3>Manutenção de equipamentos</h3>
									</div>
									
									  <div class="form-group">
									<label class="control-label" for="covas_numeros">Data:</label> <input
										name="data" type="date" class="form-control">
									</div>
									
									    <div class="form-group">
                                 	  <label class="control-label" for="equipamento">Equipamento:</label>
                                 	     <select class="form-control" name = "equipamento">
  											<option>Secador</option>
  											<option>Veículo</option>
  											<option>Outros</option>
									   </select>
                                 	  </div>
                                 	  
                                 	   <div class="form-group">
                                 	  <label class="control-label" for="acao">Ação feita:</label>
                                 	     <select class="form-control" name = "acao">
  											<option>Manutenção</option>
  											<option>Obtenção de um novo</option>
  											<option>Peça</option>
  											<option>Outros</option>
									   </select>
                                 	  </div>
										
										<div class="form-group">
									    <label class="control-label" for="despesa">Valor gasto</label> <input
										name="despesa" type="text" class="form-control">
										</div>
									
										
										<div class="form-group" >
											<button id="salvar" type="submit" value= "salvar" class="btn btn-info btn-block">Salvar</button>
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