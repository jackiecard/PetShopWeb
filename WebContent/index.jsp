<%@page import="dao.MySQL"%>
<%@page import="model.Animal"%>
<%@page import="java.util.List"%>
<%@page import="dao.AnimalMySQL"%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	</head>
	<body>
		<div class="row">
			<div class="col-md-offset-4 col-md-4">
				<img src ="imagens/topo.png" border="0">
				<%
					AnimalMySQL animal = new AnimalMySQL();
					List<Animal> animals = animal.list();             
			
					for (Animal anim : animals) {
				%>
					<p class="my-class"><%=anim.toString() %></p>
				<%
					}
			
				%>
				<button class="btn btn-danger" type="button">Clique aqui!</button>
			</div>		
		</div>
	</body>
</html>