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
    public class GestionarHorarioAtencionServicio
    {
        private FabricaDAO fabricaDAO;
        private IHorarioAtencionDAO horarioAtencionDAO;

        public GestionarHorarioAtencionServicio()
        {
            fabricaDAO = new FabricaDAO();
            horarioAtencionDAO = new HorarioAtencionDAO(fabricaDAO);
        }

        public List<entHorarioAtencion> Listar(String fecha, int idEspecialidad)
        {
            List<entHorarioAtencion> Lista = horarioAtencionDAO.Listar(fecha, idEspecialidad);
            fabricaDAO.closeConexion();
            return Lista;
        }

        public List<entHorarioAtencion> ListarxID(int idMedico)
        {
            List<entHorarioAtencion> Lista = horarioAtencionDAO.ListarxID(idMedico);
            fabricaDAO.closeConexion();
            return Lista;
        }

        public int Registrar(entHorarioAtencion objHorarioAtencion)
        {
            int i = horarioAtencionDAO.Registrar(objHorarioAtencion);
            fabricaDAO.closeConexion();

            return i;

        }
    }
}
