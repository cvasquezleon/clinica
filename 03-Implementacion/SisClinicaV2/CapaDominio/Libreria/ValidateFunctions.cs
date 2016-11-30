using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;

namespace CapaDominio.Libreria
{
    // LIBRERIA PROPIA DEL PROYECTO PARA HACER VALIDACIONES CON EXPRESIONES REGULARES

    public class ValidateFunctions
    {
        public static bool OnlyLettersValidate(string cadena)
        {
            String expresion = "^[a-zA-Z áéíóúÁÉÍÓÚÑñ]+$";

            Regex regExpresion = new Regex(expresion);
            return (regExpresion.IsMatch(cadena));
        }

        public static bool DocumentValidate(string cadena) 
        {
            String expresion = "^[0-9]{8}$";

            Regex regExpresion = new Regex(expresion);
            return (regExpresion.IsMatch(cadena));
        }

        public static bool OnlyNumbersValidate(string cadena)
        {
            String expresion = "^[0-9]+$";

            Regex regExpresion = new Regex(expresion);
            return (regExpresion.IsMatch(cadena));
        }

        public static bool EmailValidate(string cadena) 
        {
            String expresion = "^[a-z0-9._-]+@[a-z0-9]+\\.[a-z]{2,3}$"; //correos hotmail.com, gmail.com, [ ].com
            Regex regExpresion = new Regex(expresion);
            return (regExpresion.IsMatch(cadena));
        }
    }
}
