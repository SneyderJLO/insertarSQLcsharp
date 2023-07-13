using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;


namespace insertarNeysser
{
    internal class ConexionDb
    {


        public SqlConnection conexionBaseDatos()
        {
            SqlConnection conexion = new SqlConnection();
            try
            {
                //string ruta = "Data Source =localhost; Initial Catalog = DB_PRACTICAS; User=sa; Password=123*abc*456";
                string ruta = "Data Source =192.168.1.55; Initial Catalog = DB_PRACTICAS; User=sa; Password=123*abc*456";
                conexion.ConnectionString = ruta;

            }
            catch (SqlException ex)
            {
                Console.WriteLine($"Error de conexion\nMensaje: {ex.Message}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error\nMensaje: {ex.Message}");
            }

            return conexion;

        }
    }
}
