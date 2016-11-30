using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace CapaPersistencia.DAO
{
    public class FabricaDAO
    {
        private SqlConnection conexion;
        private SqlTransaction transaccion;

        public FabricaDAO()
        { }

        public void openConexion()
        {
            try
            {
                conexion = new SqlConnection();
                conexion.ConnectionString = "Data Source=.; Initial Catalog=BDClinica; User ID=sa; Password=123456";
                conexion.Open();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public SqlConnection openConexionSQL()
        {
            try
            {
                conexion = new SqlConnection();
                //conexion.ConnectionString = "Data Source=.; Initial Catalog=BDClinica; User ID=sa; Password=123456";
                conexion.ConnectionString = "Data Source=.; Initial Catalog=BDClinica; Integrated Security=true"; 
                conexion.Open();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return conexion;
        }

        public void closeConexion()
        {
            try
            {
                conexion.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void iniciarTransaccion()
        {
            try
            {
                openConexion();
                transaccion = conexion.BeginTransaction();
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void terminarTransaccion()
        {
            try
            {
                transaccion.Commit();
                conexion.Close();
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void cancelarTransaccion()
        {
            try
            {
                transaccion.Rollback();
                conexion.Close();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
