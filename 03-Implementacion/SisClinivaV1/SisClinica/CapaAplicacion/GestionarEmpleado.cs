using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;
using CapaDominio.Contratos;
using CapaPersistencia;
using CapaPersistencia.DAO;

namespace CapaAplicacion
{
    public class GestionarEmpleado
    {
        private FabricaDAO fabricaDAO;
        private IEmpleadoDAO empleadoDAO;

        #region Metodos

        public GestionarEmpleado()
        {
            fabricaDAO = new FabricaDAO();
            empleadoDAO = new EmpleadoDAO(fabricaDAO);
        }

        public entEmpleado Login(String usuario, String clave)
        {
            entEmpleado objEmpleado = empleadoDAO.Login(usuario, clave);
            fabricaDAO.closeConexion();
            return objEmpleado;
        }

        #endregion
    }
}
