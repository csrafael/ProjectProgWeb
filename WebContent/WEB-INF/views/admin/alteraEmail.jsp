<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="../controller" method="post"> 
				Email: <input type="text" name="email" /><br> 
				Senha: <input type="password" name="senha" /> <br><br>
				<input type="submit" value="Alterar" />
				<input type="hidden" value="AlteraEmail" name="opcao"/>
	</form>
</body>
</html>