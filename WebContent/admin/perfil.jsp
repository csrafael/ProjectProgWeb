<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
	<link href="resources/css/teste2.css" rel="stylesheet" />
	
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
      				<a class="navbar-brand" href="admin/index">UFABC Share</a>
    			</div>

		 		<div class="collapse navbar-collapse" id="myNavbar">
    				<ul class="nav navbar-nav">
					    <li class="social-facebook">
  							<a href="https://www.facebook.com/" ><img alt="facebook" src="resources/img/facebook_icon.png" id="icon-facebook"></a>
  						</li>
    				</ul>
    				<ul class="nav navbar-nav navbar-right">
      					<li><a href="login"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
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
				<div class="col-sm-6 ">	
				
				<img alt="perfilImg" class="center-block img-circle img-responsive" 
       							src="http://www.lcfc.com/images/common/bg_player_profile_default_big.png">
       							
				Alterar Senha
				<form action="../controller" method="post">
				Login: <input type="text" name="login" /><br> 
				Senha Antiga: <input type="password" name="senhaAntiga" /><br>
				Senha Nova: <input type="password" name="senhaNova" /><br> 
				<input type="submit" value="Alterar" />
				<input type="hidden" value="AlteraSenha" name="opcao"/>
				</form>
				
				altera email
				<form action="../controller" method="post"> 
				Email: <input type="text" name="email" /><br> 
				Senha: <input type="password" name="senha" /> <br><br>
				<input type="submit" value="Alterar" />
				<input type="hidden" value="AlteraEmail" name="opcao"/>
				</form>
							
				</div> 
			</div>
		</div>
	</div>
	
	
	
	
	
	<footer>
	</footer>
	
	


</body>
</html>