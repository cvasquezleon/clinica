using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio;
using CapaDominio.Entidades;
using CapaDominio.Contratos;
using CapaAplicacion;


namespace CapaPresentacion
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                GestionarEmpleado gestionarEmpleado = new GestionarEmpleado();

                entEmpleado objEmpleado = gestionarEmpleado.Login(txtUsuario.Text, txtPassword.Text);
                if (objEmpleado != null)
                {
                    Session["empleado"] = objEmpleado;

                    Response.Redirect("ControlPanel.aspx");
                }
                else
                    Response.Write("<script>alert('Usuario o Password incorrectos')</script>");
            }
            catch (Exception ex) { throw ex; }
        }

    }
}