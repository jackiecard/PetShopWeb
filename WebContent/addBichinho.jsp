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
			<div class="nav">
			 <a href="index.jsp">
			<img alt="" src="imagens/logout.png" class="navimg">
			</a>
			</div>		
			<div class="centroTela">
				<img src ="imagens/caopanhia.png" class="topo" border="0">
				<div class="areaAddBichinho">
					<form class="form-horizontal" METHOD=POST ACTION="addsucesso.jsp" role="form">
					<div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Nome:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="nome" id="inputEmail3" 
					      	placeholder="Nome do bichinho">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Raça:&nbsp;</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="raca" id="inputEmail3" 
					      placeholder="Raça">
					    </div>
					  </div>	
					  
					  </div>
					<div  class="radios">
					
					<label>Espécie:</label>
					  <label class="radio-inline">
					  <input type="radio" name="especie" id="inlineRadio1" value="Cachorro"> Cachorro
					</label>
					<label class="radio-inline">
					  <input type="radio" name="especie" id="inlineRadio2" value="Gato"> Gato
					</label>
					<br><br>
					  
					  <label>Porte:</label>
					  <label class="radio-inline">
					  <input type="radio" name="porte" id="inlineRadio1" value="Pequeno"> Pequeno
					</label>
					<label class="radio-inline">
					  <input type="radio" name="porte" id="inlineRadio2" value="Medio"> Medio
					</label>
					<label class="radio-inline">
					  <input type="radio" name="porte" id="inlineRadio3" value="Grande"> Grande
					</label>
					
					<br><br>
					<label>Pelagem:</label>
					  <label class="radio-inline">
					  <input type="radio" name="pelagem" id="inlineRadio1" value="Curta"> Curta
					</label>
					<label class="radio-inline">
					  <input type="radio" name="pelagem" id="inlineRadio2" value="Longa"> Longa
					</label>
					<label class="radio-inline">
					  <input type="radio" name="pelagem" id="inlineRadio3" value="Dura"> Dura
					</label>
					</div>
						
						<div class="loginEspaco">
							  <button type="submit" type="button" class="botaoAdd">&nbsp;</button>
							  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <button type="button" class="botaoExcluir">&nbsp;</button>
						</div>
					</form>
			</div>
		</div>
		<br>
	</div>
</div>


</body>
</html>