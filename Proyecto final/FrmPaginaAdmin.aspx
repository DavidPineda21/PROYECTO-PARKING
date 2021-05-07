
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPaginaAdmin.aspx.cs" Inherits="Proyecto_final.FrmPaginaAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/paginapp.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/holder.min.js"></script>
    
</head>

 <body>
     <form runat="server">
      <header>
       <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
          <div class="row">
            <div class="col-sm-8 col-md-7 py-4">
              <h4 class="text-white">PARKING FUNLAM</h4>
              <p class="text-muted">Parqueadero de la Universidad Católica Luis Amigó..</p>
            </div>
            <div class="col-sm-4 offset-md-1 py-4">
              <h4 class="text-white">PÁGINAS</h4>
              <ul class="list-unstyled">
                <li><a href="FrmPagina.aspx" class="text-white"></a></li>
                <li><a href="Frmregistrar.aspx" class="text-white">GESTIÓN DE OPERADOR</a></li>
                  <li><a  href="FrmUsuarioAdmin.aspx" class="text-white">GESTIÓN USUARIO UNIVERSIDAD</a></li>
                <li><a  href="FrmEntrada_Salida_Admin.aspx" class="text-white">GESTIÓN ENTRADA / SALIDA</a></li>
                  <li><a  href="FrmReportesOpAdmin.aspx" class="text-white">GESTION DE REPORTES</a></li>
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
    
    <main role="main">

      <section class="jumbotron text-center">
        <div class="container">
          <h1 class="jumbotron-heading">ADMINISTRADOR</h1>
            <br />
          <p class="lead text-muted">En este espacio como administrador podras gestionar lo referente al operador, la entrada y Salida de los vehiculos y visualizar los reportes suministrados por los operadores.</p>
          
            <asp:Button  runat="server" class="btn btn-primary my-2" ID="operador"  Text="Gestión Operador" OnClick="operador_Click"></asp:Button>
            &nbsp;
            <asp:Button  runat="server" class="btn btn-primary my-2" ID="btnES"  Text="Gestión Entrada/Salida" OnClick="btnES_Click"  ></asp:Button>
            &nbsp;
            <asp:Button  runat="server" class="btn btn-primary my-2" ID="BtnU"  Text="Gestión Usuario U" OnClick="BtnU_Click" ></asp:Button>
            &nbsp;
            <asp:Button  runat="server" class="btn btn-primary my-2" ID="BtnR"  Text="Gestión Reportes " OnClick="BtnR_Click" ></asp:Button>
            &nbsp;
        </div>
      </section>
       <div class="album py-5 bg-light">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                  <a href="a" class="thumbnail">
                  <asp:Image ID="image4" class="card-img-top img-thumbnail img-responsive"  alt="Card image cap" src="imagenes/admin.jpg" runat="server" Height="228px" Width="349px"/>
                  </a>
                  <div class="card-body">
                  <p class="card-text">Como administrador tendrás que registrar un operador asi como eliminar y modificar.</p>
                  <div class="d-flex justify-content-between align-items-center">
                        <small class="text-muted">PF</small>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                    <a href="a" class="thumbnail">
                        <asp:Image ID="image5" class="card-img-top img-thumbnail img-responsive"  alt="Card image cap" src="imagenes/ES.png" runat="server" Height="228px" Width="349px"/>
                    </a>
                    <div class="card-body">
                        <p class="card-text">Podrás elimina y modificar un registro de entrada/salida.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <small class="text-muted">PF</small>
                            </div>
                     </div>
                </div>
            </div>

            <div class="col-md-4">
              <div class="card mb-4 shadow-sm">
                <a href="a" class="thumbnail">
                    <asp:Image ID="image6" class="card-img-top img-thumbnail img-responsive"  alt="Card image cap" src="imagenes/novedades.jpg" runat="server" Height="230px" Width="349px"/>
                </a>
                <div class="card-body">
                    <p class="card-text"> Como Administrador podrás analizar los reportes generados durante el día.</p>
                    <div class="d-flex justify-content-between align-items-center">
                        <small class="text-muted">PF</small>
                    </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </main>

    <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Volver arriba</a>
             &nbsp <a rel="nofollow" href="Frm registro o ingreso.aspx">Cerrar sesión</a>
        </p>
           
        <p>Tus funciones como administrador forjaran el manejo adecuado de la Información.</p>
        <p>Parking Funlam.</p>
      </div>
    </footer>
</form>
</body>
</html>
