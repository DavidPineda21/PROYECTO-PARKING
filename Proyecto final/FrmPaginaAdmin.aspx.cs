using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_final
{
    public partial class FrmPaginaAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void operador_Click(object sender, EventArgs e)
        {
            Response.Redirect("Frmregistrar.aspx");
        }

     

        protected void btnES_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmEntrada_Salida_Admin.aspx");
        }

        protected void BtnU_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmUsuarioAdmin.aspx");
        }

        protected void BtnR_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmReportesOpAdmin.aspx");
        }
    }
}