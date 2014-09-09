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
<title>Cadastro</title>
</head>
<body class="body">

<div class="row">
	<div class="col-md-offset-3 col-md-6">
	<br>
		<div class="well well-lg">
			<div class="centroTela">
				<img src ="imagens/topo.png" border="0">
				<div class="loginEspaco">
				<%
					Dono dono = new Dono();
					String nome = "", telefone = "", endereco = "", email = "", senha = "";
					
				%>
					<!--  <p class="my-class">%=anim.toString() %></p>-->
				
					<form class="form-horizontal" role="form">
					<div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Nome Completo:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="nome" id="inputEmail3" placeholder="Nome">
					      <%=nome=request.getParameter("nome")%>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" name="email" id="inputEmail3" placeholder="Email">
					    <%=email=request.getParameter("email")%>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control" name="senha" id="inputPassword3" placeholder="Password">
					    	<%=senha=request.getParameter("senha")%>
					    </div>
					  </div>
						<div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Telefone:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="telefone" id="inputEmail3" placeholder="Telefone">
					      <%=telefone=request.getParameter("telefone")%>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Endereço completo:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" name="endereco" id="inputEmail3" placeholder="Rua, Bairro, CEP, Cidade">
					   	<%=endereco=request.getParameter("endereco")%>
					    </div>
					  </div>
					<%
						dono.setNome(nome);
						dono.setSenha(senha);
						dono.setEmail(email);
						dono.setEndereco(endereco);
						dono.setTelefone(telefone);
						DonoMySQL donoMy = new DonoMySQL();
						if(dono.getNome() != null && dono.getSenha() != null && dono.getEmail() != null
								&& dono.getEndereco() != null && dono.getTelefone() != null){
							donoMy.save(dono);
						}
					%>
						<button type="submit" class="btn btn-default">Cadastrar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>