<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm registro o ingreso.aspx.cs" Inherits="Proyecto_final.Frm_registro_o_ingreso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/signin.css" rel="stylesheet" />
    
</head>
<body class="text-center " style="background-image: url('imagenes/login.png')" >
    <form runat="server" class="form-signin">
        <div class="custom-control">
            <h1 class="display-5">PARKING FUNLAM</h1>
        </div>
        <br />
  
       

        <div class="input-group mb-3">
            <asp:DropDownList runat="server" ID="Txtopcion" class="form-control" >
                <asp:ListItem Selected="True">Operador</asp:ListItem>
                <asp:ListItem>Administrador</asp:ListItem>               
            </asp:DropDownList>
        </div>
        <br />
		
        <div class="input-group mb-3">					
            <asp:TextBox type="email" ID="Txtemail" runat="server" Class="form-control" placeholder="Usuario"></asp:TextBox>
        </div>
        <br />
        <asp:TextBox type="password" ID="Txtcontra" runat="server" Class="form-control" placeholder="Contraseña"></asp:TextBox>
        <br />
        <asp:button class="btn btn-lg btn-primary btn-block" runat="server" type="submit"  Text="INGRESAR" ID="Bttning" OnClick="Bttning_Click1"></asp:button>
        <br />
       
        <asp:Label ID="LblMensaje" runat="server" style="color: #0066FF; font-weight: 700"></asp:Label>
      <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
    </form>
  </body>
</html>