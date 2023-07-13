using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;


namespace insertarNeysser
{
    internal class insertarNeysser
    {

        public void registrarDatos(SqlConnection conexion)
        {
            conexion.Open();
            try
            {
                limpiarTabla(conexion);
                Random random = new Random();
                int i = 1,
                cantidadRegistros = Convert.ToInt32(Console.ReadLine());
                string fecha = DateTime.Now.ToString("yyy-mm-dd");
                DateTime date = DateTime.Now;
                while (i <= cantidadRegistros)
                {
                    //2023-07-13 12:12:04.427
                    date = date.AddSeconds(1);
                    int comercio = i;
                    string numeroTarjeta = string.Join("", Enumerable.Range(0, 16).Select(_ => random.Next(0, 10)));
                    double valor = 0.0 + i;
                    //string valorTipo = obtenerTipo(conexion);
                    //string valorRazon = obtenerRazon(conexion);
                    string valorTipo = obtenerValorTipo_Razon(conexion, "tipoTrx");
                    string valorRazon = obtenerValorTipo_Razon(conexion, "razonTrx");
                    string autoriza = "1";

                    string query = "insert into pr_transacciones values (@pr_id, @pr_fecha, @pr_comercio, @pr_tarjeta, @pr_valor, @pr_tipoTrx, @pr_razon, @pr_autoriza)";
                    SqlCommand comando = new SqlCommand(query, conexion);
                    comando.Parameters.AddWithValue("@pr_id", i);
                    comando.Parameters.AddWithValue("@pr_fecha", date);
                    comando.Parameters.AddWithValue("@pr_comercio", comercio);
                    comando.Parameters.AddWithValue("@pr_tarjeta", numeroTarjeta);
                    comando.Parameters.AddWithValue("@pr_valor", valor);
                    comando.Parameters.AddWithValue("@pr_tipoTrx", valorTipo);
                    comando.Parameters.AddWithValue("@pr_razon", valorRazon);
                    comando.Parameters.AddWithValue("@pr_autoriza", autoriza);
                    comando.ExecuteNonQuery();
                    Console.WriteLine(i);
                    i += 1;
                }

            }
            catch (SqlException ex)
            {
                Console.WriteLine($"Error de conexion\nMensaje: {ex}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error\nMensaje: {ex}");
            }
            finally
            {
                conexion.Close();
            }
        }

        public void limpiarTabla(SqlConnection conexion)
        {
            try
            {
                string query = "TRUNCATE TABLE pr_transacciones;";
                SqlCommand comando = new SqlCommand(query, conexion);
                comando.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                Console.WriteLine($"Error de conexion\nMensaje: {ex.Message}");

            }

        }


        public string obtenerValorTipo_Razon(SqlConnection conexion, string tabla)
        {
            string query = "", resultado = "";
            if (tabla.Equals("tipoTrx"))
            {
                query = "SELECT TOP 1 id FROM tipoTrx ORDER BY NEWID();";
            }
            else if (tabla.Equals("razonTrx"))
            {
                query = "SELECT TOP 1 id FROM razonTrx ORDER BY NEWID();";
            }
            else
            {
                Console.WriteLine("No existe la tabla.");
            }

            try
            {

                SqlCommand comando = new SqlCommand(query, conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.HasRows)
                {
                    // Obtain a row from the query result.
                    while (registro.Read())
                    {
                        resultado = registro["id"].ToString();
                    }
                }
                registro.Close();
                return resultado;
            }
            catch (SqlException ex)
            {
                Console.WriteLine($"Error de conexion\nMensaje: {ex.Message}");
                return resultado;
            }
        }
    }

}
