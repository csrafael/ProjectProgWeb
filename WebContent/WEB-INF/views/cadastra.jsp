<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UFABCShare - Novo Cadastro</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <link href="resources/css/teste1.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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


	<div class="container-fluid text-center">    
  		<div class="row content">
  		 	<div class="col-sm-4">
    
    		</div>
    		
    		<div class="col-sm-4 text-center conteudo"> 
	    		<div class="row">
    				 <img src="resources/img/logoshare.png" class="img-responsive center-block" alt="logo">
    			</div>			
				<h2>Login no Sistema</h2>
				<p style="color: red">${msgE}</p>
				<p style="color:green">${msgS}</p>
				<form class="form-horinzontal" role="form" action="cadastra" method="post">
					<div class="form-group">
						
						<input type="text" name="login" class="form-control" id="login" placeholder="Digite o usuario"/>
						
					</div>
					<div class="form-group">
						
						<input type="text" name="nome" class="form-control" id="nome" placeholder="Digite seu Nome"/>
					</div>
					<div class="form-group">
						
						<input type="text" name="email" class="form-control" id="email" placeholder="Digite o Email"/>
					</div>
					<div class ="form-group">
						
						<input type="text" name="nascimento" class="form-control" id="nascimento" size="8" placeholder="00/00/00" onchange="return validateData()" />
					</div>
					<div class="form-group">
						
						<input type="password" name="password" class="form-control" id="password" placeholder="Digite sua senha"/>
					</div>
					<input type="submit" class="btn btn-primary" value="Cadastrar" onclick="return validateForm()" /><br>
				</form>
				<br>
				<a href="login">Voltar para o login</a>
    		</div>
	    	<div class="col-sm-4 ">
    		</div>
  		</div>
	</div>
</body>
</html>