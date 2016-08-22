<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>UFABCShare - HOME</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
	<link href="resources/css/teste2.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
  				<div class="navbar-header">
      				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>                        
      				</button>
      				<a class="navbar-brand" href="admin/index"><img alt="UFABC Share" src="resources/img/logoshare.png"></a>
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
				<div class="sidenav">
					<ul class="nav nav-stacked text-center">
       					<li><a href="admin/perfil"><img alt="perfilImg" class="center-block img-circle img-responsive" 
       							src="http://www.lcfc.com/images/common/bg_player_profile_default_big.png"
       							height="150" width="100"></a></li>
        				<li><a href="admin/criaAtividade.jsp">Criar Atividade</a></li>

			 		</ul>
			 	
				</div>
			</div>
			
			<div class="col-sm-10">
				<div class="row col-sm-12 panel-body">
					<div class="col-sm-5 atv text-center">
						<img alt="atv-1" src="atv-1">
						<h2>ATV-1</h2>
						<h6>descrição</h6>
					</div>
					<div class="col-sm-5 atv text-center">
						<img alt="atv-1" src="atv-1">
						<h2>ATV-2</h2>
						<h6>descrição</h6>
					</div>

				</div>
			
				<div class="row col-sm-12">
					<div class="col-sm-5 atv text-center">
						<img alt="atv-1" src="atv-1">
						<h2>ATV-1</h2>
						<h6>descrição</h6>
					</div>
					<div class="col-sm-5 atv text-center">
						<img alt="atv-1" src="atv-1">
						<h2>ATV-2</h2>
						<h6>descrição</h6>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	<footer>
	</footer>
	
	

</body>
</html>