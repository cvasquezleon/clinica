<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmGestionarHorario.aspx.cs" Inherits="CapaPresentacion.frmGestionarHorario" %>
<%@ Import Namespace="CapaDominio.Entidades" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../css/timepicker/bootstrap-timepicker.min.css" rel="stylesheet"/>
    <link href="../../css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>
            Gestion de Horarios de Atencion
        </h1>
        <ol class="breadcrumb">
            <li><a href="ControlPanel.aspx"><i class="fa fa-dashboard"></i> Panel de Control</a></li>
            <li class="active">Gestion de Horarios de Atencion</li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-md-2">
                <div class="box box-danger">
                    <div class="box-header">
                        <h3 class="box-title">Datos del Medico</h3>
                    </div>
                    <div class="box-body">
                        <%--<p class="margin">id del Medico</p>--%>
                        <label>NRO DOCUMENTO DE IDENTIDAD</label>
                        <div class="input-group input-group-sm">                   
                            <asp:TextBox ID="txtDNI" CssClass="form-control" runat="server"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button ID="btnBuscar" CssClass="btn btn-info btn-flat" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                            </span>  
                        </div>
                    </div>
                    <div class="box-footer">
                        <%
                            if ((entMedico)Session["medico"] != null)
                            {
                        %>
                        <strong>Nombre:</strong>
                        <asp:Label ID="lblNombre" runat="server" Text="" Font-Size="Medium"></asp:Label>
                        <br />
                        <br />
                        <strong>Apellidos:</strong>
                        <asp:Label ID="lblApellidos" runat="server" Text="" Font-Size="Medium"></asp:Label>
                        <br />
                        <br />
                        <strong>Nro Documento:</strong>
                        <asp:Label ID="lblNroDocumento" runat="server" Text="" Font-Size="Medium"></asp:Label>
                        <br />
                        <br />
                        <strong>Especialidad:</strong>
                        <asp:Label ID="lblEspecialidad" runat="server" Text="" Font-Size="Medium"></asp:Label>
                        <%
                            } 
                        %>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Horario de Atencion</h3>
                    </div>
                    <%
                            if((entMedico)Session["medico"] != null)
                            {
                    %>
                    <div class="box-body table-responsive ">
                        <asp:GridView ID="grvHorarioAtencion" CssClass="table table-condensed"  runat="server" OnSelectedIndexChanged="grvHorarioAtencion_Editar">
                            <Columns>
                                <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="70px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkbtnEditar" runat="server" CssClass="btn btn-sm btn-warning" href="#ModificarHorario" Text="Editar" OnClick="grvHorarioAtencion_Editar" CommandName="Select" data-toggle="modal"  />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="55px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkbtnEliminar" runat="server" CssClass="btn btn-sm btn-danger" Text="Eliminar" CommandName="Select" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>                        
                    </div>
                    <div class="box-footer">
                        <table align="center">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lnkbtnAgregar" CssClass="btn btn-primary" runat="server" href="#AgregarHorario" data-toggle="modal" >Agregar Horario</asp:LinkButton>
                                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-success" Text="Guardar Horario" OnClick="btnGuardar_Click" />
                                </td>
                            </tr>
                        </table>   
                    </div>
                    <%
                            }
                            else
                            {
                    %>
                    <div class="box-body">
                        <h3>No se ha seleccionado algun medico</h3>                                               
                    </div>
                    <div class="box-footer">
                           
                    </div>     
                    <%      
                        }
                    %>                            
                </div>
            </div>
        </div>

        <div class="modal fade" id="AgregarHorario"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                        <h3 class="modal-title"><i class="fa fa-clock-o"></i> Agregar Horario Atencion</h3>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Fecha:</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <asp:TextBox ID="txtFecha" CssClass="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="bootstrap-timepicker">
                            <div class="form-group">
                                <label>Hora Inicio:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtHoraInicio" CssClass="form-control timepicker" runat="server"></asp:TextBox>
                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer clearfix">
                        <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" CssClass="btn btn-primary" Text="Agregar"  />
                    </div>                            
                </div>
            </div>  
        </div>

        <div class="modal fade" id="ModificarHorario"  tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                        <h3 class="modal-title"><i class="fa fa-clock-o"></i> Modificar Horario de Atencion</h3>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Fecha:</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <asp:TextBox ID="txtFechaM" CssClass="form-control" disabled runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="bootstrap-timepicker">
                            <div class="form-group">
                                <label>Hora Inicio:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control timepicker" runat="server"></asp:TextBox>
                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer clearfix">
                        <asp:Button ID="btnModificar" runat="server" CssClass="btn btn-warning" data-dismiss="modal" Text="Modificar" />
                    </div>                            
                </div>
            </div>  
        </div>
    </section>
</asp:Content>
