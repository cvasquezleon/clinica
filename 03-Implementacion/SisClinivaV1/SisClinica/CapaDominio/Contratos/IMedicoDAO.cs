using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;


namespace CapaDominio.Contratos
{
    public interface IMedicoDAO
    {
        entMedico BuscarPorApellidos(string apPaterno, string apMaterno);
        entMedico BuscarPorDNI(String dni);
        List<entCita> ListarCitasPorMedico(int idMedico, string fechaInicio, string fechaFin);
    }
}
