using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;

namespace CapaDominio.Contratos
{
    public interface IPacienteDAO
    {
        List<entPaciente> Listar(); 
        entPaciente BuscarPorDNI(string dni);
        entPaciente BuscarPorApellidos(string apPaterno, string apMaterno);
        int Registrar(entPaciente paciente);
        int Modificar(entPaciente paciente);
        int Eliminar(entPaciente paciente);
    }
}
