<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="controller" method="post"> 
				Email: <input type="text" name="email" /><br> 
				Senha: <input type="password" name="senha" /> <br><br>
				<input type="submit" value="Alterar" />
				<input type="hidden" value="AlteraEmail" name="opcao"/>
	</form>
</body>
</html>