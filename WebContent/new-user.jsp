<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Criar novo Usuario</title>
</head>
<body>
	<form action="controller" method="post">
				Login: <input type="text" name="login" /><br> 
				Email: <input type="text" name="email" /><br> 
				Senha: <input type="password" name="senha" /><br>
				Data de nascimento: <input type="text" name="nascimento" /><br><br> 
				<input type="submit" value="Cadastrar" />
				<input type="hidden" value="Cadastra" name="opcao"/>
	</form>
</body>
</html>