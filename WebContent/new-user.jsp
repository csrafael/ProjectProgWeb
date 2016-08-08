<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Criar novo Usuario</title>
</head>
<script type="text/javascript">
	function validateData(){
		var data = document.forms["criar"]["nascimento"].value;
		if(data.length != 8){
			alert("Favor inserir data no modelo 00/00/00")
			return false;
		}
	}
	function validateForm(){
		var login = document.forms["criar"]["login"].value;
		var senha = document.forms["criar"]["senha"].value;
		var email = document.forms["criar"]["email"].value;
		var data = document.forms["criar"]["nascimento"].value;
		
		if(login == null || login == ""){
			alert("Login nao pode ficar vazio");
			return false;
		} else if(senha == null || senha == ""){
			alert("Senha nao pode ficar vazio");
			return false;
		} else if(email == null || email == ""){
			alert("Email nao pode ficar vazio");
			return false;
		} else if(data == null){
			alert("Data nao pode ficar vazia");
			return false;
		}
	}
</script>
<body>
	<form name="criar" action="controller" method="post" onsubmit="return validateForm()">
				Login: <input type="text" name="login" /><br> 
				Senha: <input type="password" name="senha" /><br>
				Email: <input type="text" name="email" /><br> 
				Data de nascimento: <input type="text" name="nascimento" size="8" onchange="return validateData()"/><br><br> 
				<input type="submit" value="Cadastrar" />
				<input type="hidden" value="Cadastra" name="opcao"/>
	</form>
</body>
</html>