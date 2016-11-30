<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmReservarCita.aspx.cs" Inherits="CapaPresentacion.frmReservarCita" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--reservado para right aside -->
    <!--<aside class="right-side">-->
    <section class="content-header">
        <h1 align="center">RESERVA DE CITAS</h1>
    </section>
    <section class="content">
        <div class="box-header">
            <h3 align="center" class="box-title">DATOS DEL PACIENTE</h3>
        </div>
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
                        <div class="input-group">
                            <asp:TextBox ID="txtDNI" CssClass="form-control" runat="server"></asp:TextBox>
                            <div class="input-group-btn">
                                <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-danger" Text="BUSCAR" OnClick="btnBuscar_Click" />
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <label>NOMBRES</label>
                            <asp:TextBox ID="txtNombres" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>APELLIDOS</label>
                            <asp:TextBox ID="txtApellidos" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
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
                            <label>TELÉFONO</label>
                            <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>EDAD</label>
                            <asp:TextBox ID="txtEdad" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>SEXO</label>
                            <asp:TextBox ID="txtSexo" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <section class="content-header">
            <h3 align="center">HORARIOS DE ATENCIÓN</h3>
        </section>
        <!--SELECCIONAR HORARIO DE ATENCION -->
        <div class="row">
            <!--left column -->
            <div class="col-md-6">
                <div class="box box-primary">
                    <!-- <form role="form"> -->
                    <div class="box-body">
                        <!-- INICIO CALENDARIO -->
                        <div class="form-group">
                            <label>FECHA</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <asp:TextBox ID="txtFechaAtencion" runat="server" CssClass="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask=""></asp:TextBox>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->
                        <!-- FIN CALENDARIO-->
                    </div>
                    <!-- </form> -->
                </div>
            </div>
            <!--rigth column -->
            <div class="col-md-4">
                <div class="box box-primary">
                    <div class="box-body">
                        <!-- <form role="form"> -->
                        <div class="form-group">
                            <label>ESPECIALIDAD</label>
                            <asp:DropDownList ID="ddlEspecialidad" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                        <!-- </form> -->
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="box box-primary">
                    <div class="box-body">
                        <!-- <form role="form"> -->
                        <div class="input-group-">
                            <asp:Button ID="btnBuscarHorario" runat="server" CssClass="btn btn-danger" Text="Buscar" OnClick="btnBuscarHorario_Click" />
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                    <!-- </form> -->
                </div>
            </div>

        </div>
    </section>
    <!--INSERCION DE TABLA DE DATOS -->
    <section class="content invoice">
        <div class="row" align="center">
            <asp:DataList ID="dlsHorarioReserva" runat="server" OnItemCommand="dlsHorarioReserva_ItemCommand">
                <ItemTemplate>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>HORA</th>
                                <th>MEDICO</th>
                                <th>SELECCIONAR</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="lblHora" runat="server" Text='<%# Eval("Hora.hora") %>' Width="60px"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblMedico" runat="server" Text='<%# Eval("Medico.Empleado.nombres") + " " + Eval("Medico.Empleado.apPaterno") + " " + Eval("Medico.Empleado.apMaterno") %>' Width="450px"></asp:Label></td>
                                <td>
                                    <asp:CheckBox ID="chkSeleccion" runat="server" Width="60px"/></td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div>
            <table align="center">
                <tr>
                    <td>
                        <asp:Button ID="btnRegistrar" CssClass="btn btn-primary" runat="server" Text="Registrar" CommandName="Registrar" Width="200px" OnClick="btnRegistrar_Click" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" CommandName="Salir" Width="200px" OnClick="btnCancelar_Click" />

                    </td>
                </tr>
            </table>
        </div>
    </section>
    <!-- </aside> -->
    <!--</form>-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- InputMask -->
    <script src="../../js/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="../../js/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="../../js/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="../../js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- ****<script src="../../js/plugins/daterangepicker/calendario.js" type="text/javascript"></script>
    <!-- bootstrap color picker 
    <script src="../../js/plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
    <!-- bootstrap time picker -->
    <script src="../../js/plugins/timepicker/bootstrap-timepicker.min.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="../../js/AdminLTE/app.js" type="text/javascript"></script>
    <!-- Page script -->
    <script type="text/javascript">
        $(function () {
            //Datemask dd/mm/yyyy
            $("#datemask").inputmask("dd/mm/yyyy", { "placeholder": "dd/mm/yyyy" });
            //Datemask2 mm/dd/yyyy
            $("#datemask2").inputmask("mm/dd/yyyy", { "placeholder": "mm/dd/yyyy" });
            //Money Euro
            $("[data-mask]").inputmask();

            //Date range picker
            $('#reservation').daterangepicker();
            //Date range picker with time picker
            $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' });
            //Date range as a button
            $('#daterange-btn').daterangepicker(
                    {
                        ranges: {
                            'Today': [moment(), moment()],
                            'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                            'Last 7 Days': [moment().subtract('days', 6), moment()],
                            'Last 30 Days': [moment().subtract('days', 29), moment()],
                            'This Month': [moment().startOf('month'), moment().endOf('month')],
                            'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                        },
                        startDate: moment().subtract('days', 29),
                        endDate: moment()
                    },
            function (start, end) {
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
            );
            //iCheck for checkbox and radio inputs
            $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                checkboxClass: 'icheckbox_minimal',
                radioClass: 'iradio_minimal'
            });
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                checkboxClass: 'icheckbox_minimal-red',
                radioClass: 'iradio_minimal-red'
            });
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-red',
                radioClass: 'iradio_flat-red'
            });

            //Colorpicker
            // $(".my-colorpicker1").colorpicker();
            //color picker with addon
            //  $(".my-colorpicker2").colorpicker();

            //Timepicker
            $(".timepicker").timepicker({
                showInputs: false
            });
        });


    </script>
    <script type="text/javascript">
        $(function () {
            //Date range picker
            $('#reservation').daterangepicker();
        });
    </script>
</asp:Content>
