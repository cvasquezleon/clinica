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
    public class GestionarDiagnosticoServicio
    {
        private FabricaDAO fabricaDAO;
        private IDiagnosticoDAO diagnosticoDAO;

        public GestionarDiagnosticoServicio()
        {
            fabricaDAO = new FabricaDAO();
            diagnosticoDAO = new DiagnosticoDAO(fabricaDAO);
        }

        #region "METODOS"

        public int Registrar(entDiagnostico objDiagnostico)
        {
            int filas = diagnosticoDAO.Registar(objDiagnostico);
            fabricaDAO.closeConexion();
            return filas;
        }

        #endregion  
    }
}
