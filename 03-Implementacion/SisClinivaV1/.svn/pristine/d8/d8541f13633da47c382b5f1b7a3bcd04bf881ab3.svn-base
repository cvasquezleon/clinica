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
    public class GestionarHora
    {
        private FabricaDAO fabricaDAO;
        private iHoraDAO horaDAO;

        public GestionarHora()
        {
            fabricaDAO = new FabricaDAO();
            horaDAO = new HoraDAO(fabricaDAO);
        }

        public entHora BuscarHora(String hora)
        {
            entHora objHora = horaDAO.BuscarHora(hora);
            fabricaDAO.closeConexion();
            
            return objHora;
        }
    }
}
