<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Loja Sapataria</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

	<link href="css/app.css" rel="stylesheet">
	
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

<%
if (Session["user"] == null) 
{
	Response.Redirect("login.aspx");
}
%>
<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	  <div class="container">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Sapataria</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		  <a class="navbar-brand" href="/"><%=Session["user"]%></a>
		</div>
		<div class="navbar-collapse collapse">
		  <ul class="nav navbar-nav">
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cadastros <b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="/CadastroClientes.aspx">Clientes</a></li>
				<li><a href="/CadastroFornecedores.aspx">Fornecedores</a></li>
				<li><a href="/CadastroProdutos.aspx">Produtos</a></li>
				<li><a href="#">Funcionarios</a></li>
				<li class="divider"></li>
				<li class="dropdown-header">Outros</li>
				<li><a href="#">Modelos</a></li>
				<li><a href="#">Marcas</a></li>
			  </ul>
			</li>
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Consultas <b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="/consulta.aspx">Clientes</a></li>
				<li><a href="#">Fornecedores</a></li>
				<li><a href="#">Produtos</a></li>
				<li><a href="#">Funcionarios</a></li>
				<li class="divider"></li>
				<li class="dropdown-header">Outros</li>
				<li><a href="#">Modelos</a></li>
				<li><a href="#">Marcas</a></li>
			  </ul>
			</li>
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Relatorios <b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="/report.aspx">Clientes</a></li>
				<li><a href="#">Fornecedores</a></li>
				<li><a href="#">Produtos</a></li>
				<li><a href="#">Funcionarios</a></li>
				<li class="divider"></li>
				<li class="dropdown-header">Outros</li>
				<li><a href="#">Modelos</a></li>
				<li><a href="#">Marcas</a></li>
			  </ul>
			</li>
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Opcoes <b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="/logout.aspx">Sair</a></li>
				<li><a href="#">Preferencias</a></li>
				<li class="divider"></li>
				<li class="dropdown-header">Outras opcoes</li>
				<li><a href="opcao2.aspx">Opcao 2</a></li>
				<li><a href="#">Opcao 3</a></li>
			  </ul>
			</li>
		  </ul>
		</div>
	  </div>
	</div>
	
	<br><br>
    <div class="container">
