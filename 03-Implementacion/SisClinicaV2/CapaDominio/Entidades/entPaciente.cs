using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Libreria;

namespace CapaDominio.Entidades
{
    public class entPaciente
    {
        public int idPaciente { get; set; }
        public String nombres { get; set; }
        public String apPaterno { get; set; }
        public String apMaterno { get; set; }
        public int edad { get; set; }
        public String sexo { get; set; }
        public String nroDocumento { get; set; }
        public String direccion { get; set; }
        public String telefono { get; set; }
        public Boolean estado { get; set; }
        public String imagen { get; set; }
        public entHistoriaClinica HistorialClinica { get; set; }
        public List<entCita> ListaCitas { get; set; }

        public entPaciente()
        {
            ListaCitas = new List<entCita>();
        }

        public int GetTotalCitasPorFecha(List<entCita> lista, string fecha)
        {
            this.ListaCitas = lista;
            int totalCitas = 0;
            foreach (entCita c in ListaCitas)
            {
                string fechaReserva = c.fechaReserva.ToString("dd/MM/yyyy");

                if (fecha == fechaReserva)
                {
                    totalCitas++;
                }
            }
            return totalCitas;
        }


        public bool ValidarCitaMismaHora(List<entCita> lista, string fecha, string hora)
        {
            this.ListaCitas = lista;
            foreach (entCita c in ListaCitas)
            {
                string fechaReserva = c.fechaReserva.ToString("dd/MM/yyyy");

                if (c.hora == hora && fecha == fechaReserva)
                {
                    return true;
                }
            }
            return false;
        }


        public string VerificarSexo(string sexo)
        {
            if (sexo == "M")
            {
                return "Masculino";
            }
            else return "Femenino";
        }

        public string SetearSexo(string sexo)
        {
            if (sexo == "Masculino")
            {
                return "M";
            }
            else return "F";
        }

        //FUNCION PARA VALIDAR LOS CAMPOS, DONDE SOLO SE DEBE INGRESAR LETRAS 
        public bool ValidarDatosPersonales(String nombres, String apPaterno, String apMaterno)
        {
            if (ValidateFunctions.OnlyLettersValidate(nombres) && ValidateFunctions.OnlyLettersValidate(apPaterno)
                && ValidateFunctions.OnlyLettersValidate(apMaterno))
            {
                return true;
            }
            else return false;
        }

        //FUNCION PARA VALIDAR EL DNI, DONDE SOLO SE DEBE INGRESAR NUMEROS Y DEBE TENER UN TAMAÑO DE 8 CARACTERES
        public bool ValidarNroDocumento(String nroDocumento)
        {
            if (ValidateFunctions.DocumentValidate(nroDocumento))
            {
                return true;
            }
            else return false;
        }

        //FUNCION PARA VALIDAR CAMPOS NUMEROS COMO EDAD Y TELEFONO, DONDE SOLO DEBE CONTENER NUMEROS
        public bool ValidarEdadAndTelefono(String edad, String telefono)
        {
            if (ValidateFunctions.OnlyNumbersValidate(edad) && ValidateFunctions.OnlyNumbersValidate(telefono))
            {
                return true;
            }
            else return false;
        }


    }
}
