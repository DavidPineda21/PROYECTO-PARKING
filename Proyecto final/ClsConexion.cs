using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Proyecto_final
{
    public class ClsConexion
    {
        public SqlConnection abrir_clase()
        {
            try
            {
                SqlConnection cnn = new SqlConnection();
                cnn.ConnectionString = "data source= DESKTOP-1GMKUPV\\SQLEXPRESS;database= Proyecto_Final ;user id = sa;pwd = 123";
                cnn.Open();
                return cnn;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}