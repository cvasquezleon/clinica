using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;

namespace CapaDominio.Contratos
{
    public interface ICitaDAO
    {
        int Registrar(entCita objCita);
        int Modificar(entCita objCita);
        int Eliminar(entCita objCita);
        int ActualizarEstado(int idCita);
        entCita BuscarPorId(int idCita); 
        List<entCita> Listar();
        List<entCita> ListarCitasPorPaciente(int idPaciente);
    } 
}
