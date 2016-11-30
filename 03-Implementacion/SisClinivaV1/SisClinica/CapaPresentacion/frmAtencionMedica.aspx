<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmAtencionMedica.aspx.cs" Inherits="CapaPresentacion.frmAtencionMedica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1>
            Gestion de Atenciones Medicas
        </h1>
        <asp:Label ID="lblFechaActual" runat="server" Text="" Font-Bold="true"></asp:Label>
        <ol class="breadcrumb">
            <li><a href="ControlPanel.aspx"><i class="fa fa-dashboard"></i> Panel de Control</a></li>
            <li class="active">Gestion de Atenciones Medicas</li>
        </ol>
    </section>
    <section class="content invoice">
        <asp:DataList ID="dlAtencionMedica" runat="server" CssClass="table table-striped" RepeatColumns="1" OnItemCommand="dlAtencionMedica_ItemCommand" OnSelectedIndexChanged="dlAtencionMedica_SelectedIndexChanged">
            <ItemTemplate>
                <table>
                    <tr>
                        <td rowspan="2">
                            <asp:Image ID="imgPaciente" runat="server" Height="200px" Width="200px" ImageUrl="~/img/avatar5.png" />
                        </td>
                        <td>
                            <strong>&nbsp;&nbsp;ID Cita:</strong>
                            <asp:Label ID="lblIdCita" runat="server" Text='<%# Eval("idCita") %>' Font-Size="Medium"></asp:Label><br />
                            <strong>&nbsp;&nbsp;Nombres:</strong>
                            <asp:Label ID="lblNombres" runat="server" Text='<%# Eval("Paciente.nombres")%>' Font-Size="Medium"></asp:Label><br />
                            <strong>&nbsp;&nbsp;Apellido Paterno:</strong>
                            <asp:Label ID="lblApellidoPaterno" runat="server" Text='<%# Eval("Paciente.apPaterno") %>' Font-Size="Medium"></asp:Label><br />
                            <strong>&nbsp;&nbsp;Apellido Materno:</strong>
                            <asp:Label ID="lblApellidoMaterno" runat="server" Text='<%# Eval("Paciente.apMaterno") %>' Font-Size="Medium"></asp:Label><br />
                            <strong>&nbsp;&nbsp;Edad:</strong>
                            <asp:Label ID="lblEdad" runat="server" Text='<%# Eval("Paciente.edad") %>' Font-Size="Medium"></asp:Label><br />
                            <strong>&nbsp;&nbsp;Sexo:</strong>
                            <asp:Label ID="lblSexo" runat="server" Text='<%# Eval("Paciente.sexo") %>'></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;<asp:Button ID="btnAtencion" runat="server" class="btn btn-primary" Text="Realizar Atención" CommandName="Atencion" />
                        </td>
                        <td>&nbsp;&nbsp;<asp:Button ID="btnCancelar" runat="server" class="btn btn-danger" Text="Cancelar" CommandName="Cancelar" OnClientClick="return confirm('¿Esta seguro que desea cancelar la Cita?');" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>&nbsp;&nbsp;&nbsp;Hora de Atención: </label>
                            <asp:Label ID="lblHora" runat="server" Text='<%# Eval("hora") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </section>
</asp:Content>
