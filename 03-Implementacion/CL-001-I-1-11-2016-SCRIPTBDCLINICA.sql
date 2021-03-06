USE [BDClinica]
GO
/****** Object:  Table [dbo].[TipoEmpleado]    Script Date: 12/08/2014 18:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoEmpleado](
	[idTipoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](25) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoEmpleado] PRIMARY KEY CLUSTERED 
(
	[idTipoEmpleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoEmpleado] ON
INSERT [dbo].[TipoEmpleado] ([idTipoEmpleado], [descripcion], [estado]) VALUES (1, N'Medico', 1)
INSERT [dbo].[TipoEmpleado] ([idTipoEmpleado], [descripcion], [estado]) VALUES (2, N'Secretaria', 1)
INSERT [dbo].[TipoEmpleado] ([idTipoEmpleado], [descripcion], [estado]) VALUES (3, N'Administrador', 1)
SET IDENTITY_INSERT [dbo].[TipoEmpleado] OFF
/****** Object:  Table [dbo].[Hora]    Script Date: 12/08/2014 18:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hora](
	[idHora] [int] IDENTITY(1,1) NOT NULL,
	[hora] [varchar](6) NOT NULL,
 CONSTRAINT [PK_Hora] PRIMARY KEY CLUSTERED 
(
	[idHora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Hora] ON
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (1, N'09:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (2, N'09:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (3, N'10:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (4, N'10:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (5, N'11:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (6, N'11:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (7, N'12:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (8, N'15:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (9, N'15:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (10, N'16:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (11, N'16:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (12, N'17:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (13, N'17:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (14, N'18:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (15, N'18:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (16, N'19:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (17, N'19:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (18, N'20:00')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (19, N'20:30')
INSERT [dbo].[Hora] ([idHora], [hora]) VALUES (20, N'21:00')
SET IDENTITY_INSERT [dbo].[Hora] OFF
/****** Object:  Table [dbo].[Paciente]    Script Date: 12/08/2014 18:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente](
	[idPaciente] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apPaterno] [varchar](20) NOT NULL,
	[apMaterno] [varchar](20) NOT NULL,
	[edad] [int] NOT NULL,
	[sexo] [char](1) NOT NULL,
	[nroDocumento] [varchar](8) NOT NULL,
	[direccion] [varchar](150) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[estado] [bit] NOT NULL,
	[imagen] [varchar](500) NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Paciente] ON
INSERT [dbo].[Paciente] ([idPaciente], [nombres], [apPaterno], [apMaterno], [edad], [sexo], [nroDocumento], [direccion], [telefono], [estado], [imagen]) VALUES (1, N'Jorge Junior', N'Rodriguez', N'Castillo', 21, N'M', N'17887490', N'David Lozano #854 Urb. El Bosque', N'953696711', 1, NULL)
INSERT [dbo].[Paciente] ([idPaciente], [nombres], [apPaterno], [apMaterno], [edad], [sexo], [nroDocumento], [direccion], [telefono], [estado], [imagen]) VALUES (2, N'Sandra', N'Sanchez', N'Moreno', 20, N'F', N'87690987', N'La Esperanza', N'953489021', 1, NULL)
INSERT [dbo].[Paciente] ([idPaciente], [nombres], [apPaterno], [apMaterno], [edad], [sexo], [nroDocumento], [direccion], [telefono], [estado], [imagen]) VALUES (3, N'Francisco', N'Pereda', N'Sandoval', 32, N'M', N'70981274', N'El Porvenir', N'976534091', 1, NULL)
INSERT [dbo].[Paciente] ([idPaciente], [nombres], [apPaterno], [apMaterno], [edad], [sexo], [nroDocumento], [direccion], [telefono], [estado], [imagen]) VALUES (4, N'Javier Estefano', N'Sanchez', N'Martinez', 28, N'M', N'56743409', N'Urb. El Recreo #535', N'285746', 1, NULL)
INSERT [dbo].[Paciente] ([idPaciente], [nombres], [apPaterno], [apMaterno], [edad], [sexo], [nroDocumento], [direccion], [telefono], [estado], [imagen]) VALUES (5, N'Cesar Javier', N'Vasquez', N'Leon', 30, N'M', N'46783254', N'Centro Historico', N'245684', 1, NULL)
INSERT [dbo].[Paciente] ([idPaciente], [nombres], [apPaterno], [apMaterno], [edad], [sexo], [nroDocumento], [direccion], [telefono], [estado], [imagen]) VALUES (6, N'Maria Isabel', N'Farias', N'Tirado', 25, N'F', N'24236789', N'Urb .El Recreo #765', N'346778', 1, NULL)
INSERT [dbo].[Paciente] ([idPaciente], [nombres], [apPaterno], [apMaterno], [edad], [sexo], [nroDocumento], [direccion], [telefono], [estado], [imagen]) VALUES (7, N'Carlos Andres', N'Paredes', N'Sisniegas', 32, N'M', N'76564909', N'Av. America #842', N'95786198', 1, NULL)
SET IDENTITY_INSERT [dbo].[Paciente] OFF
/****** Object:  Table [dbo].[Especialidad]    Script Date: 12/08/2014 18:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidad](
	[idEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](25) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Especialidad] ON
INSERT [dbo].[Especialidad] ([idEspecialidad], [descripcion], [estado]) VALUES (1, N'Medico General', 1)
INSERT [dbo].[Especialidad] ([idEspecialidad], [descripcion], [estado]) VALUES (2, N'Pediatra', 1)
INSERT [dbo].[Especialidad] ([idEspecialidad], [descripcion], [estado]) VALUES (3, N'Traumatologo', 1)
INSERT [dbo].[Especialidad] ([idEspecialidad], [descripcion], [estado]) VALUES (4, N'Oftalmologo', 1)
SET IDENTITY_INSERT [dbo].[Especialidad] OFF
/****** Object:  Table [dbo].[Empleado]    Script Date: 12/08/2014 18:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[idTipoEmpleado] [int] NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apPaterno] [varchar](20) NOT NULL,
	[apMaterno] [varchar](20) NOT NULL,
	[nroDocumento] [varchar](8) NOT NULL,
	[estado] [bit] NOT NULL,
	[imagen] [varchar](500) NULL,
	[usuario] [varchar](50) NULL,
	[clave] [varchar](50) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (1, 1, N'Juan Carlos', N'Farias', N'Villegas', N'87653021', 1, NULL, N'jcfv', N'123')
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (2, 1, N'Rosa Maria', N'Flores', N'Linares', N'78650932', 1, NULL, N'rmfl', N'123')
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (3, 1, N'Carlos Jose', N'Romero', N'Alfaro', N'70983262', 1, NULL, N'cjra', N'123')
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (4, 3, N'Jorge Junior', N'Rodriguez', N'Castillo', N'70874378', 1, NULL, N'jjrc', N'admin')
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (5, 1, N'Felicita Sara', N'Abarca', N'Heredia', N'17070167', 1, NULL, N'fsah', N'123')
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (6, 1, N'Maria Isabel', N'Acuña', N'Chumpitaz', N'16060198', 1, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (7, 1, N'Flor Beatriz', N'Alarcon', N'Samame', N'86572102', 1, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (8, 1, N'Diego Carlos', N'Aquino', N'Mendez', N'14040149', 1, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (9, 1, N'Ronald Josue', N'Pareja', N'Alvarez', N'73030139', 1, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (10, 1, N'Jaime Raul', N'Arca', N'Rodriguez', N'66020229', 1, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (11, 1, N'Jose Victor', N'Arias', N'Figueroa', N'58780564', 1, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoEmpleado], [nombres], [apPaterno], [apMaterno], [nroDocumento], [estado], [imagen], [usuario], [clave]) VALUES (12, 1, N'Jhon Luis', N'Alfaro', N'Ganoza', N'87690432', 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
/****** Object:  Table [dbo].[HistoriaClinica]    Script Date: 12/08/2014 18:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoriaClinica](
	[idHistoriaClinica] [int] IDENTITY(1,1) NOT NULL,
	[idPaciente] [int] NULL,
	[fechaApertura] [datetime] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_HistoriaClinica] PRIMARY KEY CLUSTERED 
(
	[idHistoriaClinica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HistoriaClinica] ON
INSERT [dbo].[HistoriaClinica] ([idHistoriaClinica], [idPaciente], [fechaApertura], [estado]) VALUES (1, 3, CAST(0x0000A3E0016EE460 AS DateTime), 1)
INSERT [dbo].[HistoriaClinica] ([idHistoriaClinica], [idPaciente], [fechaApertura], [estado]) VALUES (2, 2, CAST(0x0000A3E0017617A6 AS DateTime), 1)
INSERT [dbo].[HistoriaClinica] ([idHistoriaClinica], [idPaciente], [fechaApertura], [estado]) VALUES (3, 1, CAST(0x0000A3E40133643D AS DateTime), 1)
INSERT [dbo].[HistoriaClinica] ([idHistoriaClinica], [idPaciente], [fechaApertura], [estado]) VALUES (4, 7, CAST(0x0000A3F000A64E1B AS DateTime), 1)
INSERT [dbo].[HistoriaClinica] ([idHistoriaClinica], [idPaciente], [fechaApertura], [estado]) VALUES (5, 4, CAST(0x0000A3F000BFE10F AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[HistoriaClinica] OFF
/****** Object:  StoredProcedure [dbo].[spBuscarPacientePorApellidos]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarPacientePorApellidos]
(  @prmApPaterno varchar(50),
   @prmApMaterno varchar(50)
)
AS
	BEGIN
		SELECT P.idPaciente, P.nombres, P.apPaterno, P.apMaterno, P.edad, P.sexo, P.direccion, P.nroDocumento, 
			   P.telefono, P.estado
		FROM Paciente P
		WHERE  P.apPaterno = @prmApPaterno AND P.apMaterno = @prmApMaterno
	END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarPacienteDNI]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarPacienteDNI]
(  @prmDniPaciente varchar(8)
)
AS
	BEGIN
		SELECT P.idPaciente, P.nombres, P.apPaterno, P.apMaterno, P.edad, P.direccion, P.sexo,
			   P.estado, P.nroDocumento, P.telefono
		FROM Paciente P
		WHERE P.nroDocumento = @prmDniPaciente
	END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarHora]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarHora] 
(@prmHora varchar(6))
AS
	BEGIN
		Select *
		from Hora
		Where hora = @prmHora
	END
GO
/****** Object:  StoredProcedure [dbo].[spRegistrarPaciente]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spRegistrarPaciente]
( @prmNombres varchar(50),
  @prmApPaterno varchar(50),
  @prmApMaterno varchar(50),
  @prmEdad int,
  @prmSexo char(1),
  @prmNroDocumento varchar(8),
  @prmDireccion varchar(250),
  @prmTelefono varchar(20)
)
AS
	BEGIN
		INSERT INTO Paciente(nombres, apPaterno, apMaterno, edad, sexo, nroDocumento, direccion, telefono, estado, imagen)
		VALUES(@prmNombres, @prmApPaterno, @prmApMaterno, @prmEdad, @prmSexo, @prmNroDocumento, @prmDireccion, @prmTelefono, 1, NULL)
	END
GO
/****** Object:  StoredProcedure [dbo].[spListarEspecialidad]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarEspecialidad]
AS
	BEGIN
		SELECT E.idEspecialidad, E.descripcion
		FROM Especialidad E
	END
GO
/****** Object:  StoredProcedure [dbo].[spListarHistoriaClinica]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarHistoriaClinica]
AS
	BEGIN
		SELECT H.idHistoriaClinica, H.idPaciente, H.fechaApertura, H.estado
		FROM HistoriaClinica H
	END
GO
/****** Object:  StoredProcedure [dbo].[spLogin]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLogin]
(  @prmUsuario varchar(50),
  @prmClave varchar(50)
)
AS
	BEGIN
		Select *
		From Empleado
		Where usuario = @prmUsuario AND
			  clave = @prmClave
	END
GO
/****** Object:  StoredProcedure [dbo].[spRegistrarHistoriaClinica]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spRegistrarHistoriaClinica]
(  @prmIdPaciente int		
)
AS
	BEGIN
		INSERT INTO HistoriaClinica(idPaciente, fechaApertura, estado)
		VALUES(@prmIdPaciente, GETDATE(), 1)
	END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarHistoriaClinica]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarHistoriaClinica]
(	@prmIdPaciente int
)
AS
	BEGIN 
		SELECT H.idHistoriaClinica, H.idPaciente, H.fechaApertura, H.estado
		FROM HistoriaClinica H
		WHERE H.idPaciente = @prmIdPaciente
	END
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[idDiagnostico] [int] IDENTITY(1,1) NOT NULL,
	[idHistoriaClinica] [int] NOT NULL,
	[fechaEmision] [datetime] NOT NULL,
	[observacion] [varchar](500) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Diagnostico] PRIMARY KEY CLUSTERED 
(
	[idDiagnostico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Diagnostico] ON
INSERT [dbo].[Diagnostico] ([idDiagnostico], [idHistoriaClinica], [fechaEmision], [observacion], [estado]) VALUES (3, 1, CAST(0x0000A3E0016FE14D AS DateTime), N'Dolores Lumbares, etc.', 1)
INSERT [dbo].[Diagnostico] ([idDiagnostico], [idHistoriaClinica], [fechaEmision], [observacion], [estado]) VALUES (6, 2, CAST(0x0000A3E001789CA1 AS DateTime), N'Infección en la pierna por un corte con vidrio.', 1)
INSERT [dbo].[Diagnostico] ([idDiagnostico], [idHistoriaClinica], [fechaEmision], [observacion], [estado]) VALUES (7, 3, CAST(0x0000A3E401336447 AS DateTime), N'Hola mundo', 1)
INSERT [dbo].[Diagnostico] ([idDiagnostico], [idHistoriaClinica], [fechaEmision], [observacion], [estado]) VALUES (8, 4, CAST(0x0000A3F000A64E2A AS DateTime), N'Tratamiento cada 2 dias', 1)
INSERT [dbo].[Diagnostico] ([idDiagnostico], [idHistoriaClinica], [fechaEmision], [observacion], [estado]) VALUES (9, 5, CAST(0x0000A3F000BFE113 AS DateTime), N'Ninguno ', 1)
INSERT [dbo].[Diagnostico] ([idDiagnostico], [idHistoriaClinica], [fechaEmision], [observacion], [estado]) VALUES (10, 3, CAST(0x0000A3F5017C3943 AS DateTime), N'Infección', 1)
INSERT [dbo].[Diagnostico] ([idDiagnostico], [idHistoriaClinica], [fechaEmision], [observacion], [estado]) VALUES (11, 3, CAST(0x0000A3F901286728 AS DateTime), N'sdfsdfsfsfsfsfsfd', 1)
SET IDENTITY_INSERT [dbo].[Diagnostico] OFF
/****** Object:  Table [dbo].[Medico]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[idMedico] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idEspecialidad] [int] NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Medico] ON
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (2, 3, 1, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (3, 2, 1, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (4, 5, 3, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (5, 6, 1, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (6, 7, 3, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (7, 8, 1, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (8, 9, 1, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (9, 10, 1, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (10, 11, 4, 1)
INSERT [dbo].[Medico] ([idMedico], [idEmpleado], [idEspecialidad], [estado]) VALUES (21, 12, 4, 1)
SET IDENTITY_INSERT [dbo].[Medico] OFF
/****** Object:  Table [dbo].[HorarioAtencion]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioAtencion](
	[idHorarioAtencion] [int] IDENTITY(1,1) NOT NULL,
	[idMedico] [int] NOT NULL,
	[idHoraInicio] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_HorarioAtencion] PRIMARY KEY CLUSTERED 
(
	[idHorarioAtencion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HorarioAtencion] ON
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (1, 1, 3, CAST(0x0000A3E200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (2, 1, 4, CAST(0x0000A3E200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (3, 1, 5, CAST(0x0000A3E200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (4, 1, 6, CAST(0x0000A3E200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (5, 1, 7, CAST(0x0000A3E200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (6, 3, 3, CAST(0x0000A3E200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (7, 3, 4, CAST(0x0000A3E200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (8, 3, 5, CAST(0x0000A3E200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (9, 1, 3, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (10, 1, 4, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (12, 1, 5, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (13, 1, 6, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (14, 1, 7, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (15, 5, 1, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (16, 5, 2, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (17, 5, 3, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (18, 5, 4, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (19, 5, 5, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (20, 5, 12, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (21, 5, 13, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (22, 5, 14, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (23, 5, 15, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (24, 5, 16, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (25, 5, 17, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (26, 5, 18, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (27, 5, 12, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (28, 5, 13, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (29, 5, 14, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (30, 5, 15, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (31, 5, 16, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (32, 5, 17, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (33, 5, 18, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (34, 5, 12, CAST(0x0000A3E500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (35, 5, 13, CAST(0x0000A3E500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (36, 5, 14, CAST(0x0000A3E500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (37, 5, 15, CAST(0x0000A3E500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (38, 5, 16, CAST(0x0000A3E500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (39, 5, 17, CAST(0x0000A3E500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (40, 5, 18, CAST(0x0000A3E500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (41, 5, 12, CAST(0x0000A3E600000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (42, 5, 13, CAST(0x0000A3E600000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (43, 5, 14, CAST(0x0000A3E600000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (44, 5, 15, CAST(0x0000A3E600000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (45, 5, 16, CAST(0x0000A3E600000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (46, 5, 17, CAST(0x0000A3E600000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (47, 5, 18, CAST(0x0000A3E600000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (48, 6, 1, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (49, 6, 2, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (50, 6, 3, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (51, 6, 4, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (52, 6, 5, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (53, 6, 6, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (54, 6, 7, CAST(0x0000A3E300000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (55, 6, 1, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (56, 6, 2, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (57, 6, 3, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (58, 6, 4, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (59, 6, 5, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (60, 6, 6, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (61, 6, 7, CAST(0x0000A3E400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (62, 6, 1, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (63, 6, 2, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (64, 6, 3, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (65, 6, 4, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (66, 6, 5, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (67, 6, 6, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (68, 6, 7, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (69, 10, 8, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (70, 10, 9, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (71, 10, 10, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (72, 10, 11, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (73, 10, 12, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (74, 10, 13, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (75, 10, 14, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (76, 10, 15, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (77, 10, 16, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (78, 10, 17, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (79, 10, 18, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (80, 10, 19, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (81, 10, 20, CAST(0x0000A3E700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (82, 10, 8, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (83, 10, 9, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (84, 10, 10, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (85, 10, 11, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (86, 10, 12, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (87, 10, 13, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (88, 10, 14, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (89, 10, 15, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (90, 10, 16, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (91, 10, 17, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (92, 10, 18, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (93, 10, 19, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (94, 10, 20, CAST(0x0000A3E800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (95, 7, 1, CAST(0x0000A3E900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (96, 7, 2, CAST(0x0000A3E900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (97, 7, 3, CAST(0x0000A3E900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (98, 7, 4, CAST(0x0000A3E900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (99, 7, 5, CAST(0x0000A3E900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (100, 7, 6, CAST(0x0000A3E900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (101, 7, 7, CAST(0x0000A3E900000000 AS DateTime), 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (102, 2, 3, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (103, 2, 4, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (104, 2, 5, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (105, 2, 6, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (106, 2, 7, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (107, 2, 9, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (108, 2, 10, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (109, 2, 11, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (110, 2, 12, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (111, 2, 13, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (112, 2, 14, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (113, 2, 15, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (114, 2, 16, CAST(0x0000A3F000000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (115, 2, 9, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (116, 2, 10, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (117, 2, 11, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (118, 2, 12, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (119, 2, 13, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (120, 2, 14, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (121, 2, 15, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (122, 2, 16, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (123, 4, 1, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (124, 4, 2, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (125, 4, 3, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (126, 4, 4, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (127, 4, 5, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (128, 4, 6, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (129, 4, 7, CAST(0x0000A3F100000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (130, 4, 1, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (131, 4, 2, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (132, 4, 3, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (133, 4, 4, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (134, 4, 5, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (135, 4, 6, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (136, 4, 7, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (137, 21, 1, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (138, 21, 2, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (139, 21, 3, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (140, 21, 4, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (141, 21, 5, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (142, 21, 6, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (143, 21, 7, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (144, 21, 8, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (145, 21, 9, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (146, 21, 10, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (147, 21, 11, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (148, 21, 12, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (149, 21, 13, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (150, 21, 14, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (151, 2, 8, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (152, 2, 9, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (153, 2, 10, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (154, 2, 11, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (155, 2, 12, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (156, 2, 13, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (157, 2, 14, CAST(0x0000A3F200000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (158, 5, 8, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (159, 5, 9, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (160, 5, 10, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (161, 5, 11, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (162, 5, 12, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (163, 5, 13, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (164, 5, 14, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (165, 5, 1, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (166, 5, 2, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (167, 5, 3, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (168, 5, 4, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (169, 5, 5, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (170, 5, 6, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (171, 6, 1, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (172, 6, 2, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (173, 6, 3, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (174, 6, 4, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (175, 6, 5, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (176, 6, 6, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (177, 6, 14, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (178, 6, 15, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (179, 6, 16, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (180, 6, 17, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (181, 6, 18, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (182, 6, 19, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (183, 6, 20, CAST(0x0000A3F400000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (184, 1, 10, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (185, 1, 11, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (186, 1, 12, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (187, 1, 13, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (188, 1, 14, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (189, 1, 15, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (190, 1, 16, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (191, 1, 17, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (192, 1, 18, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (193, 1, 19, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (194, 1, 20, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (195, 1, 3, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (196, 1, 4, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (197, 1, 5, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (198, 1, 6, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (199, 1, 7, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (200, 6, 3, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (201, 6, 4, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (202, 6, 5, CAST(0x0000A3F500000000 AS DateTime), 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (203, 6, 6, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (204, 6, 7, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (205, 6, 15, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (206, 6, 16, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (207, 6, 17, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (208, 6, 18, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (209, 6, 19, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (210, 6, 20, CAST(0x0000A3F500000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (211, 7, 1, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (212, 7, 2, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (213, 7, 3, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (214, 7, 4, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (215, 7, 5, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (216, 8, 1, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (217, 8, 2, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (218, 8, 3, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (219, 8, 4, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (220, 8, 5, CAST(0x0000A3F800000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (221, 8, 1, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (222, 8, 2, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (223, 8, 3, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (224, 8, 4, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (225, 8, 5, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (226, 7, 1, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (227, 7, 2, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (228, 7, 3, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (229, 7, 4, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (230, 7, 5, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (231, 1, 1, CAST(0x0000A3F700000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (232, 1, 3, CAST(0x0000A3DB00000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (233, 1, 10, CAST(0x0000A3F900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (234, 3, 8, CAST(0x0000A3DC00000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (235, 3, 1, CAST(0x0000A3FA00000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (236, 5, 1, CAST(0x0000A3F900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (237, 5, 2, CAST(0x0000A3F900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (238, 5, 3, CAST(0x0000A3F900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (239, 5, 4, CAST(0x0000A3F900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (240, 5, 5, CAST(0x0000A3F900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (241, 5, 6, CAST(0x0000A3F900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (242, 5, 7, CAST(0x0000A3F900000000 AS DateTime), 1)
INSERT [dbo].[HorarioAtencion] ([idHorarioAtencion], [idMedico], [idHoraInicio], [fecha], [estado]) VALUES (243, 1, 3, CAST(0x0000A3FA00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[HorarioAtencion] OFF
/****** Object:  Table [dbo].[Cita]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cita](
	[idCita] [int] IDENTITY(1,1) NOT NULL,
	[idMedico] [int] NOT NULL,
	[idPaciente] [int] NOT NULL,
	[fechaReserva] [datetime] NOT NULL,
	[observacion] [varchar](350) NULL,
	[estado] [char](1) NOT NULL,
	[hora] [varchar](6) NOT NULL,
 CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cita] ON
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (2, 5, 3, CAST(0x0000A3E400000000 AS DateTime), N'Revision general al paciente', N'P', N'18:30')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (3, 5, 1, CAST(0x0000A3E400000000 AS DateTime), N'Revision general', N'P', N'18:00')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (4, 5, 2, CAST(0x0000A3E400000000 AS DateTime), N'Revision general', N'P', N'19:00')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (5, 1, 1, CAST(0x0000A3E200000000 AS DateTime), N'Revision general', N'A', N'11:00')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (6, 1, 3, CAST(0x0000A3E200224503 AS DateTime), N'Revision general', N'A', N'11:30')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (7, 6, 1, CAST(0x0000A3E300D9483E AS DateTime), N'', N'P', N'09:30')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (8, 5, 1, CAST(0x0000A3E300DA8886 AS DateTime), N'', N'P', N'18:00')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (10, 7, 2, CAST(0x0000A3E3010203FF AS DateTime), N'', N'P', N'10:30')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (11, 6, 1, CAST(0x0000A3E40131F008 AS DateTime), N'', N'A', N'09:30')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (12, 4, 7, CAST(0x0000A3F000A1DCD2 AS DateTime), N'', N'A', N'11:00')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (13, 2, 4, CAST(0x0000A3F000BF8080 AS DateTime), N'', N'A', N'12:00')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (14, 1, 1, CAST(0x0000A3F500000000 AS DateTime), N'', N'A', N'20:00')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (15, 8, 1, CAST(0x0000A3F700000000 AS DateTime), N'', N'P', N'10:00')
INSERT [dbo].[Cita] ([idCita], [idMedico], [idPaciente], [fechaReserva], [observacion], [estado], [hora]) VALUES (16, 5, 1, CAST(0x0000A3F900000000 AS DateTime), N'', N'A', N'11:00')
SET IDENTITY_INSERT [dbo].[Cita] OFF
/****** Object:  StoredProcedure [dbo].[spBuscarMedicoPorApellidos]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarMedicoPorApellidos]
(  @prmApPaterno varchar(30),
   @prmApMaterno varchar(30)
)
AS
	BEGIN 
		SELECT M.idMedico, M.idEmpleado, M.idEspecialidad, M.estado
		FROM Medico M inner join Empleado E ON M.idEmpleado = E.idEmpleado
		WHERE E.apPaterno = @prmApPaterno AND E.apMaterno = @prmApMaterno
	END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarMedicoDNI]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spBuscarMedicoDNI]
(@prmDni varchar(8) )
AS
	BEGIN
		Select M.idMedico, M.idEmpleado, E.nombres, E.apPaterno, E.apMaterno, M.idEspecialidad, S.descripcion AS Especialidad, E.nroDocumento, E.imagen, M.estado
		From Medico M
		Inner Join Empleado E ON M.idEmpleado = E.idEmpleado
		Inner Join Especialidad S ON M.idEspecialidad = S.idEspecialidad
		Where E.nroDocumento = @prmDni
	END
GO
/****** Object:  StoredProcedure [dbo].[spRegistrarDiagnostico]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spRegistrarDiagnostico]
(
    @prmIdHistoriaClinica int,
    @prmObservacion varchar(MAX)
)
AS
	BEGIN
		INSERT INTO Diagnostico(idHistoriaClinica, fechaEmision, observacion, estado)
		VALUES(@prmIdHistoriaClinica, GETDATE(), @prmObservacion, 1)
	END
GO
/****** Object:  StoredProcedure [dbo].[spRegistrarCita]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spRegistrarCita]
(	@prmIdMedico int,
	@prmIdPaciente int,
	@prmHora varchar(5),
	@prmFechaReserva datetime
)
AS
	BEGIN
		INSERT INTO Cita (idMedico, idPaciente, fechaReserva, observacion, estado, hora)
		VALUES(@prmIdMedico, @prmIdPaciente, @prmFechaReserva, '', 'P', @prmHora)
	END
GO
/****** Object:  StoredProcedure [dbo].[spRegistrarHorarioAtencion]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spRegistrarHorarioAtencion]
(@prmidMedico int,
@prmFecha DateTime,
@prmidHora int,
@prmEstado bit
)
AS 
	BEGIN
		INSERT INTO HorarioAtencion(idMedico, fecha, idHoraInicio, estado)
		VALUES(@prmidMedico, @prmFecha, @prmidHora, @prmEstado)
	END
GO
/****** Object:  StoredProcedure [dbo].[spListarHorarioAtencionPorMedico]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spListarHorarioAtencionPorMedico] 
(@prmidMedico int)
AS
	BEGIN
		Select A.idMedico, A.fecha, H.idHora, H.hora, A.estado
		From HorarioAtencion A
		Inner Join Hora H ON A.idHoraInicio = H.idHora
		Where A.idMedico = @prmidMedico AND
			  A.estado = 1 AND 
			  A.fecha > GETDATE()
	END
GO
/****** Object:  StoredProcedure [dbo].[spListarHorarioAtencion]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarHorarioAtencion]
(  
	@prmIdEspecialidad int,
	@prmFecha varchar(10)
)
AS
	BEGIN
		SELECT H.hora, M.idMedico, E.nombres, E.apPaterno, E.apMaterno, EP.descripcion
		FROM Empleado E inner join Medico M ON E.idEmpleado = M.idEmpleado
			 inner join Especialidad EP ON M.idEspecialidad = EP.idEspecialidad
			 inner join HorarioAtencion HA ON M.idMedico = HA.idMedico
			 inner join Hora H ON HA.idHoraInicio = H.idHora
		WHERE EP.idEspecialidad = @prmIdEspecialidad AND CONVERT(varchar(10), HA.fecha, 103) = @prmFecha
		ORDER BY H.hora ASC
	END
GO
/****** Object:  StoredProcedure [dbo].[spListarEspecialidadesMasAtendidas]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarEspecialidadesMasAtendidas]
(  @prmFechaInicio varchar(11),
   @prmFechaFin varchar(11)
)
AS
	BEGIN
		SELECT E.idEspecialidad, E.descripcion
		FROM Cita C inner join Medico M ON C.idMedico = C.idMedico
			 inner join Especialidad E ON M.idEspecialidad = E.idEspecialidad
		WHERE C.estado = 'A' AND C.idMedico = M.idMedico
			  AND (C.fechaReserva between @prmFechaInicio AND @prmFechaFin) 
	END
GO
/****** Object:  StoredProcedure [dbo].[spListarCitasPorMedico]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarCitasPorMedico]
(@prmIdMedico int,
 @prmFechaInicio varchar(11),
 @prmFechaFin varchar(11))
AS
	BEGIN
		SELECT P.nombres, P.apPaterno, P.apMaterno, C.fechaReserva, C.estado
		FROM Paciente P inner join Cita C ON P.idPaciente = C.idPaciente 
			  inner join Medico M ON  C.idMedico = M.idMedico 
			 inner join Empleado E ON M.idEmpleado = E.idEmpleado
		WHERE M.idMedico = @prmIdMedico AND E.idTipoEmpleado = 1
			  AND (C.fechaReserva BETWEEN @prmFechaInicio AND @prmFechaFin)
	END
GO
/****** Object:  StoredProcedure [dbo].[spListarCitas]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarCitas]
AS
	BEGIN
		SELECT C.idCita, C.idMedico, C.idPaciente, C.fechaReserva, C.hora, 
			   P.nombres, P.apPaterno, P.apMaterno, P.edad,P.sexo, 
			   P.nroDocumento, P.direccion
		FROM Cita AS C inner join Paciente AS P ON C.idPaciente = P.idPaciente
		WHERE CONVERT(VARCHAR(10), C.fechaReserva, 103) = (SELECT CONVERT(VARCHAR(10), GETDATE(), 103)) AND
			  C.estado = 'P' AND
			  P.estado = 1
		ORDER BY C.hora ASC
	END
GO
/****** Object:  StoredProcedure [dbo].[spListarCitaporPaciente]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarCitaporPaciente]
(
    @prmidPaciente int
)
AS
	BEGIN
		SELECT C.idCita, C.idMedico, C.idPaciente, C.observacion, C.fechaReserva, C.hora, C.estado
		FROM Cita C
		WHERE C.idPaciente = @prmidPaciente
	END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarCita]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarCita]
(  @prmIdCita int
)
AS
	BEGIN
	   UPDATE Cita
	   SET estado = 'C'
	   WHERE idCita = @prmIdCita		
	END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarCita]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBuscarCita]
(	@prmIdCita int
)
AS
	BEGIN
		SELECT C.idCita, C.idMedico, C.idPaciente, C.fechaReserva, C.observacion, C.estado, C.hora
		FROM Cita AS C
		WHERE C.idCita = @prmIdCita
	END
GO
/****** Object:  StoredProcedure [dbo].[spActualizarEstadoCita]    Script Date: 12/08/2014 18:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarEstadoCita]
( @prmIdCita int
)
AS
	BEGIN
	   UPDATE Cita
	   SET estado = 'A'
	   WHERE idCita = @prmIdCita
	END
GO
/****** Object:  ForeignKey [FK_Empleado_TipoEmpleado]    Script Date: 12/08/2014 18:57:19 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_TipoEmpleado] FOREIGN KEY([idTipoEmpleado])
REFERENCES [dbo].[TipoEmpleado] ([idTipoEmpleado])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_TipoEmpleado]
GO
/****** Object:  ForeignKey [FK_HistoriaClinica_Paciente]    Script Date: 12/08/2014 18:57:19 ******/
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaClinica_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_HistoriaClinica_Paciente]
GO
/****** Object:  ForeignKey [FK_Diagnostico_HistoriaClinica]    Script Date: 12/08/2014 18:57:25 ******/
ALTER TABLE [dbo].[Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_Diagnostico_HistoriaClinica] FOREIGN KEY([idHistoriaClinica])
REFERENCES [dbo].[HistoriaClinica] ([idHistoriaClinica])
GO
ALTER TABLE [dbo].[Diagnostico] CHECK CONSTRAINT [FK_Diagnostico_HistoriaClinica]
GO
/****** Object:  ForeignKey [FK_Medico_Empleado]    Script Date: 12/08/2014 18:57:25 ******/
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Empleado]
GO
/****** Object:  ForeignKey [FK_Medico_Especialidad]    Script Date: 12/08/2014 18:57:25 ******/
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Especialidad] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Especialidad]
GO
/****** Object:  ForeignKey [FK_HorarioAtencion_Hora]    Script Date: 12/08/2014 18:57:25 ******/
ALTER TABLE [dbo].[HorarioAtencion]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAtencion_Hora] FOREIGN KEY([idHoraInicio])
REFERENCES [dbo].[Hora] ([idHora])
GO
ALTER TABLE [dbo].[HorarioAtencion] CHECK CONSTRAINT [FK_HorarioAtencion_Hora]
GO
/****** Object:  ForeignKey [FK_HorarioAtencion_Medico]    Script Date: 12/08/2014 18:57:25 ******/
ALTER TABLE [dbo].[HorarioAtencion]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAtencion_Medico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([idMedico])
GO
ALTER TABLE [dbo].[HorarioAtencion] CHECK CONSTRAINT [FK_HorarioAtencion_Medico]
GO
/****** Object:  ForeignKey [FK_Cita_Medico]    Script Date: 12/08/2014 18:57:25 ******/
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_Medico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([idMedico])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Medico]
GO
/****** Object:  ForeignKey [FK_Cita_Paciente]    Script Date: 12/08/2014 18:57:25 ******/
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Paciente]
GO
