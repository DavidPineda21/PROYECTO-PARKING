using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto_final
{
    public class ClsReporte
    {
        ClsConexion objconexion = new ClsConexion();

        public bool registrar_reporte(string cedula, string nombre, string ganancia,string novedades, string fecha)
        {
            try
            {

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPGuardar_Reporte";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@cedula", cedula);
                scmd.Parameters.Add("@nombre", nombre);
                scmd.Parameters.Add("@ganancia", ganancia);
                scmd.Parameters.Add("@novedades", novedades);
                scmd.Parameters.Add("@fecha", fecha);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet buscar_reporte()
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPConsultar_Reporte";
                scmd.CommandType = CommandType.StoredProcedure;
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
        public bool eliminar_reporte(string cedula)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPEliminar_Reporte";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@cedula", cedula);
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