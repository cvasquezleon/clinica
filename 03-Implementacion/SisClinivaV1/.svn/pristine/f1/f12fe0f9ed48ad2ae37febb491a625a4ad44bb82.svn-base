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
    public class GestionarPacienteServicio
    {
        private FabricaDAO fabricaDAO;
        private IPacienteDAO pacienteDAO;

        #region "METODOS"
        public GestionarPacienteServicio()
        {
            fabricaDAO = new FabricaDAO();
            pacienteDAO = new PacienteDAO(fabricaDAO);
        }
                 
        public entPaciente BuscarPorApellidos(string apPaterno, string apMaterno)
        {
            entPaciente objPaciente = pacienteDAO.BuscarPorApellidos(apPaterno, apMaterno);
            fabricaDAO.closeConexion();
            return objPaciente;
        }

        public entPaciente BuscarPorDNI(string dni)
        {
            entPaciente objPaciente = pacienteDAO.BuscarPorDNI(dni);
            fabricaDAO.closeConexion();
            return objPaciente;
        }

        public int Registrar(entPaciente objPaciente)
        {
            int filas = pacienteDAO.Registrar(objPaciente);
            fabricaDAO.closeConexion();
            return filas;
        }
        
        #endregion

    }
}
