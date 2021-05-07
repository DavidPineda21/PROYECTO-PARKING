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
    public partial class FrmEntrada_Salida_Admin : System.Web.UI.Page
    {

        ClsEnt_Sal objES = new ClsEnt_Sal();
        ClsUsuario objusu = new ClsUsuario();
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
                    txtplaca.Focus();
                }
            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            
                if (objES.guardar_cita(txtplaca.Text,txtfecha.Text,txtnumcarnet.Text,txttipovehicul.Text,txtnomdueño.Text,txtvalor.Text,SALIDA.Checked,txthoraentrada.Text,txthorasalida.Text))
                {
                    lblm.Text = "Registro actualizado.Limpia espacios si quieres  Eliminar o Modificar otro registro.";
          
                    BtmLimpiar.Enabled = true;
                    btnguardar.Enabled = true;
                    txtplaca.Enabled = false;
                    txtfecha.Enabled = false;
                    txtnumcarnet.Enabled = false;
                    txttipovehicul.Enabled = false;
                    txtnomdueño.Enabled = false;
                    txthorasalida.Enabled = false;
                    txthoraentrada.Enabled = false;
                    txtvalor.Enabled = false;
                    SALIDA.Enabled = false;
                    mostrar_Tabla();

                }
                else
                {
                    lblm.Text = "Se produjo un error en el guardado de cita";
                    txtplaca.Focus();
                }
            

        }
        protected void limpiar_campos()
        {
            txtplaca.Text = "";
            txtfecha.Text = "";
            txtnumcarnet.Text = "";
            txtnomdueño.Text = "";
            txtvalor.Text = "";
            txthoraentrada.Text = "";
            txthorasalida.Text = "";

        }


        protected void BtmlIMPIAR_Click(object sender, EventArgs e)
        {
            limpiar_campos();
            txtplaca.Focus();

            txtplaca.Enabled = true;
            txtfecha.Enabled = true;
            txtnumcarnet.Enabled = true;
            txttipovehicul.Enabled = true;
            txtnomdueño.Enabled = true;
            txtvalor.Enabled = true;
            txthorasalida.Enabled = true;
            txthoraentrada.Enabled = true;
            SALIDA.Enabled = true;
            txthoraentrada.Enabled = true;
            lblm.Text = "Puedes buscar otra cita.";
            mostrar_Tabla();
        }

       

       


        protected void marcasalida()
        {
            if (SALIDA.Checked == true)
            {
                txthoraentrada.Enabled = false;

            }
            else if (SALIDA.Checked == false)
            {

                txthorasalida.Enabled = false;

            }
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            
                   if (MessageBox.Show("¿Desea eliminar esta Registro de E/S?",
                   "Eliminar Registro", MessageBoxButtons.YesNo,
                   MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        if (objES.eliminar_cita(txtplaca.Text))
                        {
                            lblm.Text = "Registro de E/S eliminada.Eliga un nuevo registro de E/S que quieras MODIFICAR o ELIMINAR";
                            limpiar_campos();
                            mostrar_Tabla();
                        }
                        else
                        {
                            lblm.Text = "Se produjo un error al eliminar el registro.";
                            txtplaca.Focus();
                        }
                    }
                    else
                    {
                        limpiar_campos();
                        lblm.Text = "";
                        txtplaca.Focus();
                    }
              
            
        }

        void mostrar_Tabla()
        {
            tabla_ES.DataSource = objES.buscar_entrada_salida(txtplaca.Text);
            tabla_ES.DataBind();
        }

        ClsConexion objconexion = new ClsConexion();
        public void Link_OnClick(object sender, EventArgs e)
        {
            string pl = Convert.ToString((sender as LinkButton).CommandArgument);

            SqlCommand scmd = new SqlCommand();
            scmd.Connection = objconexion.abrir_clase();
            scmd.CommandText = "SPConsultar_Entrada_Salida";
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.Parameters.Add("@placa", pl);
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            hfplacaID.Value = pl.ToString();
            txtplaca.Text= ds.Tables[0].Rows[0]["placa"].ToString();
            txtfecha.Text = ds.Tables[0].Rows[0]["fechahora"].ToString();
            txtnumcarnet.Text = ds.Tables[0].Rows[0]["CCcarnet"].ToString();
            txtnomdueño.Text = ds.Tables[0].Rows[0]["nombreusuario"].ToString();
            txtvalor.Text = ds.Tables[0].Rows[0]["valor"].ToString();
            txthoraentrada.Text = ds.Tables[0].Rows[0]["horaentrada"].ToString();
            txthorasalida.Text = ds.Tables[0].Rows[0]["horasalida"].ToString();


        }
    }
}
 