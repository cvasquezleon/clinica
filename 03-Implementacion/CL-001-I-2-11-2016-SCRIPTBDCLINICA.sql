USE [BDClinica]
GO
/****** Object:  Table [dbo].[Atencion]    Script Date: 29/11/2016 03:33:51 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Atencion](
	[idAtencion] [int] IDENTITY(1,1) NOT NULL,
	[idCita] [int] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_Atencion] PRIMARY KEY CLUSTERED 
(
	[idAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cita](
	[idCita] [int] IDENTITY(1,1) NOT NULL,
	[idMedico] [int] NULL,
	[idPaciente] [int] NULL,
	[fechaReserva] [datetime] NULL,
	[observacion] [varchar](max) NULL,
	[estado] [char](1) NULL,
	[hora] [varchar](6) NULL,
 CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[idDiagnostico] [int] IDENTITY(1,1) NOT NULL,
	[idHistoriaClinica] [int] NULL,
	[fechaEmision] [datetime] NULL,
	[observacion] [varchar](max) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Diagnostico] PRIMARY KEY CLUSTERED 
(
	[idDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[idTipoEmpleado] [int] NULL,
	[nombres] [varchar](50) NULL,
	[apPaterno] [varchar](50) NULL,
	[apMaterno] [varchar](50) NULL,
	[nroDocumento] [varchar](8) NULL,
	[estado] [bit] NULL,
	[imagen] [varchar](500) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidad](
	[idEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HistoriaClinica]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hora]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hora](
	[idHora] [int] IDENTITY(1,1) NOT NULL,
	[hora] [varchar](50) NULL,
 CONSTRAINT [PK_Hora] PRIMARY KEY CLUSTERED 
(
	[idHora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HorarioAtencion]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioAtencion](
	[idHorarioAtencion] [int] IDENTITY(1,1) NOT NULL,
	[idMedico] [int] NULL,
	[idHoraInicio] [int] NULL,
	[fecha] [datetime] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_HorarioAtencion] PRIMARY KEY CLUSTERED 
(
	[idHorarioAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medico]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[idMedico] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idEspecialidad] [int] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente](
	[idPaciente] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](50) NULL,
	[apPaterno] [varchar](50) NULL,
	[apMaterno] [varchar](50) NULL,
	[edad] [int] NULL,
	[sexo] [char](1) NULL,
	[nroDocumento] [varchar](8) NULL,
	[direccion] [varchar](150) NULL,
	[telefono] [varchar](20) NULL,
	[estado] [bit] NULL,
	[imagen] [varchar](500) NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Receta](
	[idReceta] [int] IDENTITY(1,1) NOT NULL,
	[idDiagnostico] [int] NULL,
	[descripcion] [varchar](max) NULL,
	[fechaEmision] [datetime] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[idReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoEmpleado]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoEmpleado](
	[idTipoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_TipoEmpleado] PRIMARY KEY CLUSTERED 
(
	[idTipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Atencion]  WITH CHECK ADD  CONSTRAINT [FK_Atencion_Cita] FOREIGN KEY([idCita])
REFERENCES [dbo].[Cita] ([idCita])
GO
ALTER TABLE [dbo].[Atencion] CHECK CONSTRAINT [FK_Atencion_Cita]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_Medico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([idMedico])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Medico]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Cita_Paciente]
GO
ALTER TABLE [dbo].[Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_Diagnostico_HistoriaClinica] FOREIGN KEY([idHistoriaClinica])
REFERENCES [dbo].[HistoriaClinica] ([idHistoriaClinica])
GO
ALTER TABLE [dbo].[Diagnostico] CHECK CONSTRAINT [FK_Diagnostico_HistoriaClinica]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_TipoEmpleado] FOREIGN KEY([idTipoEmpleado])
REFERENCES [dbo].[TipoEmpleado] ([idTipoEmpleado])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_TipoEmpleado]
GO
ALTER TABLE [dbo].[HistoriaClinica]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaClinica_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[HistoriaClinica] CHECK CONSTRAINT [FK_HistoriaClinica_Paciente]
GO
ALTER TABLE [dbo].[HorarioAtencion]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAtencion_Hora] FOREIGN KEY([idHoraInicio])
REFERENCES [dbo].[Hora] ([idHora])
GO
ALTER TABLE [dbo].[HorarioAtencion] CHECK CONSTRAINT [FK_HorarioAtencion_Hora]
GO
ALTER TABLE [dbo].[HorarioAtencion]  WITH CHECK ADD  CONSTRAINT [FK_HorarioAtencion_Medico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([idMedico])
GO
ALTER TABLE [dbo].[HorarioAtencion] CHECK CONSTRAINT [FK_HorarioAtencion_Medico]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Empleado]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Especialidad] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Especialidad]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Diagnostico] FOREIGN KEY([idDiagnostico])
REFERENCES [dbo].[Diagnostico] ([idDiagnostico])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Diagnostico]
GO
/****** Object:  StoredProcedure [dbo].[spActualizarEstadoCita]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spBuscarCita]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spBuscarHistoriaClinica]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spBuscarMedicoPorApellidos]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spBuscarPacienteDNI]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spBuscarPacientePorApellidos]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spEliminarCita]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spListarCitaporPaciente]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spListarCitas]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spListarEspecialidad]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spListarHistoriaClinica]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spListarHorarioAtencion]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spRegistrarCita]    Script Date: 29/11/2016 03:33:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spRegistrarCita]
(	@prmIdMedico int,
	@prmIdPaciente int,
	@prmHora varchar(5)
)
AS
	BEGIN
		INSERT INTO Cita (idMedico, idPaciente, fechaReserva, observacion, estado, hora)
		VALUES(@prmIdMedico, @prmIdPaciente, GETDATE(), '', 'P', @prmHora)
	END

GO
/****** Object:  StoredProcedure [dbo].[spRegistrarDiagnostico]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spRegistrarHistoriaClinica]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[spRegistrarPaciente]    Script Date: 29/11/2016 03:33:52 p.m. ******/
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
