using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;


namespace CapaDominio.Contratos
{
    public interface IHistoriaClinicaDAO
    {
        int Registrar(entHistoriaClinica objHistoriaClinica);
        int Modificar(entHistoriaClinica objHistoriaClinica);
        int Eliminar(entHistoriaClinica objHistoriaClinica);
        entHistoriaClinica BuscarPorId(int idHistoriaClinica);
        entHistoriaClinica BuscarPorPaciente(int idPaciente);
        List<entHistoriaClinica> Listar();
    }
}
