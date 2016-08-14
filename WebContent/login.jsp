<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UFABCShare - Login</title>
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
	<div class="container-fluid">    
	
  		<div class="row content">
  		 	<div class="col-sm-4">
    
    		</div>
    		
    		<div class=" mainbox col-sm-4 text-center conteudo"> 
    			<div class="row">
    				 <img src="" class="img-responsive" alt="logo">
    			</div>
				<h2>Login no Sistema</h2>
				<p style="color: red">${msgE}</p>
				<p style="color:green">${msgS}</p>
				<form role="form-horizontal" action="login" method="post"> 
					<div class="form-group">
						<input type="text" name="login" class="form-control" id="login" placeholder="Digite o usuário"/>
					</div>
					<br>
					<div class="form-group"> 					
						<input type="password" name="password" class="form-control" id="password" placeholder="Digite a Senha"/>
					</div>
					<br>
					<div>
						<input type="submit" class="btn btn-primary" value="Entrar" onclick="return validateForm()" />
					</div>
					<br>
					<br>
					<a href="cadastra">Não é cadastrado? Cadastre-se aqui.</a>
				</form>
    		</div>
	    	<div class="col-sm-4 ">
    		</div>
  		</div>
	</div>
	
</body>
</html>