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
    public class CitaDAO : ICitaDAO
    {
        private FabricaDAO fabricaDAO;


        public CitaDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public int Registrar(entCita objCita)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            int filas = -1;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spRegistrarCita", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdMedico", objCita.Medico.idMedico);
                cmd.Parameters.AddWithValue("@prmIdPaciente", objCita.Paciente.idPaciente);
                cmd.Parameters.AddWithValue("@prmHora", objCita.hora);
                cmd.Parameters.AddWithValue("@prmFechaReserva", objCita.fechaReserva);
                filas = cmd.ExecuteNonQuery();
            }
            catch (Exception ex) 
            {
                return filas;
            }
            return filas;
        }

        public int Modificar(entCita objCita)
        {
            throw new NotImplementedException();
        }

        public int Eliminar(entCita objCita)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            int filas = -1;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spEliminarCita", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdCita", objCita.idCita);
                filas = cmd.ExecuteNonQuery();
                return filas;
            }
            catch (Exception ex)
            {
                return filas;
            }
        }

        public entCita BuscarPorId(int idCita)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            SqlDataReader dr = null;
            entCita objCita = null;
            try
            {
                conex = new SqlConnection();
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spBuscarCita", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdCita", idCita);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objCita = GetSoloCita(dr);
                }

            }
            catch (Exception ex)
            {
                throw null;
            }
            return objCita;

        }

        public int ActualizarEstado(int idCita)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            int filas = -1;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spActualizarEstadoCita", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdCita", idCita);
                filas = cmd.ExecuteNonQuery();
                return filas;
            }
            catch (Exception ex)
            {
                return filas;
            }
        }

        public List<entCita> Listar()
        {
            List<entCita> listaCitas = null;
            SqlCommand cmd = null;
            SqlConnection conex = null;
            SqlDataReader dr = null;
            entCita objCita;
            try
            {
                conex = new SqlConnection();
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spListarCitas", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                dr = cmd.ExecuteReader();
                listaCitas = new List<entCita>();
                while (dr.Read())
                {
                    objCita = GetCita(dr);
                    listaCitas.Add(objCita);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
            return listaCitas;
        }

        public List<entCita> ListarCitasPorPaciente(int idPaciente)
        {
            SqlConnection conex = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            List<entCita> Lista = null;
            entCita objCita = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spListarCitaporPaciente", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmidPaciente", idPaciente);
                dr = cmd.ExecuteReader();
                Lista = new List<entCita>();
                while (dr.Read())
                {
                    objCita = GetSoloCita(dr);
                    Lista.Add(objCita);
                }
            }
            catch (Exception e)
            {
                throw;
            }
            return Lista;
        }

        private entCita GetCita(SqlDataReader dr)
        {
            entCita objCita = new entCita();

            objCita.idCita = Convert.ToInt32(dr["idCita"]);
            objCita.Paciente = GetPaciente(dr);
            objCita.fechaReserva = Convert.ToDateTime(dr["fechaReserva"]);
            objCita.hora = dr["hora"].ToString();

            entMedico objMedico = new entMedico();
            objMedico.idMedico = Convert.ToInt32(dr["idMedico"]);
            objCita.Medico = objMedico;
            return objCita;
        }

        private entCita GetSoloCita(SqlDataReader dr)
        {
            entCita objCita = new entCita();
            entMedico objMedico = new entMedico();
            entPaciente objPaciente = new entPaciente();

            objMedico.idMedico = Convert.ToInt32(dr["idMedico"]);
            objPaciente.idPaciente = Convert.ToInt32(dr["idPaciente"]);
            objCita.idCita = Convert.ToInt32(dr["idCita"]);
            objCita.Medico = objMedico;
            objCita.Paciente = objPaciente;
            objCita.fechaReserva = Convert.ToDateTime(dr["fechaReserva"]);
            objCita.observacion = dr["observacion"].ToString();
            objCita.estado = dr["estado"].ToString();
            objCita.hora = dr["hora"].ToString();
            return objCita;
        }

        private entPaciente GetPaciente(SqlDataReader dr)
        {
            entPaciente objPaciente = new entPaciente();

            objPaciente.idPaciente = Convert.ToInt32(dr["idPaciente"]);
            objPaciente.nombres = dr["nombres"].ToString();
            objPaciente.apPaterno = dr["apPaterno"].ToString();
            objPaciente.apMaterno = dr["apMaterno"].ToString();
            objPaciente.edad = Convert.ToInt32(dr["edad"]);
            String s = dr["sexo"].ToString();

            if (s == "M")
            {
                objPaciente.sexo = "Masculino";
            }
            else
            {
                objPaciente.sexo = "Femenino";
            }

            objPaciente.nroDocumento = dr["nroDocumento"].ToString();

            return objPaciente;
        }
    }
}
