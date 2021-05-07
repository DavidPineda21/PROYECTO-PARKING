using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_final
{
    public partial class FrmPagina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Carnet_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmUsuario.aspx");
        }

        protected void Btnentsal_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmEntrada_Salida.aspx");
        }

        protected void Btnreporte_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmReportesOp.aspx");
        }
    }
}