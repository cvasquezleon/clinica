<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmReporteEspecialidadesAtendidas.aspx.cs" Inherits="CapaPresentacion.frmReporteEspecialidadesAtendidas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>
            Reportes de Atenciones
        </h1>
        <small>Por Especialidad</small>
        <ol class="breadcrumb">
            <li><a href="ControlPanel.aspx"><i class="fa fa-dashboard"></i> Panel de Control</a></li>
            <li><a href="#"><i class="fa fa-clipboard"></i> Reporte de Atenciones Medicas</a></li>
            <li class="active">Por Especialidad</li>
        </ol>
    </section>
    <section class="content">
        <div class="box-header">
            <h3 align="center" class="box-title">ESPECIALIDADES MÁS ATENDIDAS</h3>
        </div>
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
    </section>
    <section class="content invoice">
        <div class="row" align="center">
            <asp:DataList ID="dlsEspecialidades" runat="server" Width="90%">
                <ItemTemplate>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td><strong>ESPECIALIDAD</strong></td>
                                <td><strong>CANTIDAD</strong></td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("descripcion")%>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("_atenciones")%>'></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </section>
</asp:Content>


