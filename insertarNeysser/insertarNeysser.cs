using Microsoft.SqlServer.Server;
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
                // limpiarTabla(conexion);
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
                    string valorTipo = obtenerRazonTipo(conexion);
                    string valorRazon = obtenerRazonTipo(conexion, valorTipo);
                    string autoriza = "ney"; string query = "insert into pr_transacciones values (@pr_id, @pr_fecha, @pr_comercio, @pr_tarjeta, @pr_valor, @pr_tipoTrx, @pr_razon, @pr_autoriza)";
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
                    i += 1;
                    Console.WriteLine(i);
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


        public string obtenerRazonTipo(SqlConnection conexion)
        {

            string query = "SELECT TOP 1 id FROM tipoTrx ORDER BY NEWID();", resultado = "";
            try
            {

                SqlCommand comando = new SqlCommand(query, conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.HasRows)
                {
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

        public string obtenerRazonTipo(SqlConnection conexion, string valorTipo)
        {
            string query = String.Format("SELECT TOP 1 ISNULL(id_razon, '0') FROM TRtrx WHERE id_tipo = {0} ORDER BY NEWID();", valorTipo),
                 resultado = "";
            List<string> lista = new List<string>();
            try
            {

                SqlCommand comando = new SqlCommand(query, conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.HasRows)

                {
                    while (registro.Read())
                    {
                        // lista.Add(registro[0].ToString());
                        resultado = registro[0].ToString();
                    }
                }
                else
                {
                    resultado = "0";

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
