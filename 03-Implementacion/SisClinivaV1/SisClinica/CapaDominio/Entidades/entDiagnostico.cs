using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDominio.Entidades
{
    public class entDiagnostico
    {
        public int idDiagnostico { get; set; }
        public entHistoriaClinica HistoriaClinica { get; set; }
        public DateTime fechaEmision { get; set; }
        public String observacion { get; set; }
        public Boolean estado { get; set; }

        public entDiagnostico()
        {

        }
    }
}
