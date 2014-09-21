<%@page import="dao.AgendamentoMySQL"%>
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
<%@page import="java.util.Date"%>
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
	// id ok
	String id = "" + session.getAttribute("id");
	int idAnimal = Integer.parseInt(id);
	
	// tipo ok
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
	valor = "" + session.getAttribute("valor");
	double valorServico = Double.parseDouble("" + valor);
	
	// data ok
	Data dataConverte = new Data();
	Date dataConvertida = dataConverte.convertaDeString(data, hora);
	
	AnimalMySQL bancoAnimal = new AnimalMySQL();
	Animal n = bancoAnimal.find(idAnimal);
	
	Agendamento agendamento = new Agendamento();
	//Animal Id
	agendamento.setAnimal_id(n.getId());
	//Data convertida
	agendamento.setData(dataConvertida);
	//Tipo
	agendamento.setTipo(tipo);
	//Valor
	agendamento.setValor(valorServico);
	//Salva o agendamento no banco
	AgendamentoMySQL agendamentoBanco = new AgendamentoMySQL();
	agendamentoBanco.save(agendamento);
	
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
					<h4 class="listaAnimais">
					<b>Tipo de serviço:</b> <%=tipo %><BR><BR>
					<b>Data:</b>  <%=data%><BR><BR>
					<b>Horário:</b>  <%=hora%><BR><BR>
					<b>Valor:</b>  R$<%=valorServico %>
					</h4>
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
