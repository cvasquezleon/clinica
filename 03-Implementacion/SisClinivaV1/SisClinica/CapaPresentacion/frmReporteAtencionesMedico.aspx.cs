using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio.Entidades;
using CapaAplicacion;

namespace CapaPresentacion
{
    public partial class frmReporteAtencionesMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnVerReporte_Click(object sender, EventArgs e)
        {
            if (txtFechaInicio.Text.Length > 0 && txtFechaFin.Text.Length > 0 && txtCodigoMedico.Text.Length > 0)
            {

                entMedico objMedico = new entMedico();
                if (objMedico.validarCodigo(txtCodigoMedico.Text))
                {
                    DateTime fechaInicio = Convert.ToDateTime(txtFechaInicio.Text);
                    DateTime fechaFin = Convert.ToDateTime(txtFechaFin.Text);
                    if (objMedico.validarDatos(txtCodigoMedico.Text, fechaInicio, fechaFin))
                    {
                        GestionarMedicoServicio gestionarMedicoServicio = new GestionarMedicoServicio();
                        int idMedico = Convert.ToInt32(txtCodigoMedico.Text);

                        objMedico.ListaCitas = gestionarMedicoServicio.ListarCitasPorMedico(idMedico, txtFechaInicio.Text, txtFechaFin.Text);
                        objMedico.ListaCitas = objMedico.CitasAtendidas(objMedico.ListaCitas);
                        if (objMedico.ListaCitas.Count > 0)
                        {
                            ListarCitasAtendidas(objMedico.ListaCitas);
                        }
                        else
                        {
                            Response.Write("<script>alert('No hay citas atendidas para las fechas seleccionadas.')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Verifique que los datos sean correctos. Las fecha de inicio debe ser menor a la fecha de fin')</script>");

                    }
                }
                else
                {
                    Response.Write("<script>alert('El código solo debe contener números.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Llenar campos vacíos.')</script>");
            }
        }

        private void ListarCitasAtendidas(List<entCita> ListaCitas)
        {
            dlsCitasAtendidas.DataSource = ListaCitas;
            dlsCitasAtendidas.DataBind();
        }
    }
}