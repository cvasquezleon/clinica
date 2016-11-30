using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Contratos;
using CapaDominio.Entidades;
using System.Data;
using System.Data.SqlClient;


namespace CapaPersistencia.DAO
{
    public class EspecialidadDAO : IEspecialidadDAO
    {
        private FabricaDAO fabricaDAO;

        public EspecialidadDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public List<entEspecialidad> Listar()
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            SqlDataReader dr = null;
            entEspecialidad objEspecialidad = null;
            List<entEspecialidad> Lista = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spListarEspecialidad", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                Lista = new List<entEspecialidad>();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    objEspecialidad = GetEspecialidad(dr);
                    Lista.Add(objEspecialidad);
                }
            }
            catch (Exception e)
            {
                throw;
            }
            return Lista;
        }

        public List<entEspecialidad> ListarAtencionesPorEspecialidad(string fechaInicio, string fechaFin)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            SqlDataReader dr = null;
            entEspecialidad objEspecialidad = null;
            List<entEspecialidad> Lista = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spListarEspecialidadesMasAtendidas", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmFechaInicio", fechaInicio);
                cmd.Parameters.AddWithValue("@prmFechaFin", fechaFin);
                dr = cmd.ExecuteReader();
                Lista = new List<entEspecialidad>();
                while (dr.Read())
                {
                    objEspecialidad = GetEspecialidad(dr);
                    Lista.Add(objEspecialidad);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return Lista;
        }

        private entEspecialidad GetEspecialidad(SqlDataReader dr)
        {
            entEspecialidad objEspecialidad = new entEspecialidad();
            objEspecialidad.idEspecialidad = Convert.ToInt32(dr["idEspecialidad"]);
            objEspecialidad.descripcion = dr["descripcion"].ToString();

            return objEspecialidad;
        }

       /* private entEspecialidad GetAllEspecialidad(SqlDataReader dr)
        {
            entEspecialidad objEspecialidad = new entEspecialidad();
            objEspecialidad.idEspecialidad = Convert.ToInt32(dr["idEspecialidad"]);
            objEspecialidad.descripcion = dr["descripcion"].ToString();
            return objEspecialidad;
        }
        */
    }
}
