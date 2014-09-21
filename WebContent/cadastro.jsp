<%@page import="dao.DonoMySQL"%>
<%@page import="model.Dono"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro - C&atildeopanhia PetShop</title>
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
				<div class="loginEspaco">
					<div class="cadastro">
					<form class="form-horizontal" METHOD=POST ACTION="sucesso.jsp" role="form">
					<div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Username:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="nome" id="inputEmail3" 
					      	placeholder="Username">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">E-mail:</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" name="email" id="inputEmail3" 
					      placeholder="@">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">Senha:</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control" name="senha" id="inputPassword3" 
					      placeholder="Password">
					    </div>
					  </div>
						<div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Telefone:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="telefone" id="inputEmail3" placeholder="Telefone">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Endereço:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="endereco" id="inputEmail3" 
					      placeholder="Rua, Bairro, CEP, Cidade">
					    </div>
					  </div>
					 </div>
						<div  class="loginEspaco">
							<button type="submit" class="botaoOk">&nbsp;</button>
							  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="botaoExcluir">&nbsp;</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<br>
	</div>
</div>


</body>
</html>