<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Criacao de Atividade</title>
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
				<div class="sidenav ">
					<ul class="nav nav-stacked text-center">
       					<li><a href="perfil"><img alt="perfilImg" class="center-block img-circle img-responsive" 
       							src="http://www.lcfc.com/images/common/bg_player_profile_default_big.png"
       							height="150" width="100"></a></li>
        				<li><a href="admin/cria-atividade.jsp">Criar Atividade</a></li>
        				<li><a href="admin/altera-email.jsp">Alterar Email</a></li>
        				<li><a href="admin/altera-senha.jsp">Alterar Senha</a></li>
			 		</ul>
			 	
				</div>
			</div>
			
			<div class="col-sm-10">
				<!--  <form name="atividade" action="../controller" method="post" onsubmit="return validateForm()">
					Login: <input type="text" name="login" /><br> 
					Titulo: <input type="text" name="titulo" size="100"/><br>
					Data: <input type="text" name="data" /><br>
					Descricao: <br><textarea name="descricao" onchange="return tamanhoDescricao()"></textarea><br><br> 
					<input type="submit" value="Criar Atividade!" />
					<input type="hidden" value="CriaAtividade" name="opcao"/>
				</form>
				-->
				<div class="col-sm-2">
				</div>
				<div class="col-sm-6 ">
				<form role="form-horizontal" action="criaAtividade" method="post" onsubmit="return validateForm()"> 
					<div class="form-group">
					<label for="criador">Criador:</label>
						<input type="text" name="login" class="form-control" id="login" placeholder="Digite o usuário"/>
					</div>
					<br>
					<div class="form-group">
					<label for="titulo">Título:</label> 					
						<input type="text" name="titulo" class="form-control" id="titulo" placeholder="Digite o titulo"/>
					</div>
					<br>
					<div class ="form-group">
					<label for="data">Data:</label>
						<input type="text" name="data" class="form-control" id="nascimento" size="8" placeholder="00/00/00" onchange="return validateData()" />
					</div>
					<br>
					
					<div class="form-group">
						<label for="descricao">Descrição:</label>
						<textarea class="form-control" rows="5" id="descricao"></textarea>
					</div>
					<br>
					<div class="text-right">
						<input type="submit" class="btn btn-primary" value="Criar Atividade" onclick="return validateForm()" />
					</div>
				</form>
				
				</div> 
			</div>
		</div>
	</div>
	
	
	
	
	
	<footer>
	</footer>
	
	


</body>
</html>