using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Proyecto_final
{
    public partial class FrmReportesOpAdmin : System.Web.UI.Page
    {

        ClsOperador_A objOp = new ClsOperador_A();
        ClsReporte objRE = new ClsReporte();
        string nom;
        string apell;

        protected void Page_Load(object sender, EventArgs e)
        {
            mostrar_Tabla();
            nom = Convert.ToString(Session["ses_nomusu"]);
            apell = Convert.ToString(Session["ses_apell"]);


            if (!IsPostBack)
            {
                if (Session["ses_correo"] == null)
                {
                    Response.Redirect("Frm registro o ingreso.aspx");
                }
                
            }
        }

        void mostrar_Tabla()
        {
            
            tabla_RE.DataSource = objRE.buscar_reporte();
            tabla_RE.DataBind();
        }

        ClsConexion objconexion = new ClsConexion();
        public void Link_OnClick(object sender, EventArgs e)
        {
            string cc = Convert.ToString((sender as LinkButton).CommandArgument);

            SqlCommand scmd = new SqlCommand();
            scmd.Connection = objconexion.abrir_clase();
            scmd.CommandText = "SPEliminar_Reporte";
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.Parameters.Add("@cedula", cc);
            scmd.ExecuteNonQuery();
            
            hfplacaID.Value = cc.ToString();

            mostrar_Tabla();
            lblm.Text = "Reporte Eliminado.";

        }
    }



}

 