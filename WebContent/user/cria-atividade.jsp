<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Criacao de Atividade</title>
</head>
<script type="text/javascript">
	function tamanhoDescricao(){
		var descricao = document.forms["atividade"]["descricao"].value;
		if(descricao.length > 800){
			alert("A descricao nao pode ter mais que 800 caracteres!");	
		}
	}
	function validateForm(){
		var login = document.forms["atividade"]["login"].value;
		var senha = document.forms["atividade"]["senha"].value;
		var titulo = document.forms["atividade"]["titulo"].value;
		var descricao = document.forms["atividade"]["descricao"].value;
		var data = document.forms["atividade"]["data"].value;
		
		if(login == null || login == ""){
			alert("Login nao pode ficar vazio");
			return false;
		} else if(senha == null || senha == ""){
			alert("Senha nao pode ficar vazio");
			return false;
		} else if(titulo == null || titulo == ""){
			alert("Titulo nao pode ficar vazio");
			return false;
		} else if(descricao == null || descricao == ""){
			alert("Descricao nao pode ficar vazia");
			return false;
		} else if(data == null || data == ""){
			alert("Data nao pode ficar vazia");
			return false;
		}
	}

</script>
<body>
	<form name="atividade" action="../controller" method="post" onsubmit="return validateForm()">
			Login: <input type="text" name="login" /><br> 
			Senha: <input type="password" name="senha" /><br>
			Titulo: <input type="text" name="titulo" size="100"/><br>
			Data: <input type="text" name="data" /><br>
			Descricao: <br><textarea name="descricao" onchange="return tamanhoDescricao()"></textarea><br><br> 
			<input type="submit" value="Criar Atividade!" />
			<input type="hidden" value="CriaAtividade" name="opcao"/>
	</form>
</body>
</html>