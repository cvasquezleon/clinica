using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDominio.Entidades
{
    public class entHistoriaClinica
    {
        public int idHistoriaClinica { get; set; }
        public entPaciente Paciente { get; set; }
        public DateTime fechaApertura { get; set; }
        public bool estado { get; set; }

        public entHistoriaClinica()
        {
            // new entPaciente();
        }

        public bool VerificarHistoriaClinica(entPaciente objPaciente, List<entHistoriaClinica> Lista)
        {
            //entHistoriaClinica objHistoriaClinica = null;
            //entPaciente paciente = null;
            bool resultado = false;
            foreach (entHistoriaClinica hc in Lista)
            {
                if (objPaciente.idPaciente == hc.Paciente.idPaciente)
                {/*
                    paciente = new entPaciente();
                    paciente = objPaciente;
                    objHistoriaClinica = new entHistoriaClinica();
                    objHistoriaClinica.idHistoriaClinica = hc.idHistoriaClinica;
                    objHistoriaClinica.Paciente = paciente;
                    objHistoriaClinica.fechaApertura = hc.fechaApertura;
                    objHistoriaClinica.estado = hc.estado;*/
                    resultado = true;
                    break;
                }
            }
            return resultado;
        }
    }
}
