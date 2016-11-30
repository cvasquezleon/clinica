using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio.Libreria;
using CapaDominio.Entidades;
using CapaAplicacion;

namespace CapaPresentacion
{
    public partial class frmGestionarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            entPaciente objPaciente = new entPaciente();
            if (objPaciente.ValidarDatosPersonales(txtNombres.Text, txtApPaterno.Text, txtApMaterno.Text) && objPaciente.ValidarNroDocumento(txtNroDocumento.Text)
                && objPaciente.ValidarEdadAndTelefono(txtEdad.Text, txtTelefono.Text))
            {
                GestionarPacienteServicio gestionarPacienteServicio = new GestionarPacienteServicio();
                objPaciente = GetDatos();
                int filas = gestionarPacienteServicio.Registrar(objPaciente);
                if (filas > 0)
                {
                    Response.Write("<script>alert('Paciente registrado exitosamente.')</script>");
                    LimparCampos();
                }
                else
                {
                    Response.Write("<script>alert('Error al registrar paciente.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Ingresar caracteres válidos. El DNI debe contener 8 caracteres.')</script>");
            }
        }

        private entPaciente GetDatos()
        {
            entPaciente objPaciente = new entPaciente();
            objPaciente.nombres = txtNombres.Text;
            objPaciente.apPaterno = txtApPaterno.Text;
            objPaciente.apMaterno = txtApMaterno.Text;
            objPaciente.edad = Convert.ToInt32(txtEdad.Text);
            objPaciente.sexo = objPaciente.SetearSexo(ddlSexo.SelectedValue);
            objPaciente.nroDocumento = txtNroDocumento.Text;
            objPaciente.direccion = txtDireccion.Text;
            objPaciente.telefono = txtTelefono.Text;

            return objPaciente;
        }

        private void LimparCampos()
        {
            txtNombres.Text = string.Empty;
            txtApPaterno.Text = string.Empty;
            txtApMaterno.Text = string.Empty;
            txtNroDocumento.Text = string.Empty;
            txtEdad.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            ddlSexo.SelectedValue = "0";
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ControlPanel.aspx");
        }
    }
}