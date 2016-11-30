using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;
using CapaDominio.Contratos;
using CapaPersistencia.DAO;

namespace CapaAplicacion
{
    public class GestionarMedicoServicio
    {
        private FabricaDAO fabricaDAO;
        private IMedicoDAO medicoDAO;

        public GestionarMedicoServicio()
        {
            fabricaDAO = new FabricaDAO();
            medicoDAO = new MedicoDAO(fabricaDAO);
        }

        #region "METODOS"

        public entMedico BuscarPorApellidos(string apPaterno, string apMaterno)
        {
            entMedico objMedio = new entMedico();
            objMedio = medicoDAO.BuscarPorApellidos(apPaterno, apMaterno);
            fabricaDAO.closeConexion();

            return objMedio;
        }

        public entMedico BuscarPorDNI(string dni)
        {
            entMedico objMedio = new entMedico();
            objMedio = medicoDAO.BuscarPorDNI(dni);
            fabricaDAO.closeConexion();

            return objMedio;
        }

        public List<entCita> ListarCitasPorMedico(int idMedico, string fechaInicio, string fechaFin)
        {
            entMedico objMedico = new entMedico();
            objMedico.ListaCitas = medicoDAO.ListarCitasPorMedico(idMedico, fechaInicio, fechaFin);
            fabricaDAO.closeConexion();
            return objMedico.ListaCitas;
        }
        #endregion
    }
}
