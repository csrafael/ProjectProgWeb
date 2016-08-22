<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="java.util.*, projectprogweb.dao.AtividadesDAO, projectprogweb.modelo.Atividade"%>
<!DOCTYPE html>
<html>
<head>
<title>UFABCShare - HOME</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/css/teste2.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:useBean id="dao" class="projectprogweb.dao.AtividadesDAO" />
	<jsp:useBean id="atividade" class="projectprogweb.modelo.Atividade" />
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
      					<li><a href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
    				</ul>
  				</div>
			</div>
		</nav>
	
	
	<div class ="container-fluid">
		<div class="row content">
			<div class="col-sm-2">
				<div class="sidenav">
					<ul class="nav nav-stacked text-center">
       					<li><a href="${pageContext.request.contextPath}/admin/perfil"><img alt="perfilImg" class="center-block img-circle img-responsive" 
       							src="http://www.lcfc.com/images/common/bg_player_profile_default_big.png"
       							height="150" width="100"></a></li>
        				<li><a href="${pageContext.request.contextPath}/criaAtividade">Criar Atividade</a></li>

			 		</ul>
			 	
				</div>
			</div>
			
				<c:forEach var="atividade" items="${dao.lista}">

				<div class="col-sm-10 mainbox">
					<div class="row col-sm-12 panel-body">
						<div class="col-sm-5 atv text-center">
							<h2>${atividade.titulo }</h2>
							<h6>Descricao: ${atividade.descricao }</h6>
							Criador: ${atividade.criador} Data: ${atividade.data }
							<form action="subscribe" method="post">
								<input type="hidden" name="criador" value="${atividade.criador }"/>
								<input type="hidden" name="descricao" value="${atividade.descricao }"/>
								<input type="hidden" name="titulo" value="${atividade.titulo }"/>
								<input type="hidden" name="data" value="${atividade.data }"/>
								<input type="submit" value="Inscrever-se" />
							</form>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>
	

	
	<footer>
	</footer>
	
	

</body>
</html>