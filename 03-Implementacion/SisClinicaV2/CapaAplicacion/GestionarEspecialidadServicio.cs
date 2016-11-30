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
    public class GestionarEspecialidadServicio
    {
        private FabricaDAO fabricaDAO;
        private IEspecialidadDAO especialidadDAO;

        public GestionarEspecialidadServicio()
        {
            fabricaDAO = new FabricaDAO();
            especialidadDAO = new EspecialidadDAO(fabricaDAO);
        }

        #region "METODOS"

        public List<entEspecialidad> Listar()
        {
            List<entEspecialidad> Lista = especialidadDAO.Listar();
            fabricaDAO.closeConexion();
            return Lista;
        }

        public List<entEspecialidad> ListarAtencionesPorEspecialidad(string fechaInicio, string fechaFin)
        {
            List<entEspecialidad> Lista = especialidadDAO.ListarAtencionesPorEspecialidad(fechaInicio, fechaFin);
            entEspecialidad objEspecialidad = new entEspecialidad();
            Lista = objEspecialidad.TotalAtencionesPorEspecialidad(Lista);
            return Lista;
        }

        #endregion
    }
}
