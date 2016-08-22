<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

	<title>UFABC Share - Perfil</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
	<link href="${pageContext.request.contextPath}/resources/css/teste2.css" rel="stylesheet" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
  				<div class="navbar-header">
      				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>                        
      				</button>
      				<a class="navbar-brand" href="${pageContext.request.contextPath}/admin/index"><img alt="UFABC Share" class="center-block logo" src="${pageContext.request.contextPath}/resources/img/logoabc-2.png"></a>
    			</div>

		 		<div class="collapse navbar-collapse" id="myNavbar">
    				<ul class="nav navbar-nav">
					    <li class="social-facebook">
  							<a href="https://www.facebook.com/" ><img alt="facebook" src="${pageContext.request.contextPath}/resources/img/facebook_icon.png" id="icon-facebook"></a>
  						</li>
    				</ul>
    				<ul class="nav navbar-nav navbar-right">
      					<li><a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
    				</ul>
  				</div>
			</div>
		</nav>
	
	<div class ="container-fluid">
		<div class="row content">
			<div class="col-sm-2">
			</div>
			
			<div class="col-sm-10">
				<div class="col-sm-2">
				</div>
				<div class="col-sm-6 perfilbox">	
					<div class="row content img">
						<img alt="perfilImg" class="center-block img-circle img-responsive" 
       							src="http://www.lcfc.com/images/common/bg_player_profile_default_big.png">
      
       				</div>	
       				
       				<br><br>
       				
       				<div class="alert">	
       					<p style="color: red">${msgE}</p>
						<p style="color:green">${msgS}</p>
       				</div>
				
					<form role="form-horizontal" action="alteraSenha" method="post">
						<div class="form-group">
							<label for="login">usuario</label>
							<input type="text" name="login" class="form-control" id="login" placeholder="${Usuario.login}"/>
						</div>
					<div class="form-group">
						<label for="oldPassword">Senha antiga:</label>				
						<input type="password" name="oldPassword" class="form-control" id="password" placeholder="Senha Antiga"/>
					</div>
					<div class="form-group">
						<label for="oldPassword">Nova Senha:</label> 					
						<input type="password" name="password" class="form-control" id="password" placeholder="Caso queira uma nova senha, digite-a e clique no botão"/>
					</div>
					<div>
						<input type="submit" class="btn btn-primary" value="Alterar Senha"/>
					</div>
				</form>
				
				altera email
				<form role="form-horizontal" action="alteraEmail" method="post">
				Email: <input type="text" name="email" /><br> 
				Senha: <input type="password" name="senha" /> <br><br>
				<input type="submit" value="Alterar" />
				
				</form>
				
				<form role="form-horizontal" action="removeUsuario" method="post">
					<input type="submit" class="btn btn-primary" value="Remover Usuario" />
				</form>
				
				</div> 
			</div>
		</div>
	</div>
	
	
	
	
	
	<footer>
	</footer>
	
	


</body>
</html>