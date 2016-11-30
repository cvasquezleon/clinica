using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Contratos;
using CapaDominio.Entidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaPersistencia.DAO
{
    public class EmpleadoDAO : IEmpleadoDAO
    {
        private FabricaDAO fabricaDAO;

        public EmpleadoDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public entEmpleado Login(String usuario, String password)
        {
            entEmpleado objEmpleado = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            SqlConnection cn = null;
            try
            {
                cn = new SqlConnection();
                cn = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spLogin", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("prmUsuario", usuario);
                cmd.Parameters.AddWithValue("prmClave", password);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objEmpleado = GetSolicita(dr);
                }
            }
            catch (Exception ex) { throw ex; }
            return objEmpleado;
        }

        private entEmpleado GetSolicita(SqlDataReader dr)
        {
            entEmpleado objEmpleado = new entEmpleado();
            entTipoEmpleado objTipoEmpleado = new entTipoEmpleado();

            objEmpleado.idEmpleado = Convert.ToInt32(dr["idEmpleado"]);
            objEmpleado.nombres = dr["nombres"].ToString();
            objEmpleado.apPaterno = dr["apPaterno"].ToString();
            objEmpleado.apMaterno = dr["apMaterno"].ToString();
            objEmpleado.nroDocumento = dr["nroDocumento"].ToString();
            objEmpleado.estado = Convert.ToBoolean(dr["estado"]);
            objEmpleado.imagen = dr["imagen"].ToString();
            objEmpleado.usuario = dr["usuario"].ToString();
            objEmpleado.clave = dr["clave"].ToString();
            objTipoEmpleado.idTipoEmpleado = Convert.ToInt32(dr["idTipoEmpleado"]);
            objEmpleado.TipoEmpleado = objTipoEmpleado;
            return objEmpleado;
        }
    }
}
