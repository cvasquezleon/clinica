using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;

namespace CapaDominio.Contratos
{
    public interface IDiagnosticoDAO
    {
        int Registar(entDiagnostico objDiagnostico);
        List<entDiagnostico> Listar();
    }
}
