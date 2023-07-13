using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace insertarNeysser
{
    internal class Program
    {
        static void Main(string[] args)

        {
            ConexionDb conexionDb = new ConexionDb();
            insertarNeysser insertarNeysser = new insertarNeysser();
            insertarNeysser.registrarDatos(conexionDb.conexionBaseDatos());



        }
    }
}
