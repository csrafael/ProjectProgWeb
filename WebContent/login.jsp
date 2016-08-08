<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <link href="resources/css/teste1.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">

function validateForm(){
	var login = document.forms["login"]["login"].value;
	var senha = document.forms["login"]["senha"].value;
	
	if(login == null || login == ""){
		alert("Insira seu login!");
		return false;
	} else if(senha == null || senha == ""){
		alert("Insira sua senha!");
		return false;
	}
}
</script>
<body>
	
	<!--  
	<form name="login" action="controller" method="post" onsubmit="return validateForm()">
				Login: <input type="text" name="login"><br>
				Senha: <input type="password" name="senha"><br> 
				<input type="submit" value="Entrar" />
				<input type="hidden" value="Login" name="opcao"/>
	</form>
	-->
	<div class="container-fluid bg-1 text-center">    
  		<div class="row content">
  		 	<div class="col-sm-4">
    
    		</div>
    		
    		<div class="col-sm-4 text-center conteudo"> 
				<h2>Login no Sistema</h2>
				<p style="color: red">${msg}</p>
				<form role="form" action="login" method="post"> 
					<div class="form-group">
						<label for="nome">Usuário:</label>
						<input type="text" name="login" class="form-control" id="login" placeholder="Digite o usuário"/>
					</div>
					<div class="form-group"> 
						<label for="senha">Senha:</label>
						<input type="password" name="password" class="form-control" id="password" placeholder="Digite a Senha"/>
					</div>
					<br> <input type="submit" class="btn btn-default" value="Entrar" onclick="return validateForm()" />
					<br> <a href="new-user.jsp">Não é cadastrado? Cadastre-se aqui.</a>
				</form>
    		</div>
	    	<div class="col-sm-4 ">
    		</div>
  		</div>
	</div>
	
</body>
</html>