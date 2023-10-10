<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="site.Pages.Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Produtos</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-3.7.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h3 class="well">Detalhes do Jogo</h3>
                    Informe o codigo: <br />
                    <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" Width="5%" /><br />
                    <asp:Button ID="btnPesquisa" runat="server" Text="Pesquisar" CssClass="btn btn-primary btn-lg" OnClick="btnPesquisarJogo" />
                     <a href="Home.aspx" class="btn btn-warning btn-lg">Voltar</a>
                     
                    <asp:Panel ID="pnlDados" runat="server">
                    Nome do Jogo:<br />
                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="45%" />
                    <br /><br />
                    Genero do Jogo:<br />
                     <asp:TextBox ID="txtGenero" runat="server" CssClass="form-control" Width="45%" />
                    <br /><br />
                    Classificacao do Jogo:<br />
                     <asp:TextBox ID="txtClass" runat="server" CssClass="form-control" Width="35%" />
                    <br /><br />
                     Preco do Jogo:<br />
                     <asp:TextBox ID="txtPreco" runat="server" CssClass="form-control" Width="35%" />
                    <br /><br />

                   <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CssClass="btn btn-danger btn-lg" OnClick="btnExcluirJogo" />
                   <asp:Button ID="btnAtualizar" runat="server" Text="Atualizar" CssClass="btn btn-info btn-lg" OnClick="btnAtualizarJogo" />
                   
                   </asp:Panel>

                    <p>
                        <asp:Label ID="lblMensagem" runat="server" />
                    </p>
        </div>
    </form>
</body>
</html>
