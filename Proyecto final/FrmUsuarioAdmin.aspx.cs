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
    public partial class FrmUsuarioAdmin : System.Web.UI.Page
    {

        ClsUsuario objcarnet = new ClsUsuario();
        ClsEnt_Sal objES = new ClsEnt_Sal();
        string nom;
        string apell;

        protected void Page_Load(object sender, EventArgs e)
        {
            nom = Convert.ToString(Session["ses_nomusu"]);
            apell = Convert.ToString(Session["ses_apell"]);
            mostrar_Tabla();

            if (!IsPostBack)
            {
                if (Session["ses_correo"] == null)
                {
                    Response.Redirect("Frm registro o ingreso.aspx");
                }
                else
                {
                    txtccarnet.Focus();
                }
            }
        }
        protected void limpiar_campos()
        {
            txtccarnet.Text = "";
            txtnomdueño.Text = "";
            txttelefono.Text = "";
            Txtvalorrecarga.Text = "";
            
        }

      


        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (txtccarnet.Text.Trim() == "")
            {
                LblMen.Text = "Ingrese Todos los campos";
                txtccarnet.Focus();
            }
            else
            {

                if (objcarnet.registrar_usuario(txtccarnet.Text, txtnomdueño.Text, txttelefono.Text, Txtvalorrecarga.Text))
                {

                    LblMen.Text = "Registro guardado o actualizado.Limpia espacios si quieres  Modificar o Eliminar otro registro.";
                 

                    mostrar_Tabla();

                }
                else
                {
                    LblMen.Text = "Se produjo error al guardar registro";
                    txtccarnet.Focus();
                }
            }
        }


        protected void btnotramasc_Click(object sender, EventArgs e)
        {
            txtccarnet.Text = "";
            txtnomdueño.Text = "";
            txttelefono.Text = "";
            Txtvalorrecarga.Text = "";
            txtccarnet.Focus();

            btnotramasc.Enabled = true;
            btnguardar.Enabled = true;


            txtccarnet.Enabled = true;
            txtnomdueño.Enabled =true ;
            txttelefono.Enabled = true;
            Txtvalorrecarga.Enabled = true;
            mostrar_Tabla();

            LblMen.Text = "Puedes buscar otro registro.";
        }

        protected void tabla_carnet_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        void mostrar_Tabla()
        {
            tabla_carnet.DataSource = objcarnet.buscar_usuario(txtccarnet.Text);
            tabla_carnet.DataBind();
        }

        ClsConexion objconexion = new ClsConexion();
        public void Link_OnClick(object sender, EventArgs e)
        {
            string cc = Convert.ToString((sender as LinkButton).CommandArgument);

            SqlCommand scmd = new SqlCommand();
            scmd.Connection = objconexion.abrir_clase();
            scmd.CommandText = "SPConsultar_Usuario";
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.Parameters.Add("@CCcarnet", cc);
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            hfccID.Value = cc.ToString();
            txtccarnet.Text = ds.Tables[0].Rows[0]["CCcarnet"].ToString();
            txtnomdueño.Text = ds.Tables[0].Rows[0]["nombreusuario"].ToString();
            txttelefono.Text = ds.Tables[0].Rows[0]["tel"].ToString();
            Txtvalorrecarga.Text = ds.Tables[0].Rows[0]["valorapagar"].ToString();

            
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Desea eliminar este usuario?",
              "Eliminar Usuario", MessageBoxButtons.YesNo,
              MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (objcarnet.eliminar_usuario(txtccarnet.Text))
                {
                    LblMen.Text = "Registro de usuario U eliminado.eliga un nuevo registro que quieras Modificar o Eliminar";
                    mostrar_Tabla();
                    limpiar_campos();
                    
                }
                else
                {
                    LblMen.Text = "Se produjo un error al eliminar.";
                    txtccarnet.Focus();
                }
            }
            else
            {
                limpiar_campos();
                mostrar_Tabla();
                LblMen.Text = "";
                txtccarnet.Focus();
            }
        }
    }
}