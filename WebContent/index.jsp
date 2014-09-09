<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.swing.JDialog"%>
<%@page import="model.Dono"%>
<%@page import="dao.DonoMySQL"%>
<%@page import="dao.MySQL"%>
<%@page import="model.Animal"%>
<%@page import="java.util.List"%>
<%@page import="dao.AnimalMySQL"%>
<html>
	<head>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
		<script type="text/javascript">
	    	var message = alert("O Login e a Senha não conferem!");
		</script>
	</head>
	<body class="body">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
			<br>
				<div class="caixa">
					<div class="centroTela">
						<img src ="imagens/topo.png" border="0">
						<div class="loginEspaco">
						<% String login = "", senha = ""; 
							int idDono = -1;%>
							<!-- Login -->
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
								<input type="text" name="login" class="form-control" placeholder="Login">
								<%=login = request.getParameter(login)%>
							</div>
							<br>
							<!-- Senha -->
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
								<input type="password" name = "senha" id="exampleInputPassword1" class="form-control" placeholder="Senha">
								<%=senha = request.getParameter(senha)%>
							</div>
							<%
								String idS = "";
								DonoMySQL dono = new DonoMySQL();
								Dono d = dono.autentica(login, senha);
								if(login != null && senha != null){
									if(d.getNome() == login && d.getSenha() == senha){
										idDono = d.getId();
										idS = idDono + "";
										
									}
								}
							%>
							<br>
							<a href="usuario.jsp?id=idS" target="_self">
							<img alt="" src="imagens/ok.png" class="icones">
							</a>
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