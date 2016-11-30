using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDominio.Entidades
{
    public class entEspecialidad
    {
        public int idEspecialidad { get; set; }
        public String descripcion { get; set; }
        public Boolean estado { get; set; }
        public int _atenciones { get; set; }
        public bool marcado { get; set; } // variable para poder agrupar por especialidad

        public entEspecialidad()
        {

        }

        public List<entEspecialidad> TotalAtencionesPorEspecialidad(List<entEspecialidad> Lista)
        {
            List<entEspecialidad> ListaAtenciones = new List<entEspecialidad>();

            foreach (entEspecialidad e in Lista)
            {
                e.marcado = false;
            }

            for (int i = 0; i < Lista.Count; i++)
            {
                if (Lista[i].marcado == false)
                {
                    Lista[i].marcado = true;
                    Lista[i]._atenciones = 1;

                    for (int j = i + 1; j < Lista.Count; j++)
                    {
                        if (Lista[j].marcado == false && Lista[i].idEspecialidad == Lista[j].idEspecialidad)
                        {
                            Lista[i]._atenciones++;
                            Lista[j].marcado = true;
                        }
                    }
                    ListaAtenciones.Add(Lista[i]);
                }
            }
            return ListaAtenciones;
        }

        public bool validarDatos(DateTime fechaInicio, DateTime fechaFin)
        {
            if (fechaInicio <= fechaFin)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
