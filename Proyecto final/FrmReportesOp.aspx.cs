using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;

namespace Proyecto_final
{
    public partial class FrmReportesOp : System.Web.UI.Page
    {

        ClsOperador_A objOp = new ClsOperador_A();
        ClsReporte objREP = new ClsReporte();
        string nom;
        string apell;

        protected void Page_Load(object sender, EventArgs e)
        {
            nom = Convert.ToString(Session["ses_nomusu"]);
            apell = Convert.ToString(Session["ses_apell"]);


            if (!IsPostBack)
            {
                if (Session["ses_correo"] == null)
                {
                    Response.Redirect("Frm registro o ingreso.aspx");
                }
                else
                {
                    txtcc.Focus();
                }
            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (txtcc.Text.Trim() == "")
            {
                lblm.Text = "Ingrese Placa del vehiculo.";
                txtcc.Focus();
            }
            else
            {
                if (objREP.registrar_reporte(txtcc.Text,Txtnombre.Text,txtganancia.Text,Txtmensaje.Text, txtfecha.Text))
                {
                    lblm.Text = "Reporte guardado. Limpia espacios si quieres Ingresar uno nuevo.";
          
                    BtmLimpiar.Enabled = true;
                    btnguardar.Enabled = true;
                    txtcc.Enabled = false;
                    txtfecha.Enabled = false;
                    Txtnombre.Enabled = false;
                    txtganancia.Enabled = false;
                    Txtmensaje.Enabled = false;
                    


                }
                else
                {
                    lblm.Text = "Se produjo un error en el guardado de cita";
                    txtcc.Focus();
                }
            }

        }
        protected void limpiar_campos()
        {
            txtcc.Text = "";
            txtfecha.Text = "";
            Txtnombre.Text = "";
            txtganancia.Text = "";
            Txtmensaje.Text = "";
            

        }


        protected void BtmlIMPIAR_Click(object sender, EventArgs e)
        {
            limpiar_campos();
            txtcc.Focus();

            txtcc.Enabled = true;
            
            
            lblm.Text = "Puedes Registrar otro Reporte si se es necesario";
        }

        protected void Btnbuscaruno_Click(object sender, EventArgs e)
        {
            
            if (txtcc.Text.Trim() == "")
            {
                lblm.Text = "Ingrese la placa del vehiculo.";
                txtcc.Focus();
            }
            else
            {
                lblm.Text = "";
                DataSet ds = new DataSet();
                ds = objOp.buscar_usuario_operador_gestion(txtcc.Text);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblm.Text = "Cedula incorrecta Ingrese nueva mente.";
              
                }
                else
                {
                    lblm.Text = "Cédula correcta. Puede continuar con el reporte";

                    
                    txtcc.Text = ds.Tables[0].Rows[0]["cedula"].ToString();
                    Txtnombre.Text = ds.Tables[0].Rows[0]["nomusuario"].ToString();
                    
                    txtfecha.Enabled = true;
                    txtganancia.Enabled = true;
                    Txtmensaje.Enabled = true;
                    Txtnombre.Enabled = false;
                    btnguardar.Enabled = true;
                    BtmLimpiar.Enabled = true;

                }
            }
        }

        protected void txtcc_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
 