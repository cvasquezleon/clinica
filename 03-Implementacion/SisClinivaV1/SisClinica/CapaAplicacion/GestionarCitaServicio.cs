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
    public class GestionarCitaServicio
    {
        private FabricaDAO fabricaDAO;
        private ICitaDAO citaDAO;

        #region "METODOS"

        public GestionarCitaServicio()
        {
            fabricaDAO = new FabricaDAO();
            citaDAO = new CitaDAO(fabricaDAO);
        }

        public int Registrar(entCita objCita)
        {
            int filas = citaDAO.Registrar(objCita);
            fabricaDAO.closeConexion();
            return filas;
        }

        public List<entCita> Listar()
        {
            List<entCita> listaCitas = citaDAO.Listar(); 
            fabricaDAO.closeConexion();
            return listaCitas;
        } 

        public entCita BuscarPorId(int idCita)
        {
            entCita objCita = citaDAO.BuscarPorId(idCita);
            fabricaDAO.closeConexion();
            return objCita;
        }

        public int ActualizarEstado(int idCita)
        {
            int filas = citaDAO.ActualizarEstado(idCita);
            fabricaDAO.closeConexion();
            return filas;
        }

        public int Eliminar(entCita objCita)
        {
            int filas = citaDAO.Eliminar(objCita);
            fabricaDAO.closeConexion();
            return filas;
        }

        public List<entCita> ListarCitasPorPaciente(int idPaciente)
        {
            List<entCita> Lista = citaDAO.ListarCitasPorPaciente(idPaciente);
            fabricaDAO.closeConexion();
            return Lista;
        }

        #endregion
    }
}
