using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;
using CapaDominio.Contratos;
using System.Data;
using System.Data.SqlClient;

namespace CapaPersistencia.DAO
{
    public class HorarioAtencionDAO : IHorarioAtencionDAO
    {

        private FabricaDAO fabricaDAO;

        public HorarioAtencionDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public List<entHorarioAtencion> Listar(string fecha, int idEspecialidad)
        {
            SqlConnection conex = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            entHorarioAtencion objHorarioAtencion = null;
            List<entHorarioAtencion> Lista = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spListarHorarioAtencion", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmFecha", fecha);
                cmd.Parameters.AddWithValue("@prmIdEspecialidad", idEspecialidad);
                dr = cmd.ExecuteReader();
                Lista = new List<entHorarioAtencion>();
                while (dr.Read())
                {
                    objHorarioAtencion = GetHorarioAtencion(dr);
                    Lista.Add(objHorarioAtencion);
                }
            }
            catch (Exception e)
            {
                throw null;
            }
            return Lista;
        }

        public List<entHorarioAtencion> ListarxID(int idMedico)
        {
            SqlConnection conex = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            entHorarioAtencion objHorarioAtencion = null;
            List<entHorarioAtencion> Lista = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spListarHorarioAtencionPorMedico", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmidMedico", idMedico);
                dr = cmd.ExecuteReader();
                Lista = new List<entHorarioAtencion>();
                while (dr.Read())
                {
                    objHorarioAtencion = GetHorarioAtencion2(dr);
                    Lista.Add(objHorarioAtencion);
                }
            }
            catch (Exception e)
            {
                throw null;
            }
            return Lista;
        }

        public int Registrar(entHorarioAtencion objHorarioAtencion)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            int filas = -1;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spRegistrarHorarioAtencion", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdMedico", objHorarioAtencion.Medico.idMedico);
                cmd.Parameters.AddWithValue("@prmfecha", objHorarioAtencion.fecha);
                cmd.Parameters.AddWithValue("@prmidHora", objHorarioAtencion.Hora.idHora);
                cmd.Parameters.AddWithValue("@prmEstado", objHorarioAtencion.estado);
                filas = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return filas;
            }
            return filas;
        }

        private entHorarioAtencion GetHorarioAtencion(SqlDataReader dr)
        {
            entHora objHora = new entHora();
            objHora.hora = dr["hora"].ToString();
            entEmpleado objEmpleado = new entEmpleado();
            objEmpleado.nombres = dr["nombres"].ToString();
            objEmpleado.apPaterno = dr["apPaterno"].ToString();
            objEmpleado.apMaterno = dr["apMaterno"].ToString();
            entEspecialidad objEspecialidad = new entEspecialidad();
            objEspecialidad.descripcion = dr["descripcion"].ToString();
            entMedico objMedico = new entMedico();
            objMedico.idMedico = Convert.ToInt32(dr["idMedico"]);
            objMedico.Empleado = objEmpleado;
            objMedico.Especialidad = objEspecialidad;
            entHorarioAtencion objHorarioAtencion = new entHorarioAtencion();
            objHorarioAtencion.Medico = objMedico;
            objHorarioAtencion.Hora = objHora;

            return objHorarioAtencion;
        }

        private entHorarioAtencion GetHorarioAtencion2(SqlDataReader dr)
        {
            entHora objHora = new entHora();
            objHora.hora = dr["hora"].ToString();
            entMedico objMedico = new entMedico();
            objMedico.idMedico = Convert.ToInt32(dr["idMedico"]);
            entHorarioAtencion objHorarioAtencion = new entHorarioAtencion();
            objHorarioAtencion.Medico = objMedico;
            objHorarioAtencion.Hora = objHora;
            objHorarioAtencion.fecha = Convert.ToDateTime(dr["fecha"]);
            objHorarioAtencion.estado = Convert.ToBoolean(dr["estado"]);

            return objHorarioAtencion;
        }
    }
}
