﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio.Entidades;

namespace CapaDominio.Contratos
{
    public interface IAtencionDAO
    {
        bool registrar(entAtencion objAtencion);
        bool modificar(entAtencion objAtencion);
        bool eliminar(entAtencion objAtencion);
        IAtencionDAO buscar(entAtencion objAtencion); 
    }
}
