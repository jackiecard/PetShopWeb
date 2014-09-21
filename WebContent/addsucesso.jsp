<%@page import="dao.AnimalMySQL"%>
<%@page import="model.Animal"%>
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
	Animal animal = new Animal();
	String nome = request.getParameter( "nome" );
	session.setAttribute("nome", nome);
	String raca = request.getParameter( "raca" );
	session.setAttribute("raca", raca);
	String especie = request.getParameter( "especie" );
	session.setAttribute("especie", especie);
	String porte = request.getParameter( "porte" );
	session.setAttribute("porte", porte);
	String pelagem = request.getParameter( "pelagem" );
	session.setAttribute("pelagem", pelagem);

	nome = "" + session.getAttribute("nome");
	raca = "" + session.getAttribute("raca");
	especie = "" + session.getAttribute("especie");
	porte = "" + session.getAttribute("porte");
	pelagem = "" + session.getAttribute("pelagem");
	
	String idDono = request.getParameter("idDono");
	int dono_id = Integer.parseInt("" + session.getAttribute("idDono"));
	
	if(porte.equalsIgnoreCase("Pequeno")){
		porte = "p";
	}else if(porte.equalsIgnoreCase("Medio")){
		porte = "m";
	}else if(porte.equalsIgnoreCase("Grande")){
		porte = "g";
	}
	
	animal = new Animal(nome, dono_id, raca, pelagem, porte, especie);
	AnimalMySQL banco = new AnimalMySQL();
	banco.save(animal);
   
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
					O bichinho <%= nome%> foi adicionado com sucesso!
					<BR><%= dono_id%>Seu cadastro foi realizado com sucesso!
					Clique em "Ok" para ir para o seu perfil!
					</p>
					<div class="loginEspaco">
					<a href="usuario.jsp">
					<button type="button" class="botaoOk">&nbsp;</button>
					</a>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
</div>
