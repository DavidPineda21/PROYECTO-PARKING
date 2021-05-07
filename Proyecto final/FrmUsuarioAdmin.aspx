<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmUsuarioAdmin.aspx.cs" Inherits="Proyecto_final.FrmUsuarioAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/validation.css" rel="stylesheet" />
    <script src="Scripts/holder.min.js"></script>
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
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
                <li><a href="Frmregistrar.aspx" class="text-white">GESTIÓN DE OPERADOR</a></li>
                <li><a href="FrmEntrada_Salida_Admin.aspx" class="text-white">GESTIÓN ENTRADA/SALIDA</a></li>
                <li><a  href="FrmReportesOpAdmin.aspx" class="text-white">GESTIÓN DE REPORTES</a></li>
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

    <br />
 <div class="container">
    
        
            <div id="signup_div_wrapper">
      <asp:Image ID="image1" class="img-fluid mx-auto d-block mb-3"  alt="" src="imagenes/2168350.png" width="72" height="72" runat="server"/>
    <h1 class="mb-1 text-center">CARNET</h1>
    <p class="fs-14 text-gray text-center mb-5">Completa toda la información.</p>
 
    <div class="form border-secondary">
          <h4 class="mb-3">INFORMACIÓN</h4>
    <asp:Label ID="LblMen" runat="server" style="color: #0066FF; font-weight: 700"></asp:Label>
          <h4 class="mb-3">&nbsp;</h4>

          <form  id="form1" runat="server" class="needs-validation" novalidate="">
            
              <div class="mb-3">
                <label for="validationCustom01">CC carnet<span class="required">*</span></label>
                  <div class="input card-group">
                  <asp:TextBox  type="text" class="form-control" id="txtccarnet" placeholder="CC carnet" value="" required="required" runat="server" MaxLength="10" Width="100%"></asp:TextBox>&nbsp;
                
               </div>
                <div >
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Solo 10 números" ControlToValidate="txtccarnet" style="color: #0099FF; font-weight: 700" ValidationExpression="[1-9][0-9][0-9]+" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </div>
             </div>

           

            <div class="mb-3">
              <label for="validationCustomusername">Nombre del dueño <span class="required">*</span></label>
                <div class="input-group">
                <asp:TextBox type="text" class="form-control" id="txtnomdueño" placeholder="" value="" required="required" runat="server" Width="100%" ></asp:TextBox>&nbsp;
                </div>
                <div >
                <asp:RegularExpressionValidator ID="Revnomdueño" runat="server" ErrorMessage="Solo letras" ControlToValidate="txtnomdueño" style="color: #0099FF; font-weight: 700" ValidationExpression="([a-z|A-Z|\s]+)" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </div>
              </div>
          

            <div class="mb-3">
              <label for="validationCustomcontraseña">Telefono <span class="required">*</span></label>
                <div class="input-group">
              <asp:TextBox  type="text" class="form-control" id="txttelefono" placeholder="" value="" required="" runat="server" TextMode="Phone" Width="100%"></asp:TextBox>&nbsp;
               </div>
                <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Solo números" ControlToValidate="txttelefono" style="color: #0099FF; font-weight: 700" ValidationExpression="[1-9][0-9][0-9]+" SetFocusOnError="True"></asp:RegularExpressionValidator>              
              </div>
            </div>

             <div class="mb-3">
              <label for="validationCustomcontraseña">Valor a Recargar <span class="required">*</span></label>
                 <div class="input-group">
              <asp:TextBox  type="text" class="form-control" id="Txtvalorrecarga" placeholder="" value="" required="" runat="server" Width="100%" ></asp:TextBox>&nbsp;
              </div>
                 <div>
                <asp:RegularExpressionValidator ID="Revvalorapagar" runat="server" ErrorMessage="Valor incorecto" ControlToValidate="Txtvalorrecarga" style="color: #0099FF; font-weight: 700" ValidationExpression="[0-9][0-9][0-9]+" SetFocusOnError="True"></asp:RegularExpressionValidator>                            
              </div>
            </div>

            
              <hr class="mb-4"/>
             <div class = "form-group">
                            <div class = "col-md-12 text-center">
                                <asp:button type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="btnguardar" Text="Guardar/Actualizar" OnClick="btnguardar_Click" > </asp:button>
                                 &nbsp;&nbsp;&nbsp;&nbsp;<asp:button type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="btnotramasc" Text="Limpiar" OnClick="btnotramasc_Click" > </asp:button>
                                 &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button type = "submit" ID="Button1" class = "btn btn-primary btn-lg" runat="server" OnClick="Button1_Click" Text="Eliminar"  />
                            </div>
                        </div>
              <br />
              <div>
                  <asp:HiddenField ID="hfccID" runat="server" />
              </div>
            <div>
                <asp:GridView runat="server" class="table table-bordered table-primary" ID="tabla_carnet"  AutoGenerateColumns="False" OnSelectedIndexChanged="tabla_carnet_SelectedIndexChanged"  >
                 
                      
                      <columns>
                         <asp:BoundField DataField="CCcarnet" HeaderText="CEDULA" />
                          <asp:BoundField DataField="nombreusuario" HeaderText="NOMBRE" />
                          <asp:BoundField DataField="tel" HeaderText="TELEFONO" />
                          <asp:BoundField DataField="valorapagar" HeaderText="VALOR A RECARGAR" />

                          <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:LinkButton ID="ver" class="btn btn-primary btn-lg" runat="server" CommandArgument='<%# Eval("CCcarnet") %>' OnClick="Link_OnClick">Ver</asp:LinkButton>
                              </ItemTemplate>
                          </asp:TemplateField>

                      </columns>
                      

               
                  
              </asp:GridView>
            </div>

              
         </form>

           

            

     <footer class="text-muted">
                        <br />
                        <br />
                        <hr class="my-5"/>
                        <br />
      <div class="container">
        <p class="float-right">
          <a href="#">Volver arriba</a>
           &nbsp <a rel="nofollow" href="Frm registro o ingreso.aspx">Cerrar sesión</a>
            &nbsp <a rel="nofollow" href="FrmPaginaAdmin.aspx">Página principal</a>
        </p>
        <p>En este parqueadero podras gestionar la Información guardada de los usuario como de los operadores..</p>
        <p>Parking Funlam.</p>
      </div>
    </footer>

        </div>

        </div>
   </div>
</body>
</html>

