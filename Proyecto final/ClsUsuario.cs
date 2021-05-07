using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto_final
{
    public class ClsUsuario
    {
        ClsConexion objconexion = new ClsConexion();

        public bool registrar_usuario(string cedula, string nomdueño, string tel, string valor)
        {
            try
            {

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPGuardar_Usuario";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@CCcarnet", cedula);
                scmd.Parameters.Add("@nombreusuario", nomdueño);
                scmd.Parameters.Add("@tel", tel);
                scmd.Parameters.Add("@valorapagar", valor);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet buscar_usuario(string cedula)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPConsultar_Usuario";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@CCcarnet", cedula);
                SqlDataAdapter da = new SqlDataAdapter(scmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
        public bool eliminar_usuario(string cedula)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPEliminar_Usuario";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@CCcarnet", cedula);
                scmd.ExecuteNonQuery();
                return true;

            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }

        }
        
        

    }
}