﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;


namespace CapaDominio.Contratos
{
    public interface IEspecialidadDAO
    {
        List<entEspecialidad> Listar();
        List<entEspecialidad> ListarAtencionesPorEspecialidad(string fechaInicio, string fechaFin);
    }
}
