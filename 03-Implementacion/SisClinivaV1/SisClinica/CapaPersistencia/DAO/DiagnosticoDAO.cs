using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Contratos;
using CapaDominio.Entidades;
using CapaPersistencia.DAO;
using System.Data;
using System.Data.SqlClient;

namespace CapaPersistencia.DAO
{
    public class DiagnosticoDAO : IDiagnosticoDAO
    {

        private FabricaDAO fabricaDAO;

        public DiagnosticoDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public int Registar(entDiagnostico objDiagnostico)
        {
            SqlCommand cmd = null;
            SqlConnection conex = null;
            int filas = -1;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spRegistrarDiagnostico", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmIdHistoriaClinica", objDiagnostico.HistoriaClinica.idHistoriaClinica);
                cmd.Parameters.AddWithValue("@prmObservacion", objDiagnostico.observacion);
                filas = cmd.ExecuteNonQuery();

                return filas;
            }
            catch (Exception ex)
            {
                return filas;
            }
        }

        public List<entDiagnostico> Listar()
        {
            throw new NotImplementedException();
        }
    }
}
