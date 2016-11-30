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
    public class MedicoDAO : IMedicoDAO
    {
        private FabricaDAO fabricaDAO;

        public MedicoDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public entMedico BuscarPorApellidos(string apPaterno, string apMaterno)
        {
            SqlConnection conex = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            entMedico objMedico = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spBuscarMedicoPorApellidos", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmApPaterno", apPaterno);
                cmd.Parameters.AddWithValue("@prmApMaterno", apMaterno);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objMedico = GetMedico(dr);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objMedico;
        }

        public entMedico BuscarPorDNI(string dni)
        {
            SqlConnection conex = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            entMedico objMedico = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spBuscarMedicoDNI", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmDni", dni);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objMedico = GetMedicoAll(dr);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objMedico;
        }

        public List<entCita> ListarCitasPorMedico(int idMedico, string fechaInicio, string fechaFin)
        {
            SqlConnection conex = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            entMedico objMedico = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spListarCitasPorMedico", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdMedico", idMedico);
                cmd.Parameters.AddWithValue("@prmFechaInicio", fechaInicio);
                cmd.Parameters.AddWithValue("@prmFechaFin", fechaFin);
                dr = cmd.ExecuteReader();
                objMedico = new entMedico();
                while (dr.Read())
                {
                    entCita objCita = GetCita(dr);
                    objMedico.ListaCitas.Add(objCita);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return objMedico.ListaCitas;
        }

        private entMedico GetMedico(SqlDataReader dr)
        {
            entMedico objMedico = new entMedico();
            entEspecialidad objEspecialidad = new entEspecialidad();
            entEmpleado objEmpleado = new entEmpleado();
            objEmpleado.idEmpleado = Convert.ToInt32(dr["idEmpleado"]);
            objEspecialidad.idEspecialidad = Convert.ToInt32(dr["idEspecialidad"]);
            objMedico.Empleado = objEmpleado;
            objMedico.Especialidad = objEspecialidad;
            objMedico.idMedico = Convert.ToInt32(dr["idMedico"]);
            objMedico.estado = Convert.ToBoolean(dr["estado"]);

            return objMedico;
        }

        private entMedico GetMedicoAll(SqlDataReader dr)
        {
            entMedico objMedico = new entMedico();
            entEspecialidad objEspecialidad = new entEspecialidad();
            entEmpleado objEmpleado = new entEmpleado();

            objMedico.idMedico = Convert.ToInt32(dr["idMedico"]);
            objMedico.estado = Convert.ToBoolean(dr["estado"]);
            //Objeto Empleado
            objEmpleado.idEmpleado = Convert.ToInt32(dr["idEmpleado"]);
            objEmpleado.nombres = dr["nombres"].ToString();
            objEmpleado.apPaterno = dr["apPaterno"].ToString();
            objEmpleado.apMaterno = dr["apMaterno"].ToString();
            objEmpleado.nroDocumento = dr["nroDocumento"].ToString();
            objEmpleado.imagen = dr["imagen"].ToString();
            objMedico.Empleado = objEmpleado;
            //Objeto Especialidad
            objEspecialidad.idEspecialidad = Convert.ToInt32(dr["idEspecialidad"]);
            objEspecialidad.descripcion = dr["Especialidad"].ToString();
            objMedico.Especialidad = objEspecialidad;

            return objMedico;
        }

        private entCita GetCita(SqlDataReader dr)
        {
            entPaciente objPaciente = new entPaciente();
            objPaciente.nombres = dr["nombres"].ToString();
            objPaciente.apPaterno = dr["apPaterno"].ToString();
            objPaciente.apMaterno = dr["apMaterno"].ToString();
            entCita objCita = new entCita();
            objCita.Paciente = objPaciente;
            objCita.fechaReserva = Convert.ToDateTime(dr["fechaReserva"]);
            objCita.estado = dr["estado"].ToString();

            return objCita;
        }

    }
}
