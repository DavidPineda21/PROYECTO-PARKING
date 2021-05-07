using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Proyecto_final
{
    public partial class Frm_registro_o_ingreso : System.Web.UI.Page
    {
        int k;
        string cedula, nombre;
        ClsOperador_A objusuario = new ClsOperador_A();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["k"] = 0;
            }
        }
        

        protected void Bttning_Click1(object sender, EventArgs e)
        {

            if (Txtopcion.SelectedIndex == 0)
            {

                if (Txtemail.Text.Trim() == "" || Txtcontra.Text.Trim() == "")
                {
                    LblMensaje.Text = "Ingrese usuario y contraseña";
                    Txtemail.Focus();
                }
                else
                {
                    LblMensaje.Text = "";
                    DataSet ds = new DataSet();
                    ds = objusuario.buscar_usuario_operador(Txtemail.Text, Txtcontra.Text);

                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        LblMensaje.Text = "Usuario o contraseña inválida. Verifica";

                        k = Convert.ToInt32(Session["ses_k"]);
                        k++;
                        Session["ses_k"] = k;
                        if (k == 3)
                        {
                            LblMensaje.Text = "LLeva tres intentos fallidos su cuenta se bloqueara";
                            Txtcontra.Enabled = false;
                            Txtemail.Enabled = false;
                            Bttning.Enabled = false;
                        }
                        else
                        {
                            LblMensaje.Text = "Incorrecto lleva " + k + " intento(s)";
                            Txtemail.Focus();
                        }
                    }
                    else
                    {
                        cedula = ds.Tables[0].Rows[0]["cedula"].ToString();
                        nombre = ds.Tables[0].Rows[0]["nomusuario"].ToString();
                        Session["ses_ced"] = cedula;
                        Session["ses_nomb"] = nombre;
                        Session["ses_correo"] = Txtemail.Text;
                        Response.Redirect("FrmPagina.aspx");
                    }
                }
            }
            else if(Txtopcion.SelectedIndex == 1)
              
            {
                if (Txtemail.Text.Trim() == "" || Txtcontra.Text.Trim() == "")
                {
                    LblMensaje.Text = "Ingrese usuario y contraseña";
                    Txtemail.Focus();
                }
                else
                {
                    LblMensaje.Text = "";
                    DataSet ds = new DataSet();
                    ds = objusuario.buscar_usuario_Administrador(Txtemail.Text, Txtcontra.Text);

                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        LblMensaje.Text = "Usuario o contraseña inválida. Verifica";

                        k = Convert.ToInt32(Session["ses_k"]);
                        k++;
                        Session["ses_k"] = k;
                        if (k == 3)
                        {
                            LblMensaje.Text = "LLeva tres intentos fallidos su cuenta se bloqueara";
                            Txtcontra.Enabled = false;
                            Txtemail.Enabled = false;
                            Bttning.Enabled = false;
                        }
                        else
                        {
                            LblMensaje.Text = "Incorrecto lleva " + k + " intento(s)";
                            Txtemail.Focus();
                        }
                    }
                    else
                    {

                        Session["ses_correo"] = Txtemail.Text;
                        Response.Redirect("FrmPaginaAdmin.aspx");
                    }
                }
            }
        }

    }
}
 