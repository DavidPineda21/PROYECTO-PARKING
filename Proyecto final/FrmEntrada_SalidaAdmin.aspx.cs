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
    public partial class Frmcita : System.Web.UI.Page
    {

        ClsCita objcita = new ClsCita();
        ClsUsuario objusu = new ClsUsuario();
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
                    txtplaca.Focus();
                }
            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (txtplaca.Text.Trim() == "")
            {
                lblm.Text = "Ingrese Placa del vehiculo.";
                txtplaca.Focus();
            }
            else
            {
                if (objcita.guardar_cita(txtplaca.Text,txtfecha.Text,txtnumcarnet.Text,txttipovehicul.Text,txtnomdueño.Text,txtvalor.Text,SALIDA.Checked,txthoraentrada.Text,txthorasalida.Text))
                {
                    lblm.Text = "Cita guardada.Limpia espacios si quieres BUSCAR,AGREGAR o ELIMINAR otra cita.";
          
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


                }
                else
                {
                    lblm.Text = "Se produjo un error en el guardado de cita";
                    txtplaca.Focus();
                }
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
        }

        protected void Btnbuscaruno_Click(object sender, EventArgs e)
        {
            marcasalida();
            if (txtplaca.Text.Trim() == "")
            {
                lblm.Text = "Ingrese la placa del vehiculo.";
                txtplaca.Focus();
            }
            else
            {
                lblm.Text = "";
                DataSet ds = new DataSet();
                ds = objcita.buscar_entrada_salida(txtplaca.Text);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblm.Text = "Placa no registrada, registrala.Recuerda llenar todos los espacios.";
                    txtfecha.Enabled = true;
                    txtnumcarnet.Enabled = true;
                    txttipovehicul.Enabled = true;
                    txtnomdueño.Enabled = false;
                    txtvalor.Enabled = false;
                    SALIDA.Enabled = true;
                 


                    txtfecha.Focus();
                    btnguardar.Enabled = true;
                    BtmLimpiar.Enabled = true;
                }
                else
                {
                    lblm.Text = "Placa ya esta registrada. Puede actualizar el registro si es necesario";

                    txtfecha.Text = ds.Tables[0].Rows[0]["fechahora"].ToString();
                    txtnumcarnet.Text = ds.Tables[0].Rows[0]["CCcarnet"].ToString();
                    txtnomdueño.Text = ds.Tables[0].Rows[0]["nombreusuario"].ToString();
                    txtvalor.Text = ds.Tables[0].Rows[0]["valor"].ToString();
                    txthoraentrada.Text= ds.Tables[0].Rows[0]["horaentrada"].ToString();
                    txthorasalida.Text = ds.Tables[0].Rows[0]["horasalida"].ToString();
                    txtfecha.Enabled = true;
                    txttipovehicul.Enabled = true;
                    txtnomdueño.Enabled = true;
                    txtvalor.Enabled = true;
                    SALIDA.Enabled = true;
                    txthorasalida.Text = "";
                    txtnumcarnet.Enabled = true;
                    btnguardar.Enabled = true;
                    BtmLimpiar.Enabled = true;

                }
            }
        }

        protected void Btnbuscardos_Click(object sender, EventArgs e)
        {
            if (txtnumcarnet.Enabled == true)
            {
                if (txtnumcarnet.Text.Trim() == "")
                {
                    lblm.Text = "Ingrese cedula del usuario.";
                    txtnumcarnet.Focus();
                }
                else
                {
                    lblm.Text = "";
                    DataSet ds = new DataSet();
                    ds = objusu.buscar_usuario(txtnumcarnet.Text);

                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        lblm.Text = "No es usuario universidad (Termine de llenar campos sera tomado como visitante ).";
                        txtnomdueño.Enabled = true;
                        txtvalor.Enabled = true;

                    }
                    else
                    {
                        lblm.Text = "Es Usuario universidad";
                        txtnomdueño.Text = ds.Tables[0].Rows[0]["nombreusuario"].ToString();
                        txtvalor.Text = ds.Tables[0].Rows[0]["valorapagar"].ToString();
                        txtnomdueño.Enabled = false;
                        txtvalor.Enabled = false;
                    }
                }
            }
            else
            {
                lblm.Text = "Ingrese placa.";
                txtplaca.Focus();
            }
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

        
    }
}
 