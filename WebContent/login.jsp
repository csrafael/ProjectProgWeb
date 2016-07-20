<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
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
	<form name="login" action="controller" method="post" onsubmit="return validateForm()">
				Login: <input type="text" name="login"><br>
				Senha: <input type="password" name="senha"><br> 
				<input type="submit" value="Entrar" />
				<input type="hidden" value="Login" name="opcao"/>
	</form>
</body>
</html>