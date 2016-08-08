<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
<link rel="stylesheet" type="text/css" href="teste1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>





  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-4">
    
    </div>
    <div class="col-sm-4 text-center conteudo"> 
		<h2>Login no Sistema</h2>
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
    </div>
    <div class="col-sm-4 ">

    </div>
  </div>
</div>

</body>
</html>