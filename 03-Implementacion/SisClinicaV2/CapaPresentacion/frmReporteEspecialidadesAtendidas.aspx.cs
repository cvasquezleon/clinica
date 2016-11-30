using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaAplicacion;
using CapaDominio.Entidades;

namespace CapaPresentacion
{
    public partial class frmReporteEspecialidadesAtendidas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnVerReporte_Click(object sender, EventArgs e)
        {
            if (txtFechaInicio.Text.Length > 0 && txtFechaFin.Text.Length > 0)
            {
                entEspecialidad objEspecialidad = new entEspecialidad();
                DateTime fechaInicio = Convert.ToDateTime(txtFechaInicio.Text);
                DateTime fechaFin = Convert.ToDateTime(txtFechaFin.Text);
                List<entEspecialidad> Lista = new List<entEspecialidad>();
                if (objEspecialidad.validarDatos(fechaInicio, fechaFin))
                {
                    GestionarEspecialidadServicio gestionarEspecialidadServicio = new GestionarEspecialidadServicio();
                    Lista = gestionarEspecialidadServicio.ListarAtencionesPorEspecialidad(txtFechaInicio.Text, txtFechaFin.Text);
                    ListarEspecialidad(Lista);
                }
                else
                {
                    Response.Write("<script>alert('La fecha de inicio debe ser menor a la fecha de fin.')</script>");
                    ListarEspecialidad(Lista);
                }
            }
            else
            {
                Response.Write("<script>alert('Llenar campos vacíos.')</script>");
            }
        }

        private void ListarEspecialidad(List<entEspecialidad> Lista)
        {
            dlsEspecialidades.DataSource = Lista;
            dlsEspecialidades.DataBind();
        }
    }
}