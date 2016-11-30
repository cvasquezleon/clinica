using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio.Entidades;
using CapaAplicacion;
using System.Data;
using System.Drawing;

namespace CapaPresentacion
{
    public partial class frmGestionarHorario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                entMedico objMedico = new entMedico();

                if (txtDNI.Text != string.Empty || !objMedico.validarDocumento(txtDNI.Text))
                {
                    GestionarMedicoServicio gestionarMedicoServicio = new GestionarMedicoServicio();
                    GestionarHorarioAtencionServicio gestionarHorarioAtencion = new GestionarHorarioAtencionServicio();

                    List<entHorarioAtencion> Lista = null;

                    objMedico = gestionarMedicoServicio.BuscarPorDNI(txtDNI.Text);

                    if (objMedico != null)
                    {
                        lblNombre.Text = objMedico.Empleado.nombres;
                        lblApellidos.Text = objMedico.Empleado.apPaterno + " " + objMedico.Empleado.apMaterno;
                        lblEspecialidad.Text = objMedico.Especialidad.descripcion;

                        Session["medico"] = objMedico;

                        Lista = gestionarHorarioAtencion.ListarxID(objMedico.idMedico);
                        grvHorarioAtencion.DataSource = CrearTablaHorarioAtencion(Lista);
                        grvHorarioAtencion.DataBind();

                    }
                    else
                    {
                        lblNombre.Text = "";
                        lblApellidos.Text = "";
                        lblEspecialidad.Text = "";
                        Response.Write("<script>alert('No existe medico con el DNI ingresado.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Ingrese numero de DNI.')</script>");
                }
            }
            catch (Exception ex) { throw ex; }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["horarioatencion"];
            DataRow dr = dt.NewRow();

            dr["FECHA DE ATENCION"] = txtFecha.Text;
            dr["HORA DE ATENCION"] = txtHoraInicio.Text;
            dr["ESTADO"] = "2";
            dt.Rows.Add(dr);

            grvHorarioAtencion.DataSource = dt;
            grvHorarioAtencion.DataBind();
            Session["horarioatencion"] = dt;

            txtFecha.Text = "";
            txtHoraInicio.Text = "";
        }

        protected void grvHorarioAtencion_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["horarioatencion"];
            entHorarioAtencion objHorarioAtencion = null;
            GestionarHorarioAtencionServicio gestionarHorarioAtencion = null;

            Boolean resultado = true;
            foreach (DataRow dr in dt.Rows)
            {
                if (dr["ESTADO"].ToString() == "2")
                {
                    objHorarioAtencion = SetHorarioAtencion(dr);

                    gestionarHorarioAtencion = new GestionarHorarioAtencionServicio();

                    int i = gestionarHorarioAtencion.Registrar(objHorarioAtencion);
                    if (i != 1)
                    {
                        Response.Write("<script>alert('Error al guardar.')</script>");
                        resultado = false;
                        break;
                    }
                }
            }
            if (resultado == true)
                Response.Write("<script>alert('Se Guardo Correctamente el nuevo Horario.')</script>");

            ActualizarTabla();
        }

        private void LimpiarCampos()
        {
            txtDNI.Text = "";
            txtFecha.Text = "";
            txtFechaM.Text = "";
            txtHoraInicio.Text = "";
        }
        private void ActualizarTabla()
        {
            entMedico objMedico = (entMedico)Session["medico"];
            GestionarHorarioAtencionServicio gestionarHorarioAtencion = new GestionarHorarioAtencionServicio();
            List<entHorarioAtencion> Lista = gestionarHorarioAtencion.ListarxID(objMedico.idMedico);

            grvHorarioAtencion.DataSource = CrearTablaHorarioAtencion(Lista);
            grvHorarioAtencion.DataBind();
        }
        private DataTable CrearTablaHorarioAtencion(List<entHorarioAtencion> Lista)
        {
            DataTable dt = new DataTable();
            DataRow dr = null;

            dt.Columns.Add("FECHA DE ATENCION", Type.GetType("System.String"));
            dt.Columns.Add("HORA DE ATENCION", Type.GetType("System.String"));
            dt.Columns.Add("ESTADO", Type.GetType("System.String"));

            foreach (entHorarioAtencion objHorarioAtencion in Lista)
            {
                dr = dt.NewRow();
                //<span class="label label-success">Approved</span>
                dr["FECHA DE ATENCION"] = objHorarioAtencion.fecha.ToShortDateString();
                dr["HORA DE ATENCION"] = objHorarioAtencion.Hora.hora;
                dr["ESTADO"] = "1";
                dt.Rows.Add(dr);
            }
            Session["horarioatencion"] = dt;
            return dt;

        }
        private entHorarioAtencion SetHorarioAtencion(DataRow dr)
        {
            entHorarioAtencion objHorarioAtencion = new entHorarioAtencion();
            GestionarHora gestionarHora = new GestionarHora();
            entHora objHora = gestionarHora.BuscarHora(dr["HORA DE ATENCION"].ToString());
            entMedico objMedico = (entMedico)Session["medico"];

            objHorarioAtencion.Medico = objMedico;
            objHorarioAtencion.fecha = Convert.ToDateTime(dr["FECHA DE ATENCION"]);
            objHorarioAtencion.Hora = objHora;
            objHorarioAtencion.estado = true;

            return objHorarioAtencion;
        }
    }
}