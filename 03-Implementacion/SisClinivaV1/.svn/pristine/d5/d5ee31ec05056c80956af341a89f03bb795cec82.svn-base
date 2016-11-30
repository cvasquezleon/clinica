<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmGestionarPaciente.aspx.cs" Inherits="CapaPresentacion.frmGestionarPaciente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1 align="center">REGISTRO DE PACIENTES</h1>
    </section>
    <section class="content">
        <div class="row">
            <!--left column -->
            <div class="col-md-6">
                <div class="box box-primary">
                    <!--<div class="box-header">
                            <h3 class="box-title">DATOS DEL PACIENTE</h3>
                        </div>-->
                    <!-- <form role="form"> -->
                    <div class="box-body">
                        <div class="form-group">
                            <label>DOCUMENTO DE IDENTIDAD</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNroDocumento" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>NOMBRES</label>
                            <asp:TextBox ID="txtNombres" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>APELLIDO PATERNO</label>
                            <asp:TextBox ID="txtApPaterno" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>APELLIDO MATERNO</label>
                            <asp:TextBox ID="txtApMaterno" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!-- </form> -->
                </div>
            </div>
            <!--rigth column -->
            <div class="col-md-6">
                <div class="box box-primary">
                    <!--<div class="box-header">
                            <h3 class="box-title">DATOS DEL PACIENTE</h3>
                        </div>-->
                    <br />
                    <div class="box-body">
                        <div class="form-group">
                            <label>SEXO</label>
                            <asp:DropDownList ID="ddlSexo" CssClass="form-control" runat="server">
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Femenino</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>EDAD</label>
                            <asp:TextBox ID="txtEdad" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>TELÉFONO</label>
                            <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>DIRECCIÓN</label>
                            <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div align="center">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnRegistrar" CssClass="btn btn-primary" runat="server" Text="Registrar" Width="200px" OnClick="btnRegistrar_Click" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" Width="200px" OnClick="btnCancelar_Click" />

                    </td>
                </tr>
            </table>
        </div>

    </section>
    <!-- </aside> -->
    <!--</form>-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!--<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- InputMask -->
    <script src="../../js/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="../../js/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="../../js/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <!-- <script src="../../js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script> -->
    <!-- ****<script src="../../js/plugins/daterangepicker/calendario.js" type="text/javascript"></script>
    <!-- bootstrap color picker -->
    <!--<script src="../../js/plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
    <!-- bootstrap time picker -->
    <!--<script src="../../js/plugins/timepicker/bootstrap-timepicker.min.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <!--<script src="../../js/AdminLTE/app.js" type="text/javascript"></script>
    <!-- Page script -->
    <script type="text/javascript">
        $(function () {
            //Date range picker
            $('#reservation').daterangepicker();
        });
    </script>
</asp:Content>
