<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frmregistrar.aspx.cs" Inherits="Proyecto_final.Frmregistrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/validation.css" rel="stylesheet" />
    <script src="Scripts/umd/popper.min.js"></script>
     <script src="Scripts/holder.min.js"></script>
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
  
</head>

    
    
        <body class="bg-light">
        
        <header>
     <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
          <div class="row">
            <div class="col-sm-8 col-md-7 py-4">
              <h4 class="text-white">PARKING FUNLAM</h4>
              <p class="text-muted">Parqueadero de la Universidad Católica Luis Amigó.</p>
            </div>
            <div class="col-sm-4 offset-md-1 py-4">
              <h4 class="text-white">PÁGINAS</h4>
              <ul class="list-unstyled">
                <li><a href="FrmPaginaAdmin.aspx" class="text-white">PÁGINA PRINCIPAL</a></li>
                <li><a href="FrmUsuarioAdmin.aspx" class="text-white">GESTIÓN RECARGA CARNET</a></li>
                <li><a href="FrmEntrada_Salida_Admin.aspx" class="text-white">GESTIÓN DE E-S</a></li>
                <li><a href="FrmReportesOpAdmin.aspx" class="text-white">GESTIÓN DE NOVEDADES</a></li>

              </ul>
            </div>
          </div>
        </div>
      </div>

            <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container d-flex justify-content-between">
          <a href="#" class="navbar-brand d-flex align-items-center">
            
            <strong>PARKING FUNLAM</strong>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
      </div>
          
    </header>    
  
    <div class="container">
      <div class="py-5 text-center">
        <asp:Image ID="image1" class="mb-4"  alt="" src="imagenes/logo usuario1.png" width="72" height="72" runat="server"/>
        <h2>GESTION DE OPERADOR</h2>
          <br />
        <p class="lead">Registra un operador para la el manejo del software tanto en recargas como en ingreso/salida de vehiculos.PARKING FUNLAM .</p>
      </div>
        
        <div class="col-md-8 offset-md-2">
          <h4 class="mb-3">INFORMACIÓN</h4>
            <asp:Label ID="LblMensaje" runat="server" style="color: #0066FF; font-weight: 700"></asp:Label>
            <br />
          <form  id="form1" runat="server" class="needs-validation" novalidate="">

            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="validationCustom01">Cédula<span class="required">*</span></label>
                  <asp:TextBox  type="text" class="form-control" id="nombret" placeholder="" value="" required="required" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Solo números" ControlToValidate="nombret" style="color: #0099FF; font-weight: 700" ValidationExpression="[1-9][0-9][0-9]+"></asp:RegularExpressionValidator>
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="validationCustom02">Nombre Completo <span class="required">*</span></label>
                <asp:TextBox type="text" class="form-control" id="apellidos" placeholder="" value="" required="required" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
                  <asp:RegularExpressionValidator ID="Revapellido" runat="server" ErrorMessage="Solo letras" ControlToValidate="apellidos" style="color: #0099FF; font-weight: 700" ValidationExpression="([a-z|A-Z|\s]+)"></asp:RegularExpressionValidator>
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div>
            </div>
              
            <div class="mb-3">
              <label for="validationCustomusername">Usuario <span class="required">*</span></label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">@</span>
                </div>
                <asp:TextBox type="text" class="form-control" id="Username" placeholder="Example@aaaa.com" value="" required="required" runat="server" TextMode="Email" MaxLength="30"></asp:TextBox>&nbsp;
                <div class="invalid-feedback" style="width: 100%;">
                  Your username is required.
                </div>
              </div>
                <div>
                    <asp:RegularExpressionValidator ID="Revcorreo" runat="server" ErrorMessage="Usuario incorrecto" SetFocusOnError="True" style="color: #0099FF; font-weight: 700" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Username"></asp:RegularExpressionValidator>
                </div>
            </div>
              <br />
            <div class="mb-3">
              <label for="validationCustomcontraseña">Contraseña <span class="required">*</span></label>
              <asp:TextBox  type="password" class="form-control" id="contra" placeholder="Contraseña" value="" required="" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>&nbsp;
                <asp:RegularExpressionValidator ID="Revcontra" runat="server" ErrorMessage="Solo letras,numeros o ambos" ControlToValidate="contra" style="color: #0099FF; font-weight: 700" ValidationExpression="([A-Z]|[a-z]|[0-9])+"></asp:RegularExpressionValidator>
              <div class="invalid-feedback">
              
              </div>
            </div>

             

            
            <hr class="mb-4"/>
              <br />
              <div class="offset-md-3">
                        <asp:Button  type = "submit" class = "btn btn-primary btn-lg" ID="bttnguar" runat="server" Text="Guardar" OnClick="bttnguar_Click" ></asp:Button>
              
                  &nbsp;<asp:button   type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="BtmLimpiar" Text="Limpiar" OnClick="BtmLimpiar_Click" > </asp:button>
              
                  &nbsp;<asp:button   type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="Btneliminar" Text="Eliminar" OnClick="Btneliminar_Click" > </asp:button>
              </div>
                  <br />
              <br />
              <div>
                  <asp:HiddenField ID="hfnombreID" runat="server" />
              </div>
              <asp:GridView runat="server" class="table table-bordered table-primary" ID="tabla_operador"  AutoGenerateColumns="False"  >
                 
                      
                      <columns>
                          <asp:BoundField DataField="cedula" HeaderText="CÉDULA" />
                          <asp:BoundField DataField="nomusuario" HeaderText="NOMBRE COMPLETO" />
                          <asp:BoundField DataField="corrusuario" HeaderText="CORREO" />
                          <asp:BoundField DataField="passusuario" HeaderText="CONTRASEÑA" />

                          <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:LinkButton ID="ver" class="btn btn-primary btn-lg" runat="server" CommandArgument='<%# Eval("cedula") %>' OnClick="Link_OnClick">Ver</asp:LinkButton>
                              </ItemTemplate>
                          </asp:TemplateField>

                      </columns>
                      

               
                  
              </asp:GridView>
              
              
         </form>

           <br />

            

        </div>
      </div>
           <br />
         <footer class="text-muted">
                        <br />
                        <br />
                        <hr class="my-5"/>
                        <br />
      <div class="container">
        <p class="float-right">
         <a rel="nofollow" href="Frm registro o ingreso.aspx">Cerrar sesión</a>
        </p>
        <p>En este parqueadero podras gestionar la Información guardada de los usuario como de los operadores..</p>
        <p>PF Parking Funlam.</p>
      </div>
    </footer>
     
</body>
</html>
