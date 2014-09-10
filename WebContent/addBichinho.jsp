<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastrar Bichinho - C&atildeopanhia PetShop</title>
</head>
<body class="body">

<div class="row">
	<div class="col-md-offset-3 col-md-6">
	<br>
		<div class="caixa">
			<div class="centroTela">
				<img src ="imagens/topo.png" border="0">
				<div class="areaAddBichinho">
				<%
					String nome, raca, pelagem, porte, especie;
					
				%>
					<form class="form-horizontal" role="form">
					<div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Nome:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="nome" id="inputEmail3" 
					      	placeholder="Nome do bichinho">
					      <%nome=request.getParameter("nome");%>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Raça:&nbsp;</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" name="raca" id="inputEmail3" 
					      placeholder="Raça">
					    <%raca=request.getParameter("raca");%>
					    </div>
					  </div>	
					  
					  </div>
					<div  class="radios">
					
					<label>Espécie:</label>
					  <label class="radio-inline">
					  <input type="radio" name="especie" id="inlineRadio1" value="option1"> Cachorro
					</label>
					<%especie=request.getParameter("especie");%>
					<label class="radio-inline">
					  <input type="radio" name="especie" id="inlineRadio2" value="option2"> Gato
					</label>
					<%especie=request.getParameter("especie");%>
					<br><br>
					  
					  <label>Porte:</label>
					  <label class="radio-inline">
					  <input type="radio" name="porte" id="inlineRadio1" value="option1"> Pequeno
					</label>
					<%porte=request.getParameter("porte");%>
					<label class="radio-inline">
					  <input type="radio" name="porte" id="inlineRadio2" value="option2"> Médio
					</label>
					<%porte=request.getParameter("porte");%>
					<label class="radio-inline">
					  <input type="radio" name="porte" id="inlineRadio3" value="option3"> Grande
					</label>
					<%porte=request.getParameter("porte");%>
					
					<%
						if(porte == "Pequeno"){
							porte = "p";
						}else if(porte == "Médio"){
							porte = "m";
						}else if(porte == "Grande"){
							porte = "g";
						}
					%>
					
					<br><br>
					<label>Pelagem:</label>
					  <label class="radio-inline">
					  <input type="radio" name="pelagem" id="inlineRadio1" value="option1"> Curta
					</label>
					<%pelagem=request.getParameter("pelagem");%>
					<label class="radio-inline">
					  <input type="radio" name="pelagem" id="inlineRadio2" value="option2"> Longa
					</label>
					<%pelagem=request.getParameter("pelagem");%>
					<label class="radio-inline">
					  <input type="radio" name="pelagem" id="inlineRadio3" value="option3"> Dura
					</label>
					<%pelagem=request.getParameter("pelagem");%>
					</div>
						
						<div class="loginEspaco">
							  <img alt="Adicionar Animal" src="imagens/add.png">
							  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <img alt="Exluir Animal" src="imagens/excluir.png">
							
						</div>
					</form>
			</div>
		</div>
	</div>
</div>


</body>
</html>