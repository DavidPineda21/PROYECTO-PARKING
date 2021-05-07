
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPagina.aspx.cs" Inherits="Proyecto_final.FrmPagina" %>

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
                <li><a href="FrmUsuario.aspx" class="text-white">RECARGAR CARNET</a></li>
                <li><a href="FrmEntrada_Salida.aspx" class="text-white">REGISTRO ENTRADA / SALIDA</a></li>
                <li><a href="FrmReportesOp.aspx" class="text-white">REGISTRAR REPORTE</a></li>
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
          <h1 class="jumbotron-heading">OPERADOR</h1>
          <p class="lead text-muted">Este parqueadero cuenta con la mejor atención de los operarios a cargo.</p>
          
            <asp:Button  runat="server" class="btn btn-primary my-2" ID="Carnet"  Text="Recargar Carnet" OnClick="Carnet_Click" ></asp:Button>
            &nbsp;
            <asp:Button  runat="server" class="btn btn-primary my-2" ID="Btnentsal"  Text="Registrar Entrada/Salida Vehículo" OnClick="Btnentsal_Click"   ></asp:Button>
          
             &nbsp;
            <asp:Button  runat="server" class="btn btn-primary my-2" ID="Btnreporte"  Text="Reportes" OnClick="Btnreporte_Click" ></asp:Button>
        </div>
      </section>
       <div class="album py-5 bg-light">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                  <a href="a" class="thumbnail">
                  <asp:Image ID="image4" class="card-img-top img-thumbnail img-responsive"  alt="Card image cap" src="imagenes/parq3.png" runat="server" Height="228px" Width="349px"/>
                  </a>
                  <div class="card-body">
                  <p class="card-text">Si el Usuario es de la universidad tendrá la opción de recargar el carnet.</p>
                  <div class="d-flex justify-content-between align-items-center">
                        <small class="text-muted">PF</small>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                    <a href="a" class="thumbnail">
                        <asp:Image ID="image5" class="card-img-top img-thumbnail img-responsive"  alt="Card image cap" src="imagenes/icono-moto.png" runat="server" Height="228px" Width="349px"/>
                    </a>
                    <div class="card-body">
                        <p class="card-text">Como operador puedes registrar la entrada y salida del vehiculo.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <small class="text-muted">PF</small>
                            </div>
                     </div>
                </div>
            </div>

            <div class="col-md-4">
              <div class="card mb-4 shadow-sm">
                <a href="a" class="thumbnail">
                    <asp:Image ID="image6" class="card-img-top img-thumbnail img-responsive"  alt="Card image cap" src="imagenes/2168399.png" runat="server" Height="230px" Width="349px"/>
                </a>
                <div class="card-body">
                    <p class="card-text"> Como operador puedes registrar las novedades del dia.</p>
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
           
        <p>La función del operario es de suma importancia para poder realizar los registros de los usuarios y asi mantener a flote este parqueadero.</p>
        <p>Parking Funlam</p>
      </div>
    </footer>
</form>
</body>
</html>
