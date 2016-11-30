using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using CapaDominio.Contratos;
using CapaDominio.Entidades;

namespace CapaPersistencia.DAO
{
    public class HistoriaClinicaDAO : IHistoriaClinicaDAO
    {
        private FabricaDAO fabricaDAO;

        public HistoriaClinicaDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public int Registrar(entHistoriaClinica objHistoriaClinica)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            int filas = -1;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spRegistrarHistoriaClinica", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdPaciente", objHistoriaClinica.Paciente.idPaciente);
                // cmd.Parameters.AddWithValue("@prmfechaApertura", objHistoriaClinica.fechaApertura);
                // cmd.Parameters.AddWithValue("@prmEstado", objHistoriaClinica.estado);
                filas = cmd.ExecuteNonQuery();
                return filas;
            }
            catch (Exception e)
            {
                return filas;
            }
        }

        public int Modificar(entHistoriaClinica objHistoriaClinica)
        {
            throw new NotImplementedException();
        }

        public int Eliminar(entHistoriaClinica objHistoriaClinica)
        {
            throw new NotImplementedException();
        }

        public entHistoriaClinica BuscarPorId(int idHistoriaClinica)
        {
            throw new NotImplementedException();
        }

        public entHistoriaClinica BuscarPorPaciente(int idPaciente)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            SqlDataReader dr = null;
            entHistoriaClinica objHitorialClinica = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spBuscarHistoriaClinica", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdPaciente", idPaciente);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objHitorialClinica = GetHistoriaClinica(dr);
                }
                
            }
            catch (Exception e)
            {
                throw null;
            }
            return objHitorialClinica;
        }

        public List<entHistoriaClinica> Listar()
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            SqlDataReader dr = null;
            List<entHistoriaClinica> Lista = null;
            entHistoriaClinica objHistoriaClinica;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spListarHistoriaClinica", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                dr = cmd.ExecuteReader();
                Lista = new List<entHistoriaClinica>();
                while (dr.Read())
                {
                    objHistoriaClinica = GetHistoriaClinica(dr);
                    Lista.Add(objHistoriaClinica);
                }
            }
            catch (Exception e)
            {
                throw null;
            }
            return Lista;
        }

        private entHistoriaClinica GetHistoriaClinica(SqlDataReader dr)
        {
            entPaciente objPaciente = new entPaciente();
            objPaciente.idPaciente = Convert.ToInt32(dr["idPaciente"]);
            entHistoriaClinica objHistoriaClinica = new entHistoriaClinica();
            objHistoriaClinica.Paciente = objPaciente;
            objHistoriaClinica.idHistoriaClinica = Convert.ToInt32(dr["idHistoriaClinica"]);
            objHistoriaClinica.fechaApertura = Convert.ToDateTime(dr["fechaApertura"]);
            objHistoriaClinica.estado = Convert.ToBoolean(dr["estado"]);

            return objHistoriaClinica;
        }

    }
}
