using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Libreria;
namespace CapaDominio.Entidades
{
    public class entEmpleado
    {
        public int idEmpleado { get; set; }
        public entTipoEmpleado TipoEmpleado { get; set; }
        public String nombres { get; set; }
        public String apPaterno { get; set; }
        public String apMaterno { get; set; }
        public String nroDocumento { get; set; }
        public Boolean estado { get; set; }
        public String imagen { get; set; }
        public String usuario { get; set; }
        public String clave { get; set; }

        public entEmpleado()
        {

        }

        public override String ToString()
        {
            return this.apPaterno;
        }

        public Boolean EsMedico()
        {
            if (this.TipoEmpleado.idTipoEmpleado == 1)
                return true;
            else return false;
        }

        public Boolean ComprobarNroDocumento(String nroDocumento)
        {
            if (ValidateFunctions.DocumentValidate(nroDocumento) && ValidateFunctions.OnlyNumbersValidate(nroDocumento))
                return true;
            else
                return false;
        }
    }
}
