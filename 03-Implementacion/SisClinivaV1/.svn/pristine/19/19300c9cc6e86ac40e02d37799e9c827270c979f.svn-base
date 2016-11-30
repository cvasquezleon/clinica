using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaAplicacion;
using System.Data;
using CapaDominio.Entidades;

namespace CapaPresentacion
{
    public partial class frmAtencionMedica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblFechaActual.Text = DateTime.Now.ToShortDateString();
                ListarAtenciones();
            }
        }

        protected void dlAtencionMedica_ItemCommand(object source, DataListCommandEventArgs e)
        {
            GestionarCitaServicio gestionarCitaServicio = new GestionarCitaServicio();

            if (e.CommandName == "Atencion")
            {
                entCita objCita =  CitaSeleccionada(e);

                /*ACTUALIZAR CITA A ATENDIDO - > Estado (A) atendido*/
                int filas = gestionarCitaServicio.ActualizarEstado(objCita.idCita);

                if (filas > 0)
                {
                    Response.Write("<script>alert('Cita actualizada exitosamente')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error al actualizar el estado de la Cita')</script>");
                }

                Response.Redirect("frmAtencionPaciente.aspx");
            }
            if (e.CommandName == "Cancelar")
            {
                entCita objCita = CitaSeleccionada(e);
                int filas = gestionarCitaServicio.Eliminar(objCita);

                ListarAtenciones();

            }
        }

        private void ListarAtenciones()
        {
            GestionarCitaServicio gestionarCitaServicio = new GestionarCitaServicio();
            dlAtencionMedica.DataSource = gestionarCitaServicio.Listar();
            dlAtencionMedica.DataBind();
        }

        private entCita CitaSeleccionada(DataListCommandEventArgs e)
        {
            GestionarCitaServicio gestionarCitaServicio = new GestionarCitaServicio();
            entCita objCita = new entCita();

            entPaciente objPaciente = new entPaciente();
            objPaciente.nombres = ((Label)e.Item.FindControl("lblNombres")).Text;
            objPaciente.apPaterno = ((Label)e.Item.FindControl("lblApellidoPaterno")).Text;
            objPaciente.apMaterno = ((Label)e.Item.FindControl("lblApellidoMaterno")).Text;
            objPaciente.edad = Convert.ToInt32(((Label)e.Item.FindControl("lblEdad")).Text);
            objPaciente.sexo = ((Label)e.Item.FindControl("lblSexo")).Text;

            int idCita = Convert.ToInt32(((Label)e.Item.FindControl("lblIdCita")).Text);

            Session["paciente"] = objPaciente;

            objCita = gestionarCitaServicio.BuscarPorId(idCita);
            Session["cita"] = objCita;

            return objCita;
        }

        protected void dlAtencionMedica_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}