using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;

namespace CapaDominio.Contratos
{
    public interface IHorarioAtencionDAO
    {
        List<entHorarioAtencion> Listar(String fecha, int idEspecialidad);
        List<entHorarioAtencion> ListarxID(int idMedico);
        int Registrar(entHorarioAtencion objHorarioAtencion);
    }
}
