<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmEntrada_Salida_Admin.aspx.cs" Inherits="Proyecto_final.FrmEntrada_Salida_Admin" %>

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

        <div id="signup_div_wrapper">
      <asp:Image ID="image1" class="img-fluid mx-auto d-block mb-3"  alt="" src="imagenes/barra.png" width="72" height="72" runat="server"/>
    <h1 class="mb-1 text-center">REGISTRO DE VEHICULO</h1>
    <p class="fs-14 text-gray text-center mb-5">Registro de Entrada/Salida .</p>
            </div>

   <div class = "container">
    <div class = "row">
        <div class = "col-md-12 offset-md-1">
            <div class = "well well-sm">
                <form class = "form-signin" method = "post" runat="server">
                    <fieldset class = "form-signin">
                        <legend  class = "offset-md-4">  Información</legend>
                         <br />
                        <div  class = "offset-md-1">
                        <asp:Label ID="lblm" runat="server" style="color: #0066FF; font-weight: 700"></asp:Label>
                        </div>
                        <br />
                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-phone-square bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">Marque si es una salida de lo contrario sera una entrada<span class="required"></span></label>
                                <div class="input-group">
                                <asp:CheckBox ID="SALIDA" runat="server" name = "valor" type = "text" placeholder = "Valor" class = "form-control" Width="710px" MaxLength="6" Text="SALIDA" />
                            </div>
                                <div>
                                   <div class="input-group">
                            </div>

                                </div>
                          
                        </div>
                            </div>

                        <div class = "input-group mb-3">
                            
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-user bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">PLACA <span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txtplaca" name = "name" type = "text" placeholder = "PLACA" class = "form-control" runat="server" MaxLength="6" Width="635px"/>
                            </div>
                                <div>
                 <asp:RegularExpressionValidator ID="Revcodigo" runat="server" ErrorMessage="Solo 6 digitos" ControlToValidate="txtplaca" style="color: #0099FF; font-weight: 700" ValidationExpression="[A-Z][A-Z][A-Z][0-9][0-9][0-9|A-Z]" SetFocusOnError="True"></asp:RegularExpressionValidator>

                                </div>
                           </div>
                        </div>

                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-user bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">FECHA <span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txtfecha" name = "name" type = "text" placeholder = "dd/mm/aa y " class = "form-control" runat="server" Width="710px" MaxLength="10"/>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="Revfecha" runat="server" ErrorMessage="Incorrecto" ControlToValidate="txtfecha" style="color: #0099FF; font-weight: 700" ValidationExpression="([0][1-9]|[1-2][0-9]|[3][0-1])[/]([0][1-9]|[1][0-2])[/]([2][0][0-2][0-9])" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </div>
                            </div>
                        </div>

                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-user bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">HORA ENTRADA<span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txthoraentrada" name = "name" type = "text" placeholder = "00:00" class = "form-control" runat="server" Width="710px" MaxLength="10"/>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrecto" ControlToValidate="txthoraentrada" style="color: #0099FF; font-weight: 700" ValidationExpression="(([0][0-9]|[1-2][0-9])[:]([0][0-9]|[1-2][0-9]|[3-4][0-9]|[5][0-9])|([a-z]))" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </div>
                            </div>
                        </div>

                         <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-user bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">HORA SALIDA<span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txthorasalida" name = "name" type = "text" placeholder = "00:00" class = "form-control" runat="server" Width="710px" MaxLength="10" />
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Incorrecto" ControlToValidate="txthoraentrada" style="color: #0099FF; font-weight: 700" ValidationExpression="(([0][0-9]|[1-2][0-9])[:]([0][0-9]|[1-2][0-9]|[3-4][0-9]|[5][0-9])|([a-z]))" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </div>
                            </div>
                        </div>

                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-envelope-o bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">CEDULA<span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txtnumcarnet" name = "codigo" type = "text" placeholder = "" class = "form-control" runat="server" Width="635px" MaxLength="10"/>
                            </div>
                             <div>
                          <asp:RegularExpressionValidator ID="Revcod" runat="server" ErrorMessage="Solo 10 números" ControlToValidate="txtnumcarnet" style="color: #0099FF; font-weight: 700" ValidationExpression="[0-9][0-9][0-9]+" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </div>
                            </div>
                        </div>

                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-user bigicon"> </i> </span>
                            <div class = "col-md-8">
                                 <label for="validationCustomusername">TIPO DE VEHICULO<span class="required">*</span></label>
                                <asp:DropDownList runat="server" ID="txttipovehicul" class="form-control" Width="710px" >
                                 <asp:ListItem Selected="True">Carro</asp:ListItem>
                                  <asp:ListItem>Moto</asp:ListItem>               
                                    </asp:DropDownList>
                            </div>
                        </div>

                         <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-envelope-o bigicon"> </i> </span>
                            <div class = "col-md-8">
                                 <label for="validationCustomusername">NOMBRE DEL USUARIO<span class="required">*</span></label>
                                <div class="input-group">
                                <asp:TextBox id = "txtnomdueño" name = "" type = "text" placeholder = "Nombre " class = "form-control" runat="server" Width="710px" />   
                            </div>
                                </div>
                        </div>


                        <div class = "input-group mb-3">
                            <span class = "col-md-1 col-md-offset-2 text-center"> <i class = "fa fa-phone-square bigicon"> </i> </span>
                            <div class = "col-md-8">
                                <label for="validationCustomusername">VALOR PAGADO<span class="required">*</span></label>
                                <div class="input-group">

                                <asp:TextBox id = "txtvalor" name = "valor" type = "text" placeholder = "Valor" class = "form-control" runat="server" Width="710px" MaxLength="6"/>
                            </div>
                                <div>
                          <asp:RegularExpressionValidator ID="Revvalor" runat="server" ErrorMessage="solo números" ControlToValidate="txtvalor" style="color: #0099FF; font-weight: 700" ValidationExpression="[0-9][0-9][0-9]+" SetFocusOnError="True"></asp:RegularExpressionValidator>

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
                                <asp:button type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="btnguardar" Text="Guardar/Actualizar" OnClick="btnguardar_Click"> </asp:button>
                                 &nbsp;<asp:button type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="BtmLimpiar" Text="Limpiar" OnClick="BtmlIMPIAR_Click"> </asp:button>
                                &nbsp;<asp:button type = "submit" class = "btn btn-primary btn-lg" runat="server" ID="BtnEliminar" Text="Eliminar" OnClick="BtnEliminar_Click" > </asp:button>
                            </div>
                        </div>
                    <br />
              <br />
              <div>
                  <asp:HiddenField ID="hfplacaID" runat="server" />
              </div>
              <asp:GridView runat="server" class="table table-bordered table-primary col-md-11 offset-md-0" ID="tabla_ES"  AutoGenerateColumns="False"  >
                 
                      
                      <columns>
                         <asp:BoundField DataField="placa" HeaderText="PLACA" />
                          <asp:BoundField DataField="fechahora" HeaderText="FECHA" />
                          <asp:BoundField DataField="CCcarnet" HeaderText="CEDULA" />
                          <asp:BoundField DataField="tipovehiculo" HeaderText="VEHÍCULO" />
                           <asp:BoundField DataField="nombreusuario" HeaderText="NOMBRE" />
                          <asp:BoundField DataField="valor" HeaderText="VALOR" />
                          <asp:BoundField DataField="salida" HeaderText="ENTRADA/SALIDA" />
                          <asp:BoundField DataField="horaentrada" HeaderText="HORA ENTRADA" />
                          <asp:BoundField DataField="horasalida" HeaderText="HORA SALIDA" />

                          <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:LinkButton ID="ver" class="btn btn-primary btn-lg" runat="server" CommandArgument='<%# Eval("placa") %>' OnClick="Link_OnClick">Ver</asp:LinkButton>
                              </ItemTemplate>
                          </asp:TemplateField>

                      </columns>
                      
            
                  
              </asp:GridView>


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
