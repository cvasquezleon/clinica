using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaPersistencia;
using CapaPersistencia.DAO;
using CapaDominio.Contratos;

namespace CapaAplicacion
{
    public class GestionarAtencionMedica
    {
        private FabricaDAO fabricaDAO;
        private IAtencionDAO atencionDAO;

        public GestionarAtencionMedica()
        {
            fabricaDAO = new FabricaDAO();
            atencionDAO = new AtencionDAO(fabricaDAO);
        }
    }
}
