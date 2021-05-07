using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Proyecto_final
{
    public partial class Frmregistrar : System.Web.UI.Page
    {
        ClsOperador_A objusuario = new ClsOperador_A();
        protected void bttnguar_Click(object sender, EventArgs e)
        {
            if (nombret.Text.Trim() == "" || apellidos.Text.Trim() == "" || Username.Text.Trim() == "" || contra.Text.Trim() == "")
            {
                LblMensaje.Text = "Porfavor llenar Los espacios";
                nombret.Focus();
            }
            else if (objusuario.registrar_usuario_operador(nombret.Text, apellidos.Text, Username.Text, contra.Text))
            {

                LblMensaje.Text = "Registro guardado";
                mostrar_Tabla();
                limpiar_campos();
                

            }
            else
            {
                LblMensaje.Text = "Error guardando registro";
                nombret.Focus();
            }
        }
        

        protected void Page_Load(object sender, EventArgs e)
        {
            mostrar_Tabla();
        }

        protected void limpiar_campos()
        {
           nombret.Text = "";
           apellidos.Text = "";
           Username.Text = "";
           contra.Text = "";
        }

       void mostrar_Tabla()
        {
            tabla_operador.DataSource = objusuario.Mostrar_Datos_tabla();
            tabla_operador.DataBind();
        }

       
        protected void BtmLimpiar_Click(object sender, EventArgs e)
        {
            limpiar_campos();
        }

        protected void Btneliminar_Click(object sender, EventArgs e)
        {
            if (nombret.Text.Trim() == "")
            {
                LblMensaje.Text = "Busque datos en la tabla por favor!";
                nombret.Focus();
            }
            else
            {
                if (MessageBox.Show("¿Desea eliminar este operador?","ELIMINAR REGISTRO OPERADOR", MessageBoxButtons.YesNo,MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    if (objusuario.eliminar_operador_Gestion(nombret.Text))
                    {
                        LblMensaje.Text = "";
                        limpiar_campos();
                        mostrar_Tabla();
                        bttnguar.Text = "GUARDAR";
                    }
                    else
                    {
                        LblMensaje.Text = "Se produjo un error al eliminar el registro.";
                        nombret.Focus();
                    }
                }
                else
                {
                    limpiar_campos();
                    LblMensaje.Text = "";
                    nombret.Focus();
                }
            }
        }
        ClsConexion objconexion = new ClsConexion();
        public void Link_OnClick(object sender, EventArgs e)
        {
            string cedula = Convert.ToString((sender as LinkButton).CommandArgument);
            
            SqlCommand scmd = new SqlCommand();
            scmd.Connection = objconexion.abrir_clase();
            scmd.CommandText = "SPConsultar_Operador_Gestion";
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.Parameters.Add("@cedula", cedula);
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
    
            hfnombreID.Value = cedula.ToString();
            nombret.Text = ds.Tables[0].Rows[0]["cedula"].ToString();
            apellidos.Text = ds.Tables[0].Rows[0]["nomusuario"].ToString();
            Username.Text = ds.Tables[0].Rows[0]["corrusuario"].ToString();
            contra.Text= ds.Tables[0].Rows[0]["passusuario"].ToString();

            bttnguar.Text = "ACTUALIZAR";
        }
    }
}