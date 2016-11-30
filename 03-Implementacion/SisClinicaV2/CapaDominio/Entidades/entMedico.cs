using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Libreria;

namespace CapaDominio.Entidades
{
    public class entMedico : entEmpleado
    {
        public int idMedico { get; set; }
        public entEmpleado Empleado { get; set; }
        public entEspecialidad Especialidad { get; set; }
        public List<entCita> ListaCitas { get; set; }
        public List<entHorarioAtencion> ListaHorarioAtencion { get; set; }

        public entMedico()
        {
            ListaCitas = new List<entCita>();
        }

        // metodo que busca en todos los horarios, si se encuentra una cita, de ser verdad no lo guardo, caso contrario se alamacena en horarios disponibles
        public List<entHorarioAtencion> HorariosDisponibles(List<entHorarioAtencion> ListaHorarioAtencion, List<entCita> ListCitas)
        {
            this.ListaHorarioAtencion = new List<entHorarioAtencion>();
            //this.ListaCitas = ListaCitas;
            bool esta = false;
            foreach (entHorarioAtencion ha in ListaHorarioAtencion)
            {

                foreach (entCita c in ListCitas)
                {
                    if (c.hora == ha.Hora.hora && c.Medico.idMedico == ha.Medico.idMedico)
                    {
                        esta = true;
                        break;
                    }
                }
                if (esta == false)
                {
                    this.ListaHorarioAtencion.Add(ha);
                }
                else
                {
                    esta = false;
                }
            }
            return this.ListaHorarioAtencion;
        }

        public List<entCita> CitasAtendidas(List<entCita> ListCitas)
        {
            ListaCitas = new List<entCita>();
            foreach (entCita objCita in ListCitas)
            {
                if (objCita.estado == "A")
                {
                    ListaCitas.Add(objCita);
                }
            }
            return ListaCitas;
        }

        public bool validarDatos(string idMedico, DateTime fechaInicio, DateTime fechaFin)
        {
            if (idMedico.Length > 0 && fechaInicio <= fechaFin)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool validarCodigo(string idMedico)
        {
            if (ValidateFunctions.OnlyNumbersValidate(idMedico))
            {
                return true;
            }
            else return false;
        }

        public bool validarDocumento(string nroDocumento)
        {
            if (ValidateFunctions.DocumentValidate(nroDocumento))
            {
                return true;
            }
            else return false;
        }
    }
}
