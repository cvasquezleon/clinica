using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDominio.Entidades
{
    public class entCita
    {
        public int idCita { get; set; }
        public entMedico Medico { get; set; }
        public entPaciente Paciente { get; set; }
        public DateTime fechaReserva { get; set; }
        public String observacion { get; set; }
        public String estado { get; set; }
        public String hora { get; set; }
        private int _totalCitas = 2;  // maximo de citas por persona es 2 diarias

        public int totalCitas
        {
            get { return _totalCitas; }
            set { _totalCitas = value; }
        }

        public entCita()
        {

        }
    }
}
