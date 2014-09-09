<%@page import="dao.MySQL"%>
<%@page import="model.Animal"%>
<%@page import="java.util.List"%>
<%@page import="dao.AnimalMySQL"%>
<html>
	<head>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	</head>
	<body class="body">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
			<br>
				<div class="well well-lg">
					<div class="centroTela">
						<img src ="imagens/topo.png" border="0">
						<div class="loginEspaco">
							<!-- Login -->
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
								<input type="text" class="form-control" placeholder="Login">
							</div>
							<br>
							<!-- Senha -->
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
								<input type="password" id="exampleInputPassword1" class="form-control" placeholder="Senha">
							</div>
							<br>
							<img alt="" src="imagens/ok.png" class="icones">
							<a href="cadastro.jsp" target="_self">
								<img alt="" src="imagens/cadastrese.png" class="icones">
							</a>
						</div>
					</div>
				</div>
			</div>		
		</div>
	</body>
</html>
<%-- 	<%
					AnimalMySQL animal = new AnimalMySQL();
					List<Animal> animals = animal.list(); 
					for (Animal anim : animals) {
				%>
					<p class="my-class"><%=anim.toString() %></p>
				<%
					}
				%> --%>