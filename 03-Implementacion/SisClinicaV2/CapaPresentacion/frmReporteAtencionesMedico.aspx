<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmReporteAtencionesMedico.aspx.cs" Inherits="CapaPresentacion.frmReporteAtencionesMedico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1 align="center">REPORTES</h1>
    </section>
    <section class="content">
        <div class="box-header">
            <h3 align="center" class="box-title">ATENCIONES REALIZADAS POR MÉDICO</h3>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <label>CÓDIGO DEL MÉDICO</label>
                        </div>
                        <div class="input-group">
                            <asp:TextBox ID="txtCodigoMedico" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4">
                            <div class="box box-primary">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label>FECHA INICIO:</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <asp:TextBox ID="txtFechaInicio" runat="server" CssClass="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask=""></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="box box-primary">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label>FECHA FIN:</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <asp:TextBox ID="txtFechaFin" runat="server" CssClass="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask=""></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="box box-primary">
                                <div class="box-body">
                                    <div class="input-group">
                                        <br />
                                        <asp:Button ID="btnVerReporte" runat="server" CssClass="btn btn-danger" Text="Ver Reporte" OnClick="btnVerReporte_Click" />
                                        <br />
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="content invoice">
        <div class="row" align="center">
            <asp:DataList ID="dlsCitasAtendidas" runat="server" Width="95%">
                <ItemTemplate>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td><strong>FECHA DE ATENCIÓN</strong></td>
                                <td><strong>APELLIDO PATERNO</strong></td>
                                <td><strong>APELLIDO MATERNO</strong></td>
                                <td><strong>NOMBRES</strong></td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="lblFecha" runat="server" Text='<%# Eval("fechaReserva","{0:d}") %>' Width="25%"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblApPaterno" runat="server" Text='<%# Eval("Paciente.apPaterno")%>' Width="25%"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblApMaterno" runat="server" Text='<%# Eval("Paciente.apMaterno")%>' Width="25%"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblNombres" runat="server" Text='<%# Eval("Paciente.nombres")%>' Width="25%"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                </ItemTemplate>
            </asp:DataList>
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
