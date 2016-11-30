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
    public class PacienteDAO : IPacienteDAO
    {
        private FabricaDAO fabricaDAO;

        public PacienteDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public List<entPaciente> Listar()
        {
            throw new NotImplementedException();
        }

        public entPaciente BuscarPorDNI(string dni)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            SqlDataReader dr = null;
            entPaciente objPaciente = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spBuscarPacienteDNI", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmDniPaciente", dni);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objPaciente = GetPaciente(dr);
                }
            }
            catch (Exception e)
            {
                throw;
            }
            return objPaciente;
        }

        public entPaciente BuscarPorApellidos(string apPaterno, string apMaterno)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            SqlDataReader dr = null;
            entPaciente objPaciente = null;

            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spBuscarPacientePorApellidos", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmApPaterno", apPaterno);
                cmd.Parameters.AddWithValue("@prmApMaterno", apMaterno);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objPaciente = GetPaciente(dr);
                }

            }
            catch (Exception e)
            {
                throw null;
            }
            return objPaciente;
        }

        public int Registrar(entPaciente paciente)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            int filas = -1;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spRegistrarPaciente", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmNombres", paciente.nombres);
                cmd.Parameters.AddWithValue("@prmApPaterno", paciente.apPaterno);
                cmd.Parameters.AddWithValue("@prmApMaterno", paciente.apMaterno);
                cmd.Parameters.AddWithValue("@prmEdad", paciente.edad);
                cmd.Parameters.AddWithValue("@prmSexo", paciente.sexo);
                cmd.Parameters.AddWithValue("@prmNroDocumento", paciente.nroDocumento);
                cmd.Parameters.AddWithValue("@prmDireccion", paciente.direccion);
                cmd.Parameters.AddWithValue("@prmTelefono", paciente.telefono);

                filas = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return filas;
            }
            return filas;
        }

        public int Modificar(entPaciente paciente)
        {
            throw new NotImplementedException();
        }

        public int Eliminar(entPaciente paciente)
        {
            throw new NotImplementedException();
        }

        private entPaciente GetPaciente(SqlDataReader dr)
        {
            entPaciente objPaciente = new entPaciente();
            objPaciente.idPaciente = Convert.ToInt32(dr["idPaciente"]);
            objPaciente.nombres = dr["nombres"].ToString();
            objPaciente.apPaterno = dr["apPaterno"].ToString();
            objPaciente.apMaterno = dr["apMaterno"].ToString();
            objPaciente.edad = Convert.ToInt32(dr["edad"]);
            objPaciente.sexo = dr["sexo"].ToString();
            objPaciente.nroDocumento = dr["nroDocumento"].ToString();
            objPaciente.direccion = dr["direccion"].ToString();
            objPaciente.telefono = dr["telefono"].ToString();
            objPaciente.estado = Convert.ToBoolean(dr["estado"]);
            //objPaciente.imagen = dr["imagen"].ToString();
            return objPaciente;
        }
    }
}
