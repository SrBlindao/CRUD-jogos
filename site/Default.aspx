<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="site.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
     <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-3.7.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
       <div class="jumbotron"><h1 class="display-4">Login</h1></div>
    <form style="padding:10%;">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"/>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Senha</label>
    <input type="password" class="form-control" id="exampleInputPassword1"/>
  </div>
        
        <a href="Pages/Home.aspx" class="btn btn-warning btn-lg">homeoff</a>
  
</form>


</body>
</html>
