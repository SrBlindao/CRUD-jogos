<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="site.Pages.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
     <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-3.7.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.aspx">Produtos</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Home.aspx">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addProdutos.aspx">AddProdutos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Produtos.aspx">Lista Produtos</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<form id="form1" runat="server">
    <div class="container">
            <div class="span10 offset1">
                <div class="row">
                    <h3 class="well">Lista Jogos</h3>
                    <asp:GridView ID="gridJogos" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false" BackColor="#ccffcc">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField DataField="Genero" HeaderText="Genero" />
                            <asp:BoundField DataField="Class" HeaderText="Classificacao Indicativa" />
                            <asp:BoundField DataField="Preco" HeaderText="Preco" />
                        </Columns>
                        <RowStyle CssClass="cursor-pointer" />
                    </asp:GridView>
                    <p>
                        <asp:Label ID="lblMensagem" runat="server" />
                    </p>
                    <a href="/Default.aspx" class="btn btn-danger btn-lg">Voltar</a>
                </div>
            </div>
        </div>
</form>
</body>
</html>
