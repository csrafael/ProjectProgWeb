<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Login - UFABCShare</title>
	
	  	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="bootstrap/css/style.css" rel="stylesheet">
	</head>
	
	<script src="bootstrap/js/jquery.js"></script>
 	<script src="bootstrap/js/bootstrap.min.js"></script>
		
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
	
		<p style="color: red">${msg}</p>	
		<form role="form" action="login" method="post"> 
			<div class="form-group">
				<label for="nome">Usuário:</label>
				<input type="text" name="usuario" class="form-control" id="usuario" placeholder="Digite o usuário"/>
			</div>
			<div class="form-group"> 
				<label for="email">Senha:</label>
				<input type="password" name="senha" class="form-control" id="senha" placeholder="Digite a Senha"/>
			</div>
			<br> <input type="submit" class="btn btn-default" value="Entrar" onclick="return validaCampos()" />
			<br> <a href="cadastraUsuario.jsp">Não é cadastrado? Cadastre-se aqui.</a>
		</form>
	
	<form name="login" action="controller" method="post" onsubmit="return validateForm()">
				Login: <input type="text" name="login"><br>
				Senha: <input type="password" name="senha"><br> 
				<input type="submit" value="Entrar" />
				<input type="hidden" value="Login" name="opcao"/>
	</form>
</body>
</html>