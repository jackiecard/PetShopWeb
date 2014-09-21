<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DonoMySQL"%>
<%@page import="model.Dono"%>
<%@page import="model.Animal"%>
<%@page import="java.util.List"%>
<%@page import="dao.AnimalMySQL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>C&atildeopanhia PetShop</title>
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
				<%
					String login = request.getParameter( "login" );
					session.setAttribute("login", login);
					login = "" + session.getAttribute("login");
					
					String senha = request.getParameter( "senha" );
					session.setAttribute("senha", senha);
					senha = "" + session.getAttribute("senha");
					
					DonoMySQL dono = new DonoMySQL();
					Dono d = dono.autentica(login, senha);
					int idDono = d.getId(); 
					
					session.setAttribute("idDono", idDono);
					
					AnimalMySQL animalMy = new AnimalMySQL();
					ArrayList<Animal>animais = animalMy.procuraAnimais(idDono);
					d.setMeusAnimais(animais);
					
			%>
				<p>Olá, <%=login%>! Clique em "Agendar" para requisitar um serviço.</p>
			<% 
					if(animais.isEmpty()){ %>
						<p>Não há animais cadastrados.<BR>
						Clique em "Add" para começar a usar o aplicativo.</p>
			<%		}
					else{
						for(Animal animal : animais){%>
						<div class="listaAnimais">
						<div class="row">
						<div class="col-md-8">
						<h4><%=animal.getNome()%></h4>
						</div>
						<div class="col-md-4">
						<form class="formUsuario" action="agendar.jsp" method="get">
						<button type="submit" name="id" value="<%=animal.getId()%>">Agendar</button></form>
						<form class="formUsuario" action="editar.jsp" method="get">
						<button type="button" ACTION="editar.jsp" name="id" value="<%=animal.getId()%>">Editar</button>
						</form>
						</div>
						</div>
						</div>
						
			<%}
					}
			%>
					<div class="loginEspaco">
					<a href="addBichinho.jsp">
					<button type="button" class="botaoAdd">&nbsp;</button>
					</a>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>
</div>


</body>
</html>