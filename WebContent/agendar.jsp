<%@page import="dao.DonoMySQL"%>
<%@page import="dao.AnimalMySQL"%>
<%@page import="model.Animal"%>
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
<title>Agendar Serviço - C&atildeopanhia PetShop</title>
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
				<div class="areaAgendar">
				<form class="form-horizontal" METHOD=POST ACTION="agendadosucesso.jsp" role="form">
					
				<%
					String id = request.getParameter( "id" );
					session.setAttribute("id", id);
					int idAnimal = Integer.parseInt("" + session.getAttribute("id"));
					AnimalMySQL banco = new AnimalMySQL();
					Animal animal = banco.find(idAnimal);
					DonoMySQL bancoDono = new DonoMySQL();
					Dono donoAnimal = bancoDono.find(animal.getDono_id());
				%>
					<label>Tipo:</label>
					  <label class="radio-inline">
					  <input type="radio" name="tipo" id="inlineRadio1" value="banho"> Banho
					</label>
					<label class="radio-inline">
					  <input type="radio" name="tipo" id="inlineRadio2" value="tosa"> Tosa
					</label>
					<br><br>
					
					<label>Data:</label>
					  <label>
					  <input id="field_startdate" size="12" placeholder="dd/mm/yyyy" name="data" type="text">
					   </label>
					   <label>Horário:</label>
					    <label>
					   <input id="field_starttime" size="12" name="hora" type="text" placeholder="00:00">
					   </label>
					  <br><br>
					  
					  <p><b>Valor do serviço:</b></p>
					  <%
					  		String tipo = request.getParameter( "tipo" );
							session.setAttribute("tipo", tipo);
							tipo = "" + session.getAttribute("tipo");
							
						  double valor = 0;
						  
					  	  if(tipo.equalsIgnoreCase("banho")){
					  		  valor += 4;
					  	  }
					  	  if(tipo.equalsIgnoreCase("tosa")){
						  	  valor += 7.5;
					  	  }
					  	  /* Valor para cães */
						  if(animal.getEspecie().equalsIgnoreCase("cachorro")){
							  valor += 5;
							  if(animal.getPelagem().equalsIgnoreCase("curta")){
								  valor += 1.5;
							  }else if(animal.getPelagem().equalsIgnoreCase("longa")){
								  valor += 4;
							  }else if(animal.getPelagem().equalsIgnoreCase("dura")){
								  valor += 2;
							  }
							  if(animal.getPorte().equalsIgnoreCase("p")){
								  valor += 1.5;
							  }
							  if(animal.getPorte().equalsIgnoreCase("m")){
								  valor += 3;
							  }
							  if(animal.getPorte().equalsIgnoreCase("g")){
								  valor += 5;
							  }
						  }
						  /* Valor para gatos */
						  if(animal.getEspecie().equalsIgnoreCase("gato")){
							  valor += 3;
							  if(animal.getPelagem().equalsIgnoreCase("curta")){
								  valor += 1;
							  }else if(animal.getPelagem().equalsIgnoreCase("longa")){
								  valor += 7;
							  }
						  }
						  /* Valor para TaxiDog */
						  valor += 10;
					  %>

					  <h4>R$<%=valor%></h4>

					  
					  <p><b>Endereço do TaxiDog:</b></p>
					  <p><%=donoAnimal.getEndereco()%></p>
						<div  class="loginEspaco">
							  <button type="submit" class="botaoAdd">&nbsp;</button>
							  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <button type="submit" class="botaoExcluir">&nbsp;</button>
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