<%@ Page Language="C#" %>

<%// import das bibliotecas necessarias para acesso ao banco de dados, configuracao, etc...
//Para manipular e prove acesso para classes ADO.NET%>
<%@ Import Namespace="System.Data" %>

<%// Arquivo de configuracao, para pegar porta, string de conexao%>
<%@ Import Namespace="System.Configuration"%>

<%//Cliente SQL%>
<%@ Import Namespace="System.Data.SqlClient"%>

<%//Parte de autenticacao, login e senha%>
<%@ Import Namespace="System.Web.Security"%>

<%

String message = "";

// verifica se a requisicao veio via GET (requisicao de pagina) ou POST (formulario)
if (HttpContext.Current.Request.HttpMethod == "POST")
{
    // cria conexao com o banco de dados
    using (SqlConnection connection = new SqlConnection("Server=(local);Database=sapataria;User Id=remote;Password=1234;"))
    {
        // cria comando sql para localizar o usuario dentro da tabela
        using (SqlCommand cmd = new SqlCommand("SELECT OBSERVACAO FROM USUARIOS WHERE LOGIN = @UserName AND SENHA = @Password"))
        {
            //cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", Request["username"]);
            cmd.Parameters.AddWithValue("@Password", Request["password"]);
            
            // atribui a conexão ao comando
            cmd.Connection = connection;
            
            // abre a conexao
            connection.Open();
            
            // executa o comando para localizar o usuario no banco de dados
            String username = (string)cmd.ExecuteScalar();
            
			if (username == null)
			{
				message = "Usuario não encontrado !";
			} else {
				Session["user"] = username;
				Response.Redirect("/default.aspx");
			}
            // fecha a conexao
            connection.Close();
        }
    }
    // The action is a POST.
}

%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Loja Sapataria</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  
  <div class="container">

      <form class="form-signin" role="form" method=post novalidate action="login.aspx">
        <h2 class="form-signin-heading">Login da Sapataria</h2>
		<h2 class="form-signin-alert"><%=message%></h2>
        <input type="text" name=username class="form-control" placeholder="Digite seu o usuario">
        <input type="password"name=password class="form-control" placeholder="Digite a sua senha" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Lembrar usuario da proxima vez
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
      </form>

    </div> <!-- /container -->
	
</body>
</html>