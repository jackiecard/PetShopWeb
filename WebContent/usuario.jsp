<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css">-->
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuário - C&atildeopanhia PetShop</title>
</head>
<body class="body">

<div class="row">
	<div class="col-md-offset-3 col-md-6">
	<br>
		<div class="caixa">
			<div class="centroTela">
				<img src ="imagens/topo.png" border="0">
				<div class="areaAddBichinho">
				<%
					String idS = request.getParameter("id");
				%>
				<p><% %></p>
					<div class="loginEspaco">
					<a href="addBichinho.jsp">
					<img src="imagens/add.png">
					</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>