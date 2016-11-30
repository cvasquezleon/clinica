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
    public partial class frmGestionarHorario2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                AgregarHorario();
            }
            
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            entHorarioAtencion objHorarioAtencion = new entHorarioAtencion();
            entHora objHora = new entHora();
            if (objHorarioAtencion.ComprobarFecha(Convert.ToDateTime(txtFecha2.Text)))
            {
                if (objHora.ValidarHora(txtHoraInicio.Text))
                {
                    DataTable dt = new DataTable();

                    dt = (DataTable)Session["horarioatencion"];
                    DataRow dr = dt.NewRow();

                    dr["FECHA DE ATENCION"] = txtFecha2.Text;
                    dr["HORA DE ATENCION"] = txtHoraInicio.Text;
                    dr["ESTADO"] = "2";
                    if (ComprobarDatosIguales2(dt, dr))
                    {
                        dt.Rows.Add(dr);
                        grvHorarioAtencion.DataSource = dt;
                        grvHorarioAtencion.DataBind();
                        Session["horarioatencion"] = dt;
                    }
                    else
                        Response.Write("<script>alert('Error: Existen Horas de Atencion iguales en Fechas de Atencion iguales.')</script>");
                }
                else
                    Response.Write("<script>alert('Error: La Hora seleccionada no esta permitida.')</script>");
            }
            else
                Response.Write("<script>alert('Error: La Fecha tiene que ser mayor a la de hoy.')</script>");

            LimpiarCampos();
        }
        protected void grvHorarioAtencion_Editar(object sender, EventArgs e)
        {
            txtFechaM.Text = grvHorarioAtencion.SelectedRow.Cells[2].Text;
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["horarioatencion"];
            entHorarioAtencion objHorarioAtencion = null;
            GestionarHorarioAtencionServicio gestionarHorarioAtencion = null;

            Boolean resultado = true;
            int temp = 0;

            foreach (DataRow dr in dt.Rows)
            {
                if (dr["ESTADO"].ToString() == "2")
                {
                    objHorarioAtencion = SetHorarioAtencion(dr);

                    gestionarHorarioAtencion = new GestionarHorarioAtencionServicio();

                    int i = gestionarHorarioAtencion.Registrar(objHorarioAtencion);
                    if (i != 1)
                    {
                        Response.Write("<script>alert('Error: Error al guardar, Intentelo nuevamente.')</script>");
                        resultado = false;
                        break;
                    }
                    temp++;
                }
            }
            if (temp == 0)
                Response.Write("<script>alert('Error: No hay nuevos horarios que agregar.')</script>");
            if (resultado == true && temp != 0)
                Response.Write("<script>alert('Se Guardo Correctamente el nuevo Horario.')</script>");

            ActualizarTabla();
        }
        private void LimpiarCampos()
        {
            txtFecha2.Text = "";
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
        private Boolean ComprobarDatosIguales(DataTable dt)
        {
            for(int i = 0; i <  dt.Rows.Count ; i++)
            {
                for (int j = 1; j < dt.Rows.Count; j++)
                {
                    if (dt.Rows[i]["FECHA DE ATENCION"].ToString().Equals(dt.Rows[j]["FECHA DE ATENCION"].ToString()))
                    {
                        if (dt.Rows[i]["HORA DE ATENCION"].ToString().Equals(dt.Rows[j]["HORA DE ATENCION"].ToString()))
                            return false;
                    }
                }
            }
            return true;
        }
        private Boolean ComprobarDatosIguales2(DataTable dt, DataRow dr)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dr["FECHA DE ATENCION"].ToString().Equals(dt.Rows[i]["FECHA DE ATENCION"].ToString()))
                {
                    if (dr["HORA DE ATENCION"].ToString().Equals(dt.Rows[i]["HORA DE ATENCION"].ToString()))
                        return false;
                }
            }
            return true;
        }
        private void AgregarHorario()
        {
            GestionarMedicoServicio gestionarMedicoServicio = new GestionarMedicoServicio();
            GestionarHorarioAtencionServicio gestionarHorarioAtencion = new GestionarHorarioAtencionServicio();
            entEmpleado objEmpleado = (entEmpleado)Session["empleado"];
            List<entHorarioAtencion> Lista = null;
            entMedico objMedico = gestionarMedicoServicio.BuscarPorDNI(objEmpleado.nroDocumento);

            if (objMedico != null)
            {
                lblNombre.Text = objMedico.Empleado.nombres;
                lblApellidos.Text = objMedico.Empleado.apPaterno + " " + objMedico.Empleado.apMaterno;
                lblEspecialidad.Text = objMedico.Especialidad.descripcion;
                lblNroDocumento.Text = objMedico.Empleado.nroDocumento;

                Session["medico"] = objMedico;

                Lista = gestionarHorarioAtencion.ListarxID(objMedico.idMedico);
                grvHorarioAtencion.DataSource = CrearTablaHorarioAtencion(Lista);
                grvHorarioAtencion.DataBind();

            }
        }
            
    }
}