<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmReportesOp.aspx.cs" Inherits="Proyecto_final.FrmReportesOp" %>

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
                <li><a href="FrmPagina.aspx" class="text-white">PÁGINA PRINCIPAL</a></li>
                <li><a href="FrmUsuario.aspx" class="text-white">RECARGAR CARNET</a></li>
                <li><a href="FrmEntrada_Salida.aspx" class="text-white">REGISTRAR E/S VEHÍCULOS</a></li>

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
                        <legend  class = "offset-md-4">  Información</legend>
                         <br />
                        <div  class = "offset-md-2">
                        <asp:Label ID="lblm" runat="server" style="color: #0066FF; font-weight: 700"></asp:Label>
                        </div>
                        <br />
                       

                        <div class = "input-group mb-3">
                            
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-user bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">CÉDULA OPERADOR <span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txtcc" name = "name" type = "text" placeholder = "CC" class = "form-control" runat="server" MaxLength="15" Width="635px" OnTextChanged="txtcc_TextChanged"/>
                                 <span class="input-group-btn">
                          <asp:Button class="btn btn-default" type="button" runat="server" Text="Buscar" ID="Btnbuscaruno" OnClick="Btnbuscaruno_Click" ></asp:Button>
                           </span>
                            </div>
                                <div>
                 <asp:RegularExpressionValidator ID="Revcodigo" runat="server" ErrorMessage="Solo 6 digitos" ControlToValidate="txtcc" style="color: #0099FF; font-weight: 700" ValidationExpression="[0-9][0-9][0-9]+" SetFocusOnError="True"></asp:RegularExpressionValidator>

                                </div>
                           </div>
                        </div>

                         <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-envelope-o bigicon"> </i> </span>
                            <div class = "col-md-8">
                                 <label for="validationCustomusername">NOMBRE DEL USUARIO<span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "Txtnombre" name = "" type = "text" placeholder = "Nombre " class = "form-control" runat="server" Width="710px" Enabled="False" />   
                            </div>
                                </div>
                        </div>

                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-user bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">FECHA <span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txtfecha" name = "name" type = "text" placeholder = "dd/mm/aa y " class = "form-control" runat="server" Width="710px" MaxLength="10" Enabled="False"/>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="Revfecha" runat="server" ErrorMessage="Incorrecto" ControlToValidate="txtfecha" style="color: #0099FF; font-weight: 700" ValidationExpression="([0][1-9]|[1-2][0-9]|[3][0-1])[/]([0][1-9]|[1][0-2])[/]([2][0][0-2][0-9])" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </div>
                            </div>
                        </div>


                         <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-envelope-o bigicon"> </i> </span>
                            <div class = "col-md-8">
                                 <label for="validationCustomusername">GANANCIAS DEL DÍA<span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txtganancia" name = "" type = "text" placeholder = "Ganancias " class = "form-control" runat="server" Width="710px" Enabled="False" />   
                            </div>
                                </div>
                        </div>


                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-pencil-square-o bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">NOVEDADES<span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox class = "form-control" id = "Txtmensaje" name = "message" placeholder = "Ingrese las novedades." rows = "7" runat="server" TextMode="MultiLine" Enabled="False" Height="200px" Width="710px" MaxLength="50"></asp:TextBox>
                            </div>
                                <div>
                          <asp:RegularExpressionValidator ID="Revmensaje" runat="server" ErrorMessage="Escriba Novedades" ControlToValidate="Txtmensaje" style="color: #0099FF; font-weight: 700" ValidationExpression="([a-z|A-Z|\s|0-9|.|,]+)" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                </div>
                        </div>
                            </div>

                        

                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-pencil-square-o bigicon"> </i> </span>
                            <div class = "col-md-8">
                                
                              
                        </div>
                            </div>

                        <br />
                    <div class = "form-group">
                            <div class = "col-md-12 offset-md-3">
                                <asp:button type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="btnguardar" Text="Guardar" OnClick="btnguardar_Click"> </asp:button>
                                 &nbsp;<asp:button type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="BtmLimpiar" Text="Limpiar" OnClick="BtmlIMPIAR_Click"> </asp:button>
                            </div>
                        </div>

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
            &nbsp <a rel="nofollow" href="FrmPagina.aspx">Página principal</a>
        </p>
        <p>La función del operario es de suma importancia para poder realizar los registros de los usuarios y asi mantener a flote este parqueadero.</p>
        <p>PF Parking Funlam.</p>
      </div>
    </footer>
        </div>
    </div>
   </div>
</body>
</html>
