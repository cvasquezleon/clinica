﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmAtencionPaciente.aspx.cs" Inherits="CapaPresentacion.frmAtencionPaciente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content">
        <div class="text-center">
            <h3>Datos del Paciente</h3>
        </div>
    </section>
    <section class="content invoice">
        <div class="row invoice-info">
            <div class="col-sm-3 invoice-col">
                <asp:Image ID="imgDatPaciente" runat="server" Height="200px" Width="200px" ImageUrl="~/img/avatar5.png" />
            </div>
            <div class="col-sm-5 invoice-col">
                <br />
                <strong>Nombres:</strong>
                <asp:Label ID="lblNombres" runat="server" Text=""></asp:Label><br />
                <br />
                <strong>Apellidos:</strong>
                <asp:Label ID="lblApellidos" runat="server" Text=""></asp:Label><br />
                <br />
                <strong>Edad:</strong>
                <asp:Label ID="lblEdad" runat="server" Text=""></asp:Label><br />
                <br />
                <strong>Sexo:</strong>
                <asp:Label ID="lblSexo" runat="server" Text=""></asp:Label><br />
                <br />
            </div>
            <div class="col-sm-4 invoice-col">
                <br />
                <strong>Observaciones</strong>
                <br />
                <asp:TextBox ID="txtObservaciones" runat="server" Width="100%" Height="150px" TextMode="MultiLine" Text="" Enabled="false"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <br />
            <%--            <div class="col-sm-8 invoice-col">
                <br />
                <strong>Prescipción Médica</strong>
                <br />
                <asp:TextBox ID="txtPrescipcion" runat="server" Width="300px" Height="90px" TextMode="MultiLine" Text=""></asp:TextBox>
            </div>--%>
            <div class="col-sm-12 invoice-col">
                <br />
                <strong>Diagnóstico</strong>
                <br />
                <asp:TextBox ID="txtDiagnostico" runat="server" Width="100%" Height="90px" TextMode="MultiLine" Text=""></asp:TextBox>
            </div>
            <div class="invoice-info">
                <div class="center-block">
                    <div class="col-sm-12 invoice-col">
                        <br />
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn-block btn btn-primary" Text="Registrar" OnClick="btnRegistrar_Click" />
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
