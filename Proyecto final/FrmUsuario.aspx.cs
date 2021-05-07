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
    public partial class FrmUsuario : System.Web.UI.Page
    {

        ClsUsuario objcarnet = new ClsUsuario();
        ClsEnt_Sal objcita = new ClsEnt_Sal();
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
                    txtccarnet.Focus();
                }
            }
        }
        protected void limpiar_campos()
        {
           
            txtnomdueño.Text = "";
            txttelefono.Text = "";
            Txtvalorrecarga.Text = "";
        }

      

        protected void Btnbuscar_Click(object sender, EventArgs e)
        {
            if (txtccarnet.Text.Trim() == "")
            {
                LblMen.Text = "Ingrese cédula del conductor relacionada al carnet de la Universidad.";
                txtccarnet.Focus();
            }
            else
            {
                LblMen.Text = "";
                DataSet ds = new DataSet();
                ds = objcarnet.buscar_usuario(txtccarnet.Text);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    LblMen.Text = "Estudiante no registrado, registralo.Recuerda llenar todos los espacios.";

                    txtnomdueño.Enabled = true;
                    txttelefono.Enabled = true;
                    Txtvalorrecarga.Enabled = true;

                    limpiar_campos();
                    btnguardar.Enabled = true;
                    btnotramasc.Enabled = true;
                }
                else
                {
                    LblMen.Text = "Usuario de universidad ya registrada para la recarga de su carnet puede modificar su valor a recargar si desea u otro campo.";

                    txtnomdueño.Text = ds.Tables[0].Rows[0]["nombreusuario"].ToString();
                    txttelefono.Text = ds.Tables[0].Rows[0]["tel"].ToString();
                    Txtvalorrecarga.Text = ds.Tables[0].Rows[0]["valorapagar"].ToString();
                    
                    txtnomdueño.Enabled = true;
                    txttelefono.Enabled = true;
                    Txtvalorrecarga.Enabled = true;
                    btnguardar.Enabled = true;
                    btnotramasc.Enabled = true;

                }
            }

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (txtccarnet.Text.Trim() == "")
            {
                LblMen.Text = "Ingrese cedula del conductor relacionada al carnet de la Universidad.";
                txtccarnet.Focus();
            }
            else
            {

                if (objcarnet.registrar_usuario(txtccarnet.Text, txtnomdueño.Text, txttelefono.Text, Txtvalorrecarga.Text))
                {

                    LblMen.Text = "Registro guardado o actualizado.Limpia espacios si quieres BUSCAR, AGREGAR O MODIFICAR  otro registro.";
                    btnotramasc.Enabled = true;
                    btnguardar.Enabled = true;


                    
                    txtnomdueño.Enabled = true;
                    txttelefono.Enabled = true;
                    Txtvalorrecarga.Enabled = true;

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
            txtnomdueño.Enabled =false ;
            txttelefono.Enabled = false;
            Txtvalorrecarga.Enabled = false;

            LblMen.Text = "Puedes buscar otro registro.";
        }

        
    }
}