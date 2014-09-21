<%@page import="sun.security.jca.GetInstance"%>
<%@page import="java.util.Calendar"%>
<%@page import="model.Agendamento"%>
<%@page import="dao.AnimalMySQL"%>
<%@page import="model.Animal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.DonoMySQL"%>
<%@page import="model.Dono"%>
<%@page import="control.Data"%>
<%@page import="java.util.GregorianCalendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>C&atildeopanhia PetShop</title>


<HTML>
<body class="body">
<%
	String id = request.getParameter( "id" );
	session.setAttribute("id", id);
	id = "" + session.getAttribute("id");
	
	String tipo = request.getParameter( "tipo" );
	session.setAttribute("tipo", tipo);
	tipo = "" + session.getAttribute("tipo");

	String data = request.getParameter( "data" );
	session.setAttribute("data", data);
	data = "" + session.getAttribute("data");

	String hora = request.getParameter( "hora" );
	session.setAttribute("hora", hora);
	hora = "" + session.getAttribute("hora");

	String valor = request.getParameter( "valor" );
	session.setAttribute("valor", valor);
	valor = "" + session.getAttribute("valor");
	
	String date = data + " " + hora;
	
	AnimalMySQL bancoAnimal = new AnimalMySQL();
	Animal n = bancoAnimal.find(Integer.parseInt(id));
	
	Agendamento agendamento = new Agendamento();
	agendamento.setAnimal_id(n.getId());
	
	Calendar c = GregorianCalendar.getInstance();
	c.set(Calendar.LONG_FORMAT, Integer.parseInt(date));
	agendamento.setData(c.getTime());
	
	agendamento.setId(n.getDono_id());
	agendamento.setTipo(tipo);
	agendamento.setValor(Double.parseDouble(valor));
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
					O bichinho <%= n.getNome()%> foi agendado com sucesso!
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
