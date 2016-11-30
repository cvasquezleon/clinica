using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Contratos;
using CapaDominio.Entidades;
using CapaPersistencia.DAO;

namespace CapaAplicacion
{
    public class GestionarHistoriaClinicaServicio
    {
        private FabricaDAO fabricaDAO;
        private IHistoriaClinicaDAO historiaClinicaDAO;

        public GestionarHistoriaClinicaServicio()
        {
            fabricaDAO = new FabricaDAO();
            historiaClinicaDAO = new HistoriaClinicaDAO(fabricaDAO);
        }

        #region "METODOS"
        public List<entHistoriaClinica> Listar()
        {
            List<entHistoriaClinica> Lista = new List<entHistoriaClinica>();
            Lista = historiaClinicaDAO.Listar();
            fabricaDAO.closeConexion();
            return Lista;
        }

        public int Registrar(entHistoriaClinica objHistoriaClinica)
        {
            int filas = -2;
            try
            {
                List<entHistoriaClinica> Lista = Listar();
                // entHistoriaClinica objHClinica = new entHistoriaClinica();
                if (!objHistoriaClinica.VerificarHistoriaClinica(objHistoriaClinica.Paciente, Lista))
                {
                    fabricaDAO.iniciarTransaccion();
                    filas = historiaClinicaDAO.Registrar(objHistoriaClinica);
                    if (filas == 1)
                    {
                        fabricaDAO.terminarTransaccion();
                        filas = 1;
                    }
                    else
                    {
                        fabricaDAO.cancelarTransaccion();
                    }
                }
                else
                {
                    return -1; // ya tiene historia clinica
                }
                return filas;
            }
            catch (Exception e)
            {
                return filas; // -2, error de una excepcion
            }
        }

        public entHistoriaClinica BuscarPorPaciente(int idPaciente)
        {
            entHistoriaClinica objHistoriaClinica = historiaClinicaDAO.BuscarPorPaciente(idPaciente);
            fabricaDAO.closeConexion();
            return objHistoriaClinica;
        }

        #endregion

    }
}
