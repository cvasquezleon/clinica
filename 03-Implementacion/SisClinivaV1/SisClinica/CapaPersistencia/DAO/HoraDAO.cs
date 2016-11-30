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
    public class HoraDAO : iHoraDAO
    {
        private FabricaDAO fabricaDAO;

        public HoraDAO(FabricaDAO fabricaDAO)
        {
            this.fabricaDAO = fabricaDAO;
        }

        public entHora BuscarHora(String hora)
        {
            SqlConnection conex = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            entHora objHora = null;
            try
            {
                conex = fabricaDAO.openConexionSQL();
                cmd = new SqlCommand("spBuscarHora", conex);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmHora", hora);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objHora = GetHora(dr);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return objHora;
        }

        private entHora GetHora(SqlDataReader dr)
        {
            entHora objHora = new entHora();

            objHora.idHora = Convert.ToInt32(dr["idHora"]);
            objHora.hora = dr["hora"].ToString();

            return objHora;
        }

    }
}
