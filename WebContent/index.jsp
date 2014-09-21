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
		<title>C&atildeopanhia PetShop</title>
	</head>
	<body class="body">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
			<br>
				<div class="caixa">
					<div class="centroTela">
						<img src ="imagens/caopanhia.png" class="topo" border="0">
						<div class="loginEspaco">
							<form METHOD=POST ACTION="usuario.jsp" >
							<!-- Login -->
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
								<input type="text" name="login" class="form-control" placeholder="Login">
							</div>
							<br>
							<!-- Senha -->
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
								<input type="password" name = "senha" id="exampleInputPassword1" class="form-control" placeholder="Senha">
							</div>
							<br>
							<button  type="submit" class="botaoOk">&nbsp;</button>
							<a href="cadastro.jsp" target="_self">
								<button type="button" class="botaoCadastrese">&nbsp;</button>
							</a>
							</form>
						</div>
					</div>
				</div>
				<br>
			</div>		
		</div>
	</body>
</html>