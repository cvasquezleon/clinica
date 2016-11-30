using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDominio.Entidades
{
    public class entHora
    {
        public int idHora { get; set; }
        public String hora { get; set; }

        public Boolean ValidarHora(String hora)
        {
            if (hora.Equals("12:30") || hora.Equals("13:00") || hora.Equals("13:30") || hora.Equals("14:00") || hora.Equals("14:30") || hora.Equals("21:30") || hora.Equals("22:00") ||
                hora.Equals("22:30") || hora.Equals("23:00") || hora.Equals("23:30") || hora.Equals("00:00") || hora.Equals("00:30") || hora.Equals("1:30") || hora.Equals("2:30") ||
                hora.Equals("3:00") || hora.Equals("3:30") || hora.Equals("4:00") || hora.Equals("4:30") || hora.Equals("5:00") || hora.Equals("5:30") || hora.Equals("6:00") ||
                hora.Equals("6:30") || hora.Equals("7:00") || hora.Equals("7:30") || hora.Equals("8:00") || hora.Equals("8:30"))
            {
                return false;
            }
            else
                return true;
        }
    }
}
