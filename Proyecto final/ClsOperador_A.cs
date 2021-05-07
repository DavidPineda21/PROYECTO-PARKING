using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto_final
{
    public class ClsOperador_A
    {
        ClsConexion objconexion = new ClsConexion();
    
        public bool registrar_usuario_operador(string cedula , string nombre, string correo, string contraseña)
        {
            try
            {

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPGuardar_Registro_Operador";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@cedula", cedula);
                scmd.Parameters.Add("@nomusuario", nombre);
                scmd.Parameters.Add("@corrusuario", correo);
                scmd.Parameters.Add("@passusuario", contraseña);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

       
      
        public DataSet buscar_usuario_operador(string correo, string password)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPConsultar_Operador";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@corrusuario", correo);
                scmd.Parameters.Add("@passusuario", password);
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
         
        public DataSet buscar_usuario_operador_gestion(string cedula)
        {
           
            try
            {
                
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPConsultar_Operador_Gestion";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@cedula", cedula);
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

        public DataSet buscar_usuario_Administrador(string correo, string contraseña)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPConsultar_Administrador";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.AddWithValue("@correo", correo);
                scmd.Parameters.AddWithValue("@contraseña", contraseña);
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

        public DataTable Mostrar_Datos_tabla()
        {
            try
            {

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPConsultar_Tabla_Operador_Gestion";
                scmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(scmd);
                DataTable dtbl = new DataTable();
                da.Fill(dtbl);
                return dtbl;

            }

            catch (Exception error)
            {
                throw new Exception(error.Message);
            }


        }

        public bool eliminar_operador_Gestion(string cedula)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_clase();
                scmd.CommandText = "SPEliminar_Operador_Gestion";
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