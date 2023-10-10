<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProdutos.aspx.cs" Inherits="site.Pages.AddProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Add Produtos</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-3.7.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="container">
       
           <h1>Cadastrar Jogos</h1>
            <br /><br />

            Nome do Jogo:<br />
            <asp:TextBox ID="txtNome" runat="server" placeholder="Digite o nome do Jogo" Width="45%" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator
                        ID="requiredNome"
                        runat="server" 
                        ControlToValidate="txtNome" 
                        ErrorMessage="Por favor, digite o nome do jogo." 
                        ForeColor="Red"/>
                        

                    <br /><br />

            Genero:<br />
            <asp:TextBox ID="txtGenero" runat="server" placeholder="Digite o genero do Jogo" Width="25%" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator
                        ID="RequiredGenero"
                        runat="server" 
                        ControlToValidate="txtGenero" 
                        ErrorMessage="Por favor, digite o genero." 
                        ForeColor="Red"/>
                        

                    <br /><br />

            Classificacao Indicativa:<br />
            <asp:TextBox ID="txtClass" runat="server" placeholder="Digite a classificacao indicativa" Width="5%" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator
                        ID="RequiredClass"
                        runat="server" 
                        ControlToValidate="txtClass" 
                        ErrorMessage="Por favor, a classificacao indicativa do jogo." 
                        ForeColor="Red"/>
                        

                    <br /><br />

            Preco:<br />
            <asp:TextBox ID="txtPreco" runat="server" placeholder="Digite o preco do Jogo" Width="10%" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator
                        ID="RequiredPreco"
                        runat="server" 
                        ControlToValidate="txtPreco" 
                        ErrorMessage="Por favor, digite o preco do jogo." 
                        ForeColor="Red"/>
                        

                    <br /><br />
            <p>
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            </p>
             <asp:Button ID="btnCadastro" runat="server" Text="Adicionar" class="btn btn-success btn-lg" OnClick="btnAdicionarJogo" />
                    <a href="Home.aspx" class="btn btn-danger btn-lg">Voltar</a>
            </div>
    </form>
</body>
</html>
