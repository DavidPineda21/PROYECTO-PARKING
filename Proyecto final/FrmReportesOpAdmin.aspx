<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmReportesOpAdmin.aspx.cs" Inherits="Proyecto_final.FrmReportesOpAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/holder.min.js"></script>
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>

    
       <header>
       <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
          <div class="row">
            <div class="col-sm-8 col-md-7 py-4">
              <h4 class="text-white">PARKING FUNLAM</h4>
              <p class="text-muted">Parqueadero de la universidad Catolica Luis Amigó.</p>
            </div>
            <div class="col-sm-4 offset-md-1 py-4">
              <h4 class="text-white">PÁGINAS</h4>
              <ul class="list-unstyled">
                <li><a href="FrmPaginaAdmin.aspx" class="text-white">PÁGINA PRINCIPAL</a></li>
                <li><a href="Frmregistrar.aspx" class="text-white">GESTIÓN DE OPERADOR</a></li>
                <li><a href="FrmUsuarioAdmin.aspx" class="text-white">GESTIÓN RECARGA USUARIO UNIVERSIDAD</a></li>
                <li><a href="FrmEntrada_Salida_Admin.aspx" class="text-white">GESTIÓN ENTRADA/SALIDA</a></li>

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

        <div id="signup_div_wrapper">
      <asp:Image ID="image1" class="img-fluid mx-auto d-block mb-3"  alt="" src="imagenes/reporte.png" width="72" height="72" runat="server"/>
    <h1 class="mb-1 text-center">REPORTES</h1>
    <p class="fs-14 text-gray text-center mb-5">Registro de reportes.</p>
            </div>

   <div class = "container">
    <div class = "row">
        <div class = "col-md-12 offset-md-1">
            <div class = "well well-sm">
                <form class = "form-signin" method = "post" runat="server">
                    <fieldset class = "form-signin">
                        <legend  class = "offset-md-0">Puede visualizar todos los reportes dados por los operadores asi como eliminarlo si lo considara.</legend>
                         <br />
                        <div  class = "offset-md-2">
                        <asp:Label ID="lblm" runat="server" style="color: #0066FF; font-weight: 700"></asp:Label>
                        </div>
                        <br />
                       
                        <div>
                  <asp:HiddenField ID="hfplacaID" runat="server" />
              </div>
              <asp:GridView runat="server" class="table table-bordered table-primary col-md-11 offset-md-0" ID="tabla_RE"  AutoGenerateColumns="False"  >
                 
                      
                      <columns>
                         <asp:BoundField DataField="cedula" HeaderText="CÉDULA" />
                          <asp:BoundField DataField="nomusuario" HeaderText="NOMBRE" />
                          <asp:BoundField DataField="ganancias" HeaderText="GANANCIA" />
                          <asp:BoundField DataField="novedades" HeaderText="NOVEDADES" />
                           <asp:BoundField DataField="fecha" HeaderText="FECHA" />
                          

                          <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:LinkButton ID="ver" runat="server" class="btn btn-primary btn-lg" CommandArgument='<%# Eval("cedula") %>' OnClick="Link_OnClick">Eliminar</asp:LinkButton>
                                  
                              </ItemTemplate>
                          </asp:TemplateField>

                      </columns>
                      
            
                  
              </asp:GridView>

                        

                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-pencil-square-o bigicon"> </i> </span>
                            <div class = "col-md-8">
                                
                              
                        </div>
                            </div>

                        <br />
                    

                    </fieldset>
                   
                </form>
            </div>
        </div>
        <div class = "col-md-10 offset-md-1">
         <footer class="text-muted ">
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
        <p>En este parqueadero podras gestionar la Información guardada de los usuarios y su vehiculo como de los operadores..</p>
        <p>PF Parking Funlam.</p>
      </div>
    </footer>
        </div>
    </div>
   </div>
</body>
</html>
