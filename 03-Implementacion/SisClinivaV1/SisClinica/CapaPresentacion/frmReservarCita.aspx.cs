using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CapaDominio.Entidades;
using CapaAplicacion;


namespace CapaPresentacion
{
    public partial class frmReservarCita : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CargarEspecialidad();
            }
        }

        private void CargarEspecialidad()
        {
            GestionarEspecialidadServicio gestionarEspecialidadServicio = new GestionarEspecialidadServicio();
            ddlEspecialidad.DataSource = gestionarEspecialidadServicio.Listar();
            ddlEspecialidad.DataTextField = "descripcion";
            ddlEspecialidad.DataValueField = "idEspecialidad";
            ddlEspecialidad.DataBind();
        }

        private void LlenarCampos(entPaciente objPaciente)
        {
            txtNombres.Text = objPaciente.nombres;
            txtApellidos.Text = objPaciente.apPaterno + " " + objPaciente.apMaterno;
            txtTelefono.Text = objPaciente.telefono;
            txtEdad.Text = objPaciente.edad.ToString();
            txtSexo.Text = objPaciente.VerificarSexo(objPaciente.sexo);
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            //BUSQUEDA DE PACIENTES
            GestionarPacienteServicio gestionarPacienteServicio = new GestionarPacienteServicio();

            entPaciente objPaciente = new entPaciente();
            if (objPaciente.ValidarNroDocumento(txtDNI.Text))
            {
                objPaciente = gestionarPacienteServicio.BuscarPorDNI(txtDNI.Text);
                if (objPaciente != null)
                {
                    LlenarCampos(objPaciente);
                }
                else
                {
                    Response.Write("<script>alert('El Paciente buscado no existe.')</script>");
                    LimpiarCampos();
                }
            }
            else
            {
                Response.Write("<script>alert('El número del documento debe contener 8 caracteres')</script>");
                LimpiarCampos();
            }

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ControlPanel.aspx");
        }

        protected void btnBuscarHorario_Click(object sender, EventArgs e)
        {
            if (txtNombres.Text != string.Empty)
            {

                if (txtFechaAtencion.Text != string.Empty)
                {
                    DateTime fechaReserva = Convert.ToDateTime(txtFechaAtencion.Text);
                    DateTime fechaActual = Convert.ToDateTime(DateTime.Now.ToShortDateString());
                    if (fechaReserva >= fechaActual)
                    {
                        ListarHorariosDisponibles();
                    }
                    else
                    {
                        Response.Write("<script>alert('La fecha ingresada es menor a la fecha actual.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Ingrese una fecha')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Debe buscar al paciente.')</script>");
            }
        }

        protected void dlsHorarioReserva_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            int cont = 0;
            string nombres = "";
            string[] spli = new string[4];
            string hora = "";

            //RECORRER TODOS LOS checkBox
            foreach (DataListItem dli in dlsHorarioReserva.Items)
            {
                CheckBox chk = (CheckBox)dli.FindControl("chkSeleccion");
                if (chk.Checked)
                {
                    cont++;
                    nombres = ((Label)dli.FindControl("lblMedico")).Text;
                    spli = nombres.Split(new Char[] { ' ' });
                    hora = ((Label)dli.FindControl("lblHora")).Text;
                }
            }

            if (cont == 1)
            {
                GestionarCitaServicio gestionarCitaServicio = new GestionarCitaServicio();
                GestionarPacienteServicio gestionarPacienteServicio = new GestionarPacienteServicio();
                GestionarMedicoServicio gestionarMedicoServicio = new GestionarMedicoServicio();
                //buscarMedico (por apellidos)
                entMedico objMedico = new entMedico();
                objMedico = gestionarMedicoServicio.BuscarPorApellidos(spli[2].ToString(), spli[3].ToString());
                //buscarPaciente (por nroDocumento)
                entPaciente objPaciente = new entPaciente();
                objPaciente = gestionarPacienteServicio.BuscarPorDNI(txtDNI.Text);
                // registrar la cita
                entCita objCita = new entCita();
                List<entCita> Lista = gestionarCitaServicio.ListarCitasPorPaciente(objPaciente.idPaciente);
                int totalCitas = objPaciente.GetTotalCitasPorFecha(Lista, txtFechaAtencion.Text);
                bool mismaHora = objPaciente.ValidarCitaMismaHora(Lista, txtFechaAtencion.Text, hora);

                if (totalCitas < objCita.totalCitas)
                {

                    if (!mismaHora)
                    {
                        objCita.Paciente = objPaciente;
                        objCita.Medico = objMedico;
                        objCita.hora = hora;
                        objCita.fechaReserva = Convert.ToDateTime(txtFechaAtencion.Text);
                        int filas = gestionarCitaServicio.Registrar(objCita);

                        if (filas == 1)
                        {
                            Response.Write("<script>alert('Cita registrada exitosamente.')</script>");
                            LimpiarCampos();
                            ListarHorariosDisponibles();
                        }
                        else
                        {
                            Response.Write("<script>alert('Error al registrar cita.')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Ya tiene una cita para la hora seleccionada.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Ya ha registrado 2 citas para esta fecha.')</script>");
                    txtFechaAtencion.Text = string.Empty;
                }
            }
            else if (cont == 0)
            {
                Response.Write("<script>alert('Seleccione un horario.')</script>");
            }
            else
            {
                Response.Write("<script>alert('Solo debe seleccionar un horario.')</script>");
            }
        }

        private void ListarHorariosDisponibles()
        {
            GestionarHorarioAtencionServicio gestionarHorarioAtencion = new GestionarHorarioAtencionServicio();
            GestionarCitaServicio gestionarCitaServicio = new GestionarCitaServicio();
            entMedico objMedico = new entMedico();
            List<entHorarioAtencion> Lista = objMedico.HorariosDisponibles(gestionarHorarioAtencion.Listar(txtFechaAtencion.Text, Convert.ToInt32(ddlEspecialidad.SelectedValue)), gestionarCitaServicio.Listar());
            dlsHorarioReserva.DataSource = Lista;
            dlsHorarioReserva.DataBind();
            /*
            if (Lista.Count == 0)
            {
                Response.Write("<script>alert('No hay horarios disponibles para la fecha o especialidad seleccionada.')</script>");
            }*/
        }

        private void LimpiarCampos()
        {
            txtNombres.Text = string.Empty;
            txtApellidos.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            txtEdad.Text = string.Empty;
            txtSexo.Text = string.Empty;
            txtDNI.Text = string.Empty;
            txtFechaAtencion.Text = string.Empty;
        }
    }
}