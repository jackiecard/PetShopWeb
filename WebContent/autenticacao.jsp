<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.DonoMySQL"%>
<%@page import="model.Dono"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuário - C&atildeopanhia PetShop</title>


<HTML>
<body class="body">
<%
	Dono dono = new Dono();

	String nome = request.getParameter( "nome" );
	session.setAttribute("nome", nome);
	nome = "" + session.getAttribute("nome");

   
%>

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
					<p>
					Olá, <%= nome%>!
					<BR>Seu cadastro foi realizado com sucesso!
					Clique em "Ok" para ir para o seu perfil!
					</p>
					<div class="loginEspaco">
					<a href="addBichinho.jsp">
					<button type="button" class="botaoOk">&nbsp;</button>
					</a>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
</div>
