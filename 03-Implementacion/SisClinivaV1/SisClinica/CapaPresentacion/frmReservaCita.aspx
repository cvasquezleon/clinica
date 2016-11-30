<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmReservaCita.aspx.cs" Inherits="CapaPresentacion.frmReservaCita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="//code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- daterange picker -->
    <link href="../../css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- iCheck for checkboxes and radio inputs -->
        <link href="../../css/iCheck/all.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap Color Picker -->
    <link href="../../css/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet"/>
    <!-- Bootstrap time Picker -->
    <link href="../../css/timepicker/bootstrap-timepicker.min.css" rel="stylesheet"/>
    <!-- Theme style -->
    <link href="../../css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
   <!-- <form id="form1" runat="server">-->
    <div class="right-side"> <!--reservado para right aside -->
        <section class="content-header">
            <h1 align="center">RESERVA DE CITAS</h1>
        </section>
        <section class="content">
            <div class ="row">
                <!--left column -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">DATOS DEL PACIENTE</h3>
                        </div>
                        <form role="form">
                            <div class="box-body">
                                <div class="form-group">
                                    <label>DOCUMENTO DE IDENTIDAD</label>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-danger">BUSCAR</button>
                                    </div>
                                    <input type="text" class="form-control" />
                                </div>
                                <br />
                                <div class="form-group">
                                    <label>NOMBRES</label>
                                    <input type ="text" class="form-control" disabled />
                                </div>
                                <div class="form-group">
                                    <label>APELLIDOS</label>
                                    <input type ="text" class="form-control" disabled/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!--rigth column -->
                <div class="col-md-6" >
                    <div class="box box-warning">
                        <div class="box-header">
                            <h3 class="box-title">DATOS DEL PACIENTE</h3>
                        </div>
                        <br />
                        <div class="box-body">
                            <form role="form">
                                <div class="form-group">
                                    <label>FECHA DE NACIMIENTO</label>
                                    <input type="text" class="form-control" disabled/>
                                </div>
                                <div class="form-group">
                                    <label>EDAD</label>
                                    <input type="text" class="form-control" disabled/>
                                </div>
                                <div class="form-group">
                                    <label>SEXO</label>
                                    <input type="text" class ="form-control" disabled />
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
            <section class="content-header">
                <h3 align="center">HORARIOS DE ATENCION</h3>
            </section>
            <!--SELECCIONAR HORARIO DE ATENCION -->
            <div class ="row">
                <!--left column -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <form role="form">
                            <div class="box-body">
                                <!-- INICIO CALENDARIO -->
                                <div class="form-group">
                                    <label>FECHA</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        <input type="text" class="form-control pull-right" id="reservation"/>
                                    </div><!-- /.input group -->
                                </div><!-- /.form group -->
                                <!-- FIN CALENDARIO-->
                            </div>
                        </form>
                    </div>
                </div>
                 <!--rigth column -->
                <div class="col-md-6" >
                    <div class="box box-warning">
                        <div class="box-body">
                            <form role="form">
                                <div class="form-group">
                                    <label>ESPECIALIDAD</label>
                                    <select class="form-control">
                                        <option>MEDICINA GENERAL</option>
                                        <option>MEDICINA INTERNA</option>
                                        <option>PEDIATRIA</option>
                                    </select>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
        </section>
    </div>
    <!--</form>-->
</body>
</html>
