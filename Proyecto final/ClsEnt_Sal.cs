using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto_final
{


    public class ClsEnt_Sal
    {
        ClsConexion objconexion = new ClsConexion();

        public bool guardar_cita(string placa,string fechahora, string cccarnet,string tipovehiculo, string nombusuario,string valor,bool salida,string horaentrada,string horasalida)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPGuardar_Entrada_SALIDA";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@placa", placa);
                scmd.Parameters.Add("@fechahora", fechahora);
                scmd.Parameters.Add("@cccarnet", cccarnet);
                scmd.Parameters.Add("@tipovehiculo", tipovehiculo);
                scmd.Parameters.Add("@nombusuario", nombusuario);
                scmd.Parameters.Add("@valor", valor);
                scmd.Parameters.Add("@salida", salida);
                scmd.Parameters.Add("@horaentrada", horaentrada);
                scmd.Parameters.Add("@horasalida", horasalida);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet buscar_entrada_salida(string placa)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPConsultar_Entrada_Salida";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@placa", placa);
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
        public bool eliminar_cita(string placa)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPEliminar_Entrada_Salida";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@placa", placa);
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