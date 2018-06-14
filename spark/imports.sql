-----------------------

CREATE TABLE NEGOCIOS_HISTORICO(
     [ClaveNegocio] [varchar](16) NULL
     ,[IdEmpresa] [tinyint] NULL
     ,[IdNegocio] [varchar](8) NOT NULL
     ,[NegocioCodigo] [varchar](75) NULL
     ,[Negocio] [varchar](300) NULL
     ,[NIFNegocio] [varchar](10) NULL
     ,[OrdenNegocio] [smallint] NULL
     ,[FecDesde] [date] NOT NULL
     ,[FecHasta] [date] NOT NULL
     ,[IdFicha] [int] NULL
     ,[Ficha] [varchar](100) NULL
     ,[IdAgrupacionPago] [varchar](1) NULL
     ,[IdMediador] [varchar](38) NULL
     ,[IdRedComercialNegocios] [varchar](28) NULL
     ,[IdTarifa] [smallint] NULL
     ,[IdVersion] [int] NULL
     ,[IdTramo] [int] NULL
     ,[Tramo] [varchar](16) NULL
     ,[IdNegocioMatriz] [varchar](8) NULL
     ,[NegocioMatriz] [varchar](75) NULL
     ,[OrdenNegocioMatriz] [smallint] NULL
     ,[FechaAltaNegocioMatriz] [date] NULL
     ,[FechaBajaNegocioMatriz] [date] NULL
     ,[AntigüedadNegocioMatriz] [tinyint] NULL
     ,[SituacionNegocioMatriz] [varchar](50) NULL
     ,[IdTipoNegocio] [varchar](2) NULL
     ,[TipoNegocio] [varchar](50) NULL
     ,[OrdenTipoNegocio] [smallint] NULL
     ,[IdSubTipoNegocio] [varchar](2) NULL
     ,[SubTipoNegocio] [varchar](50) NULL
     ,[OrdenSubTipoNegocio] [varchar](50) NULL
     ,[IdDelegacionGestora] [char](2) NULL
     ,[FecAlta] [date] NULL
     ,[FecBaja] [date] NULL
     ,[swVencimientoUnificado] [char](1) NULL
     ,[FecVencimientoUnificado] [date] NULL
     ,[IdSegmentoEstrategico] [int] NULL
     ,[idTipoDescuento] [char](1) NULL
     ,[idPatronBonificacion] [varchar](8) NULL
     ,[VehiculosEsperados] [smallint] NULL
     ,[IdEstadoNegocio] [varchar](1) NULL
     ,[IdTipoAhorroIVA] [varchar](3) NULL
     ,[swControlPrestaciones] [varchar](1) NULL
     ,[swContratoMarco] [varchar](1) NULL
     ,[FecFirmaContratoMarco] [date] NULL
     ,[swGestorRenting] [varchar](1) NULL
     ,[swGestorUsos] [varchar](1) NULL
     ,[swProductoVIP] [varchar](1) NULL
     ,[IdAfectanRecargos] [varchar](1) NULL
     ,[IdRecargoPolizaNueva] [varchar](1) NULL
     ,[IdRecargoConductor] [varchar](1) NULL
     ,[IdFactorCorreccion] [varchar](1) NULL
     ,[FecCoeficiente] [date] NULL
     ,[FecDescuento] [date] NULL
     ,[IdValidacionAdicional] [varchar](1) NULL
     ,[Observaciones] [varchar](1000) NULL
     ,[ReclamacionDocumentacion] [varchar](1) NULL
     ,[ReclamacionDatos] [varchar](1) NULL
     ,[TarjetaACM] [varchar](1) NULL
     ,[CondicionesParticulares] [varchar](1) NULL
     ,[AgrupacionComunicaciones] [varchar](3) NULL
     ,[IdEnvioCartas] [varchar](1) NULL
     ,[IdEnvioDocumentacion] [varchar](1) NULL
     ,[Siniestralidad] [varchar](1) NULL
     ,[Password] [varchar](1) NULL
     ,[LOPD] [varchar](1) NULL
     ,[RenovacionAutomatica] [varchar](1) NULL
     ,[Suplementos] [varchar](1) NULL
     ,[ConductorOcasional] [varchar](1) NULL
     ,[IdUtilizarNIFNegocio] [varchar](1) NULL
     ,[IdGranReparacion] [varchar](1) NULL
     ,[IdRegalo] [varchar](1) NULL
     ,[IdNivelContratacion] [tinyint] NULL
     ,[IdEmpresaModificable] [varchar](1) NULL
     ,[IdPedirDatosConductor] [varchar](1) NULL
     ,[IdGestionCobro] [varchar](1) NULL
     ,[IdFormaPago] [varchar](1) NULL
     ,[IdRecargoFraccionamiento] [varchar](1) NULL
     ,[IdAnulacionImpago] [varchar](1) NULL
     ,[IdFormaAgrupacion] [varchar](2) NULL
     ,[IdGenerarFactura] [nchar](10) NULL
     ,[IdRecibos] [nchar](10) NULL
     ,[IdIntervinienteRecibo] [nchar](10) NULL
     ,[IdLugarPago] [nchar](10) NULL
     ,[IdReenvioBanco] [nchar](10) NULL
     ,[IdPeriodoLiquidacion] [varchar](1) NULL
     ,[IdFormaLiquidacion] [varchar](1) NULL
     ,[IdTipoComisionNP] [varchar](2) NULL
     ,[PorcentajeNP] [decimal](9, 2) NULL
     ,[CantidadFijaNP] [decimal](9, 2) NULL
     ,[IdModoCobroNP] [varchar](1) NULL
     ,[IdTipoComisionCartera] [varchar](2) NULL
     ,[PorcentajeCartera] [decimal](9, 2) NULL
     ,[CantidadFijaCartera] [decimal](9, 2) NULL
     ,[IdModoCobroCartera] [varchar](1) NULL
     ,[IdSegregacionPolizas] [varchar](1) NULL
     ,[IdNegocioAsociado] [varchar](8) NULL
     ,[IdTipoHermanamiento] [varchar](1) NULL
     ,[IdRangoPolizas] [varchar](1) NULL
     ,[IdTipoDevolucionImpuesto] [varchar](2) NULL
     ,[IdInterlocutor] [varchar](41) NULL
     ,[IdCorreDescuentos] [varchar](1) NULL
     ,[IdTechosSuelos] [varchar](1) NULL
     ,[PatronTechosSuelos] [varchar](50) NULL
     ,[IdNormasSuscripcion] [varchar](8) NULL
     ,[FecRevision] [date] NULL
     ,[F_Carga] [datetime] NOT NULL
     ,[IdTipoSubNegocio] [varchar](2) NULL
     ,[TipoSubNegocio] [varchar](50) NULL
     ,[idEntidadCuenta] [varchar](9) NULL
     ,[EntidadCuenta] [varchar](125) NULL
     ,[OrdenEntidadCuenta] [int] NULL
     ,[IdTipoDocumento] [varchar](2) NULL
     ,[TipoDocumento] [varchar](25) NULL
     ,[OrdenTipoDocumento] [varchar](25) NULL
     ,[Documento] [varchar](12) NULL
     ,[OrdenDocumento] [varchar](12) NULL
     ,[NegocioMatrizCodigoNif] [varchar](300) NULL
     ,[Dias_Control_Renting] [smallint] NULL
     ,[IdMotivoAnulacion] [varchar](2) NULL
)

-------------------


BULK INSERT NEGOCIOS_HISTORICO
FROM '/var/opt/mssql/backup/NEGOCIOS_HISTORICO.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

select count(*) from dbo.NEGOCIOS_HISTORICO
---------------------

CREATE TABLE [XPOLIZAS](
     [Apolclav] [int] NOT NULL
     ,[FechaEntrada] [date] NULL
     ,[FechaMovini] [date] NOT NULL
     ,[FechaMovFin] [date] NOT NULL
     ,[Orden] [tinyint] NOT NULL
     ,[SitPoliza] [varchar](1) NULL
     ,[CausaAnulacion] [varchar](1) NULL
     ,[Producto] [varchar](4) NULL
     ,[Ocupantes] [tinyint] NULL
     ,[SeguroAcc] [bit] NULL
     ,[NifTomador] [varchar](10) NULL
     ,[TipoPersona] [varchar](1) NULL
     ,[SexoTomador] [varchar](1) NULL
     ,[CodPostal] [varchar](5) NULL
     ,[Frt] [date] NULL
     ,[FnacTomador] [date] NULL
     ,[FnacConductor] [date] NULL
     ,[Matricula] [varchar](12) NULL
     ,[ObligatorioCedido] [varchar](1) NULL
     ,[IdModelo] [int] NULL
     ,[ValorVehiculo] [int] NULL
     ,[ValorAccesorios] [int] NULL
     ,[AñoConstruccion] [smallint] NULL
     ,[FechaConstruccion] [date] NULL
     ,[Banco] [smallint] NULL
     ,[DuracionContratoRenting] [tinyint] NULL
     ,[Sucursal] [smallint] NULL
     ,[Fbaja] [date] NULL
     ,[FechaEmision] [date] NULL
     ,[IdMovPoliza] [bigint] NOT NULL
     ,[F_carga] [smalldatetime] NOT NULL
     ,[AsistenciaJuridica] [bit] NULL
     ,[IdEmpresa] [tinyint] NOT NULL
     ,[SexoCROcasional] [char](1) NULL
     ,[FNacCROcasional] [date] NULL
     ,[FRTCROcasional] [date] NULL
     ,[RelacionCROConductor] [char](1) NULL
     ,[SexoConductor] [char](1) NULL
     ,[IdMovPolizaExt] [char](17) NULL
     ,[GarantiaMecanica] [varchar](3) NOT NULL
     ,[UsoVehiculo] [varchar](4) NULL
     ,[Tarifa] [varchar](4) NULL
     ,[VersionTarifa] [smallint] NULL
     ,[codCoefBonificacion] [varchar](8) NULL
     ,[NivelBonificacion] [smallint] NULL
     ,[SujetoANormativa] [varchar](1) NOT NULL
     ,[Lunas] [varchar](1) NOT NULL
     ,[ProProducto] [varchar](2) NOT NULL
     ,[LunasFP] [varchar](1) NOT NULL
     ,[PresenciaAsnef] [char](1) NULL
     ,[RiskScore] [char](1) NULL
     ,[SeverityScore] [char](1) NULL
     ,[NumPlazas] [int] NULL
     ,[Peso] [int] NULL
     ,[AñoAdquisicion] [smallint] NULL
     ,[CondHabitual] [bit] NULL
     ,[GarantiaMecanicaFP] [varchar](4) NULL
     ,[Asistencia] [char](1) NULL
     ,[AmbitoAsistencia] [varchar](3) NULL
     ,[IdOficina] [int] NULL
     ,[IdNegocio] [varchar](8) NULL
     ,[idSolicitud] [bigint] NULL
     ,[id15PuntosCarnet] [smallint] NULL
     ,[Telefono] [int] NULL
     ,[FechaVencimiento] [date] NULL
     ,[KMAño] [int] NULL
     ,[LugarAparcamiento] [varchar](10) NULL
     ,[NPlazasAseg] [tinyint] NULL
     ,[EstadoCivil] [varchar](1) NULL
     ,[UsoVehiculoAct] [varchar](10) NULL
     ,[DescuentoObligatorio] [int] NULL
     ,[DescuentoVoluntario] [int] NULL
     ,[DescuentoOcupantes] [int] NULL
)

------------------

BULK INSERT XPOLIZAS
FROM '/var/opt/mssql/backup/XPOLIZAS.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);


select count(*) from XPOLIZAS
---------------------------------

CREATE TABLE [PRODUCTOSGARANTIAS](
     [Producto] [smallint] NOT NULL
     ,[RCObligatorio] [bit] NOT NULL
     ,[RCVoluntario] [bit] NOT NULL
     ,[DañosPropios] [bit] NOT NULL
     ,[Accidentes] [bit] NOT NULL
     ,[Robo] [bit] NOT NULL
     ,[DefensaJuridica] [bit] NOT NULL
     ,[Acm] [bit] NOT NULL
     ,[Lunas] [bit] NOT NULL
     ,[Incendio] [bit] NOT NULL
)

--------------------------

BULK INSERT PRODUCTOSGARANTIAS
FROM '/var/opt/mssql/backup/PRODUCTOSGARANTIAS.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

select count(*) from dbo.PRODUCTOSGARANTIAS
-----------------------------


CREATE TABLE [TAUDACON](
     [AUDACON_ID_EMPRESA] [smallint] NOT NULL
     ,[AUDACON_ID_RAMO] [tinyint] NOT NULL
     ,[AUDACON_ID_SOLICIT] [bigint] NOT NULL
     ,[AUDACON_NEGOCIO] [varchar](8) NULL
     ,[AUDACON_TIPO_NEGO] [varchar](2) NULL
     ,[AUDACON_CAMPANIA] [varchar](2) NULL
     ,[AUDACON_CENT_COSTE] [varchar](8) NULL
     ,[AUDACON_USO_VEH] [varchar](4) NULL
     ,[AUDACON_PUNTO_RED] [int] NULL
     ,[AUDACON_TALLER_PTE] [int] NULL
     ,[AUDACON_SW_PERD_TO] [varchar](4) NULL
     ,[AUDACON_SW_RC_CARG] [varchar](4) NULL
     ,[AUDACON_SW_ASIST] [varchar](4) NULL
     ,[AUDACON_SW_DEFEN] [varchar](4) NULL
     ,[AUDACON_SW_LUNAS] [varchar](4) NULL
     ,[AUDACON_USU_UMOD] [varchar](8) NULL
     ,[AUDACON_FEC_UMOD] [datetime2](6) NULL
     ,[FEC_GENERACION] [datetime2](6) NULL
     ,[F_CARGA] [smalldatetime] NULL
     ,[AUDACON_D_DE_OBL] [decimal](4, 2) NULL
     ,[AUDACON_D_DE_VOLUN] [decimal](4, 2) NULL
     ,[AUDACON_D_DE_OCUPA] [decimal](4, 2) NULL
     ,[AUDACON_TIP_DESC_N] [varchar](1) NULL
     ,[AUDACON_CER_SIN_AU] [varchar](1) NULL
     ,[AUDACON_SER_DES_VE] [varchar](1) NULL
     ,[AUDACON_TIPO_PRIMA] [varchar](1) NULL
     ,[AUDACON_DURA_CONTR] [smallint] NULL
     ,[AUDACON_PR_INC_NE] [varchar](1) NULL
     ,[AUDACON_SG_N_PFIL] [int] NULL
     ,[AUDACON_SG_FF_PFIL] [decimal](13, 2) NULL
     ,[AUDACON_SG_NOMT_PF] [varchar](50) NULL
     ,[AUDACON_SG_NIFT_PF] [varchar](10) NULL
     ,[AUDACON_SG_AC_O_PF] [decimal](13, 2) NULL
     ,[AUDACON_FFIN_CONTR] [date] NULL
     ,[BorradoDb2] [smallint] NULL
     ,[AUDACON_CD_EXTERNO] [varchar](20) NULL
)


------------------------------

BULK INSERT [TAUDACON]
FROM '/var/opt/mssql/backup/TAUDACON.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

select count(*) FROM TAUDACON
---------------------------

CREATE TABLE [RECIBOSEXCLUIR](
     [ReferenciaRecibo] [decimal](13, 0) NOT NULL
     ,[F_carga] [smalldatetime] NOT NULL
)

BULK INSERT [RECIBOSEXCLUIR]
FROM '/var/opt/mssql/backup/RECIBOSEXCLUIR.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

---------------------------

CREATE TABLE [dbo].[TAMMOVRE](
     [AMMOVRE_ID_EMPRESA] [smallint] NOT NULL
     ,[AMMOVRE_ID_RAMO] [tinyint] NOT NULL
     ,[AMMOVRE_ID_POLIZA] [bigint] NOT NULL
     ,[AMMOVRE_ID_SECUEN] [int] NOT NULL
     ,[AMMOVRE_COD_MOVIM] [varchar](4) NULL
     ,[AMMOVRE_DURACION] [smallint] NULL
     ,[AMMOVRE_ESTADO] [varchar](1) NULL
     ,[AMMOVRE_F_ALTA] [date] NULL
     ,[AMMOVRE_F_EFECTO] [date] NULL
     ,[AMMOVRE_PROGRAMA] [varchar](5) NULL
     ,[AMMOVRE_ID_USER_MO] [varchar](8) NULL
     ,[AMMOVRE_TS_ULT_MOD] [datetime2](6) NULL
     ,[FEC_GENERACION] [datetime2](6) NULL
     ,[F_CARGA] [smalldatetime] NULL
)

BULK INSERT [TAMMOVRE]
FROM '/var/opt/mssql/backup/TAMMOVRE.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

---------------------------

CREATE TABLE [TGRDESGL](
     [GRDESGL_EMPRESA] [smallint] NOT NULL
     ,[GRDESGL_RAMO] [tinyint] NOT NULL
     ,[GRDESGL_REF_RECIBO] [bigint] NOT NULL
     ,[GRDESGL_ID_TIP_OBJ] [smallint] NOT NULL
     ,[GRDESGL_ID_RIESGO] [smallint] NOT NULL
     ,[GRDESGL_COD_GARAN] [smallint] NOT NULL
     ,[GRDESGL_COD_DESGL] [smallint] NOT NULL
     ,[GRDESGL_IMPORTE] [decimal](15, 4) NULL
     ,[GRDESGL_SIGNO] [tinyint] NULL
     ,[GRDESGL_TIMESTAMP] [datetime2](6) NULL
     ,[GRDESGL_USUARIO] [varchar](8) NULL
     ,[FEC_GENERACION] [datetime2](6) NOT NULL
     ,[F_CARGA] [smalldatetime] NOT NULL
)

BULK INSERT [TGRDESGL]
FROM '/var/opt/mssql/backup/TGRDESGL.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

--------------------------

CREATE TABLE [TGRRECIB](
     [GRRECIB_EMPRESA] [smallint] NOT NULL
     ,[GRRECIB_RAMO] [tinyint] NOT NULL
     ,[GRRECIB_REF_RECIBO] [bigint] NOT NULL
     ,[GRRECIB_IND_EF_COB] [varchar](1) NULL
     ,[GRRECIB_ID_COLECT] [bigint] NULL
     ,[GRRECIB_ID_ADHES] [bigint] NULL
     ,[GRRECIB_NUM_POLIZA] [bigint] NULL
     ,[GRRECIB_ID_MOVIM] [int] NULL
     ,[GRRECIB_ANUALIDAD] [smallint] NULL
     ,[GRRECIB_ORDEN] [smallint] NULL
     ,[GRRECIB_NUM_FRAC] [tinyint] NULL
     ,[GRRECIB_DIG_CTRL] [tinyint] NULL
     ,[GRRECIB_TIP_UN_GES] [varchar](1) NULL
     ,[GRRECIB_UNI_GEST] [varchar](10) NULL
     ,[GRRECIB_FORMA_PAGO] [varchar](1) NULL
     ,[GRRECIB_FREC_PAGO] [varchar](1) NULL
     ,[GRRECIB_FECH_EMIS] [date] NULL
     ,[GRRECIB_FECH_CONT] [date] NULL
     ,[GRRECIB_FECH_EFE] [date] NULL
     ,[GRRECIB_FECH_VENC] [date] NULL
     ,[GRRECIB_IMP_RECI] [decimal](11, 2) NULL
     ,[GRRECIB_TIP_RECI] [varchar](3) NULL
     ,[GRRECIB_INDI_TIPO] [varchar](1) NULL
     ,[GRRECIB_ESTADO] [varchar](2) NULL
     ,[GRRECIB_ESTADO_COB] [varchar](3) NULL
     ,[GRRECIB_SITUACION] [varchar](2) NULL
     ,[GRRECIB_FECH_SITU] [date] NULL
     ,[GRRECIB_COD_AGRUPA] [bigint] NULL
     ,[GRRECIB_TIPO_INTER] [varchar](2) NULL
     ,[GRRECIB_PRODUCTO] [smallint] NULL
     ,[GRRECIB_ORD_INTER] [int] NULL
     ,[GRRECIB_NIF] [varchar](10) NULL
     ,[GRRECIB_CNIF] [varchar](1) NULL
     ,[GRRECIB_NOMB] [varchar](50) NULL
     ,[GRRECIB_COD_BAN] [smallint] NULL
     ,[GRRECIB_COD_OFI] [smallint] NULL
     ,[GRRECIB_DIG_CTRL1] [varchar](1) NULL
     ,[GRRECIB_DIG_CTRL2] [varchar](1) NULL
     ,[GRRECIB_COD_CUENTA] [bigint] NULL
     ,[GRRECIB_TIPO_VIA] [varchar](2) NULL
     ,[GRRECIB_NOMB_VIA] [varchar](30) NULL
     ,[GRRECIB_NUMERO] [smallint] NULL
     ,[GRRECIB_AMPLIACION] [varchar](20) NULL
     ,[GRRECIB_COD_POSTAL] [int] NULL
     ,[GRRECIB_LOCALIDAD] [varchar](25) NULL
     ,[GRRECIB_COD_PROV] [tinyint] NULL
     ,[GRRECIB_PAIS] [smallint] NULL
     ,[GRRECIB_CONTA_DUP] [tinyint] NULL
     ,[GRRECIB_COD_BLOQ] [tinyint] NULL
     ,[GRRECIB_IND_ACU_RE] [varchar](1) NULL
     ,[GRRECIB_TIMESTAMP] [datetime2](6) NULL
     ,[GRRECIB_USUARIO] [varchar](8) NULL
     ,[GRRECIB_PAGO_AGRU] [varchar](1) NULL
     ,[FEC_GENERACION] [datetime2](6) NOT NULL
     ,[F_CARGA] [smalldatetime] NOT NULL
     ,[GRRECIB_IBAN_SEPA] [varchar](34) NULL
     ,[GRRECIB_TEXTO] [varchar](30) NULL
)

BULK INSERT [TGRRECIB]
FROM '/var/opt/mssql/backup/TGRRECIB.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

----------------------

CREATE TABLE [dbo].[TUCNEGME](
     [UCNEGME_ID_NEGOCIO] [varchar](8) NOT NULL
     ,[UCNEGME_ID_MEDIADO] [int] NOT NULL
     ,[UCNEGME_F_ALTA] [date] NOT NULL
     ,[UCNEGME_F_BAJA] [date] NULL
     ,[UCNEGME_TS_ULT_MOD] [datetime2](6) NULL
     ,[UCNEGME_ID_USER_MO] [varchar](8) NULL
     ,[UCNEGME_ID_EMPRESA] [smallint] NULL
     ,[FEC_GENERACION] [datetime2](6) NULL
     ,[F_CARGA] [smalldatetime] NULL
)

BULK INSERT [TUCNEGME]
FROM '/var/opt/mssql/backup/TUCNEGME.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

-------------------------

CREATE TABLE [dbo].[v_xrecibos](
	[Contabilizable] [bit] NULL,
	[Imputable] [bit] NULL,
	[IdEmpresa] [smallint] NOT NULL,
	[IdRamo] [tinyint] NOT NULL,
	[ReferenciaRecibo] [bigint] NOT NULL,
	[IndEfCob] [varchar](1) NULL,
	[IdColectivo] [int] NULL,
	[Adhesion] [bigint] NULL,
	[Poliza] [bigint] NULL,
	[IdMovimiento] [int] NULL,
	[Anualidad] [smallint] NULL,
	[Orden] [smallint] NULL,
	[NumeroFraccion] [tinyint] NULL,
	[DigitoControl] [tinyint] NULL,
	[TipUnGes] [varchar](1) NULL,
	[UnidadGestora] [varchar](10) NULL,
	[IdCobrador] [varchar](7) NULL,
	[IdSubdelegacion] [varchar](3) NULL,
	[FormaPago] [varchar](1) NULL,
	[FrecuenciaPago] [varchar](1) NULL,
	[FecEmision] [date] NULL,
	[FecContable] [date] NULL,
	[FecEfecto] [date] NULL,
	[FecVencimiento] [date] NULL,
	[ImporteRecibo] [decimal](13, 2) NULL,
	[TipoRecibo] [varchar](3) NULL,
	[IndicadorTipo] [varchar](1) NULL,
	[Estado] [varchar](2) NULL,
	[EstadoCobro] [varchar](3) NULL,
	[Situacion] [varchar](2) NULL,
	[FecSituacion] [date] NULL,
	[CodigoAgrupacion] [bigint] NULL,
	[TipoInterviniente] [varchar](2) NULL,
	[Producto] [smallint] NULL,
	[OrdenInterviniente] [int] NULL,
	[Nif] [varchar](10) NULL,
	[CNif] [varchar](1) NULL,
	[NombreApellidosPagos] [varchar](50) NULL,
	[CodigoBanco] [smallint] NULL,
	[CodigoOficina] [smallint] NULL,
	[DigitoControl1] [varchar](1) NULL,
	[DigitoControl2] [varchar](1) NULL,
	[CodigoCuenta] [bigint] NULL,
	[TipoVia] [varchar](2) NULL,
	[NombreVia] [varchar](30) NULL,
	[Numero] [smallint] NULL,
	[Ampliacion] [varchar](20) NULL,
	[CodigoPostal] [int] NULL,
	[Localidad] [varchar](25) NULL,
	[CodigoProvincia] [tinyint] NULL,
	[Pais] [smallint] NULL,
	[ContaDup] [tinyint] NULL,
	[MotivoDevolucion] [tinyint] NULL,
	[IdicadorAcuseRecibo] [varchar](1) NULL,
	[FecImputacion] [date] NULL,
	[PrimaSinImpuestos] [decimal](22, 6) NOT NULL,
	[RecargoFraccionamiento] [decimal](9, 2) NULL,
	[ComisionRepercutida] [decimal](9, 2) NULL,
	[ComisionNoRepercutida] [decimal](9, 2) NULL,
	[FecUltimaModificacion] [datetime2](6) NULL,
	[UsuarioModificacion] [varchar](8) NULL,
	[F_Carga] [smalldatetime] NULL,
	[pagoagrupado] [varchar](1) NULL,
	[FecCobro] [date] NULL
) 

BULK INSERT [v_xrecibos]
FROM '/var/opt/mssql/backup/v_xrecibos.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

----------------------------

CREATE TABLE [dbo].[XESTRCOMER_PERSONAL](
     [IdEmpresa] [smallint] NOT NULL
     ,[TipoPersonalComercial] [varchar](3) NOT NULL
     ,[DescripcionTipoPersonalComercial] [varchar](8000) NULL
     ,[IdPersonalComercial] [int] NOT NULL
     ,[IdPersonalComercialSuperior] [int] NULL
     ,[TipoElementoEstructuraPertenencia] [varchar](3) NULL
     ,[DescripcionTipoElementoEstructuraPertenencia] [varchar](8000) NULL
     ,[IdElementoEstructuraPertenencia] [int] NULL
     ,[DescripcionElementoEstructura] [varchar](8000) NULL
     ,[FecDesde] [date] NOT NULL
     ,[FecHasta] [date] NULL
     ,[FecAlta] [date] NULL
     ,[FecBaja] [date] NULL
     ,[MotivoBaja] [tinyint] NULL
     ,[MediadorTraspaso] [int] NULL
     ,[IdPerRef] [varchar](41) NULL
     ,[NifPersona] [varchar](300) NULL
     ,[Sexo] [varchar](1) NULL
     ,[FecNacimiento] [date] NULL
     ,[ApelNomRazonSocial] [varchar](8000) NULL
     ,[ApelNomRazonSocialSuperior] [varchar](8000) NULL
     ,[CodigoPostal] [varchar](5) NULL
     ,[TipoContractual] [varchar](2) NULL
     ,[DescripcionTipoContractual] [varchar](8000) NULL
     ,[CodigoDGS] [varchar](10) NULL
     ,[ClasificacionMediador] [varchar](3) NULL
     ,[FlagMediadorSubdelegaciones] [varchar](1) NULL
     ,[FlagMediadorProductosExcluidos] [varchar](1) NULL
     ,[IdRetencion] [smallint] NULL
     ,[FecUltimaModificacion] [datetime2](6) NULL
     ,[UsuarioModificacion] [varchar](8) NULL
     ,[F_Carga] [smalldatetime] NULL
     ,[IdTipoPersona] [varchar](1) NULL
)

BULK INSERT [XESTRCOMER_PERSONAL]
FROM '/var/opt/mssql/backup/XESTRCOMER_PERSONAL.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);


------------------------------

CREATE TABLE [dbo].[XPOLIZAS_COMUN](
     [apolclav] [int] NOT NULL
     ,[FechaContratacion] [date] NOT NULL
     ,[FechaEntrada] [date] NOT NULL
     ,[RelacionPresentador] [varchar](1) NULL
     ,[FirmaNuevaRC] [varchar](1) NULL
     ,[CanalInformacion] [varchar](1) NULL
     ,[CanalEntrada] [varchar](1) NULL
     ,[SubCanalEntrada] [varchar](1) NULL
     ,[Colectivo] [varchar](8) NULL
     ,[Flota] [varchar](8) NULL
     ,[Descuentos] [varchar](1) NOT NULL
     ,[Delegacion] [varchar](24) NOT NULL
     ,[Operador] [varchar](8) NULL
     ,[HoraEmision] [varchar](12) NOT NULL
     ,[FechaVencimiento] [date] NULL
     ,[AñoPenalizacion] [smallint] NOT NULL
     ,[SaldoActual] [decimal](20, 3) NOT NULL
     ,[FechaImputacion] [date] NOT NULL
     ,[F_carga] [smalldatetime] NULL
     ,[IdEmpresa] [tinyint] NULL
     ,[FrecuenciaPago] [varchar](1) NULL
     ,[CodigoCampaña] [varchar](2) NULL
     ,[IdNegocio] [varchar](8) NULL
     ,[IdNegocioContratacion] [varchar](8) NULL
     ,[IdOficinaContratacion] [int] NULL
     ,[FechaFinContratoRenting] [date] NULL
     ,[Cod_Agreg_Cruce] [varchar](16) NULL
     ,[CompañiaProcedencia] [int] NULL
     ,[NAñosCompProcedencia] [int] NULL
     ,[NSiniCompProcedencia] [int] NULL
     ,[OrigenCompProc] [varchar](1) NULL
     ,[AñoInicioContrato] [smallint] NULL
     ,[IdCanal] [varchar](72) NULL
)


BULK INSERT [XPOLIZAS_COMUN]
FROM '/var/opt/mssql/backup/XPOLIZAS_COMUN.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

select count(*) from XPOLIZAS_COMUN
--------------------------------

CREATE TABLE [dbo].[XRECIBOS](
     [Contabilizable] [bit] NULL
     ,[Imputable] [bit] NULL
     ,[Idempresa] [smallint] NOT NULL
     ,[Idramo] [tinyint] NOT NULL
     ,[Poliza] [bigint] NULL
     ,[ReferenciaRecibo] [bigint] NOT NULL
     ,[FecEfecto] [date] NULL
     ,[FecVencimiento] [date] NULL
     ,[FecEmision] [date] NULL
     ,[FecImputacion] [date] NULL
     ,[FecContable] [date] NULL
     ,[TipoRecibo] [varchar](3) NULL
     ,[Estado] [varchar](2) NULL
     ,[EstadoCobro] [varchar](3) NULL
     ,[Situacion] [varchar](2) NULL
     ,[TipUnGes] [varchar](1) NULL
     ,[FormaPago] [varchar](1) NULL
     ,[FrecuenciaPago] [varchar](1) NULL
     ,[IdColectivo] [int] NULL
     ,[pagoagrupado] [varchar](1) NULL
     ,[PrimaSinImpuestos] [decimal](22, 6) NOT NULL
     ,[ImporteRecibo] [decimal](13, 2) NULL
     ,[ComisionRepercutida] [decimal](9, 2) NULL
     ,[ComisionNoRepercutida] [decimal](9, 2) NULL
     ,[RecargoFraccionamiento] [decimal](9, 2) NULL
     ,[FecCobro] [date] NULL
     ,[F_Carga] [smalldatetime] NULL
     ,[CodigoBanco] [smallint] NULL
     ,[FactorPrimaRecibo] [int] NULL
     ,[PagoTarjeta] [tinyint] NULL
)


BULK INSERT [XRECIBOS]
FROM '/var/opt/mssql/backup/XRECIBOS.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
   TABLOCK
);

select count(*) from XRECIBOS

------------------------------

select * from dbo.XPOLIZAS
select * from dbo.PRODUCTOSGARANTIAS 

-----------
select * from MESES order by FECHA desc

SELECT

                    Fecha,

                    cast(convert(varchar(8),fecha,112) as datetime),

                    fecha_conv,

                    InicioMes,

                    FinMes,
                    YEAR (Fecha) as ano --restarle el año d fnacconductor

             FROM Meses

             WHERE (MONTH(FECHA)=12 AND YEAR(FECHA) BETWEEN YEAR('2015-01-01') AND YEAR('2018-04-30')-1)

                    OR (MONTH(FECHA)=MONTH('2018-04-30')-1 AND YEAR(FECHA)=YEAR('2018-04-30'))
                    
                    
                    
 --------------------------------------------------------------
                    
                    
    select   AMMOVRE_ID_POLIZA,AMMOVRE_F_EFECTO,AMMOVRE_COD_MOVIM,AMMOVRE_DURACION,MAX(AMMOVRE_ID_SECUEN) as AMMOVRE_ID_SECUEN
	FROM TAMMOVRE
	where AMMOVRE_COD_MOVIM in ('ALCN','PRTC','PROG','AMPL')
		and AMMOVRE_ID_POLIZA	<	8000000 --and AMMOVRE_ID_POLIZA=6916195	
		and AMMOVRE_ESTADO		<>	'A' 
	group by AMMOVRE_ID_POLIZA,AMMOVRE_F_EFECTO,AMMOVRE_COD_MOVIM,AMMOVRE_DURACION
	

	
--LISTA ESTUDIO POLIZAS	
	insert into 
			dbo.PolizasEstudio  
	select 
			apolclav,
			case 
				when FechaEntrada>'2018-01-01' then cast(FechaEntrada as date)
				else cast('2018-01-01' as date)
			end as FechaEntradaEstudio,
			FechaEntrada  
		from 
			dbo.XPOLIZAS_COMUN  
		where FechaEntrada <= '2018-04-30' -- cast('2018-04-30' as date) 
	
		

select * from xpolizas_comun
select * from polizasestudio
select * from polizasestudio

		
		------
--MOVTOS POLIZAS


SELECT 
	ep.apolclav,c.FechaMovini as FechaEstudio,1 as Tipo 
FROM 
	XPOLIZAS c join PolizasEstudio ep
ON 
	c.Apolclav=ep.apolclav
WHERE 
 	c.fechamovini between ep.FechaEntradaEstudio and '2018-04-30' 	
--c.FechaMovini > ep.FechaEntradaEstudio and c.FechaMovini <= '2018-04-30'


--RECIBOS

select 
			ep.apolclav,
			case
				when Rec.GRRECIB_FECH_VENC=Rec.GRRECIB_FECH_EFE  then DATEADD(day,1,Rec.GRRECIB_FECH_VENC)
				else Rec.GRRECIB_FECH_VENC
			end as FechaEstudio,
			20 as Tipo
		from 
			 --dw_mutua_m.dbo.TGRRECIB Rec
			TGRRECIB Rec
		inner join
			 PolizasEstudio ep
		on
			ep.apolclav=Rec.GRRECIB_ID_ADHES
		where 
			Rec.GRRECIB_EMPRESA in (1,3) and --Solo del ramo de autos (añadiendo globalis)
			--Rec.GRRECIB_RAMO=1 and
			Rec.GRRECIB_FECH_VENC between ep.FechaEntradaEstudio and '2018-04-30'  	
 	
 	
----------

				
	select 
	pol.apolclav,
	m.FinMes,
	0 as Tipo		
	from
		PolizasEstudio pol
	cross join
			Meses m
	where m.FinMes > '2018-01-01' and m.FinMes <= '2018-04-30'
	
			
			
			select * from dbo.PolizasEstudio order by FechaEntradaEstudio desc
			
			
	
select 
	ep.apolclav,
	dateadd(year,mes.año-year(FnacTomador),FnacTomador),
	--FnacConductor + date_add(FnacConductor, datediff(FnacConductor, current_date)) as FechaEstudio,
	01 as Tipo						--Antiguamente 5 pero cambio por CRM
from 
	PolizasEstudio ep
	join
	XPOLIZAS pol 
	on
		ep.apolclav=pol.Apolclav
	where 
		FnacConductor >= pol.FechaMovini and FnacConductor <= pol.FechaMovFin
		and FnacConductor >= ep.FechaEntradaEstudio			
			
	
		select 
			ep.apolclav,
			dateadd(year,mes.año-year(FnacTomador),FnacTomador),
			0 as Tipo						--Antiguamente 7 pero cambio por CRM
		from 
			tmp_m.diarizaciones_autos.polizas_estudio ep
		inner join
			xautos_m.dbo.xpolizas pol
		on
			ep.apolclav=pol.apolclav
		inner join
			(select year(fecha) as año from meses('2018-01-01',@DiaDespues,'ANUAL'))mes 
		on 
			dateadd(year,mes.año-year(FnacTomador),FnacTomador) between pol.FechaMovini and FechaMovFin
		where 
			dateadd(year,mes.año-year(FnacTomador),FnacTomador) between @inicioestudio and @finestudio
		
		
	
			select ReferenciaRecibo from XRECIBOS where ReferenciaRecibo is null
			select ReferenciaRecibo from V_XRECIBOS where ReferenciaRecibo is not null
			select * from dbo.RECIBOSEXCLUIR
		
			
			select
            Rec.Idempresa 
            , Rec.Idramo 
            , Rec.ReferenciaRecibo
            , Rec.Poliza
            , Rec.Estado
            , Rec.Situacion
            , Rec.FecEfecto
            , Rec.FecVencimiento
            , Rec.FactorPrimaRecibo
            , Rec.FrecuenciaPago
            , Rec.TipoRecibo
            , Rec2.Anualidad
            , Rec2.NumeroFraccion
            , Rec.Imputable
			, Rec.TipUnGes
			, Rec.FormaPago
        from
            XRECIBOS Rec
            LEFT JOIN
            V_XRECIBOS Rec2
            ON
                Rec.Idempresa = Rec2.IdEmpresa
                AND
                Rec.Idramo = Rec2.IdRamo
                AND
                Rec.ReferenciaRecibo = Rec2.ReferenciaRecibo
	where
			Rec.Idempresa in (1,3)
			and
			Rec.Idramo=1 
			AND
			Rec.FrecuenciaPago = 'P'
			AND
			Rec.Imputable = 1
	
			
			select * from XRECIBOS
			select * from V_XRECIBOS
			
			
			
			select
            Rec.Idempresa 
            , Rec.Idramo 
            , Rec.ReferenciaRecibo
            , Rec.Poliza
            , Rec.Estado
            , Rec.Situacion
            , Rec.FecEfecto
            , Rec.FecVencimiento
            , Rec.FactorPrimaRecibo
            , Rec.FrecuenciaPago
            , Rec.TipoRecibo
            , Rec2.Anualidad
            , Rec2.NumeroFraccion
            , Rec.Imputable
			, Rec.TipUnGes
			, Rec.FormaPago
        from
            XRECIBOS Rec
            LEFT JOIN
            V_XRECIBOS Rec2
            ON
                Rec.Idempresa = Rec2.IdEmpresa
                AND
                Rec.Idramo = Rec2.IdRamo
                AND
                Rec.ReferenciaRecibo = Rec2.ReferenciaRecibo
	where
			Rec.Idempresa in (1,3)
			and
			Rec.Idramo=1 
			AND
			Rec.FrecuenciaPago = 'P'
			AND
			Rec.Imputable = 1

--cumpleanos

select 
	ep.apolclav,
	FnacConductor,
	dateadd(year,2018-year(FnacConductor),FnacConductor) as FechaEstudio, --esto es trasponer el cumple al año actual -> componer con fecha?
	pol.FechaMovIni, pol.FechaMovFin, ep.FechaEntradaEstudio,
	01 as Tipo						--Antiguamente 5 pero cambio por CRM
from 
	PolizasEstudio ep
	join
	XPolizas pol 
	on
		ep.apolclav=pol.Apolclav
	where 
		dateadd(year,2018-year(FnacConductor),FnacConductor) >= pol.FechaMovini and dateadd(year,2018-year(FnacConductor),FnacConductor) <= pol.FechaMovFin
		and dateadd(year,2018-year(FnacConductor),FnacConductor) >= '2018-01-01' and dateadd(year,2018-year(FnacConductor),FnacConductor) <= '2018-05-15' 	
			
------

	select   AMMOVRE_ID_POLIZA,AMMOVRE_F_EFECTO,AMMOVRE_COD_MOVIM,AMMOVRE_DURACION,MAX(AMMOVRE_ID_SECUEN) as AMMOVRE_ID_SECUEN
			into Renting
			FROM TAMMOVRE 
			where AMMOVRE_COD_MOVIM in ('ALCN','PRTC','PROG','AMPL')
				and AMMOVRE_ID_POLIZA	<	8000000 --and AMMOVRE_ID_POLIZA=6916195	
				and AMMOVRE_ESTADO		<>	'A' 
			group by AMMOVRE_ID_POLIZA,AMMOVRE_F_EFECTO,AMMOVRE_COD_MOVIM,AMMOVRE_DURACION
			
	select count(*) from Renting		
			
	select M.AMMOVRE_ID_POLIZA,M.AMMOVRE_F_EFECTO,M.AMMOVRE_DURACION, 
				   REN.AMMOVRE_F_EFECTO as   AMMOVRE_F_EFECTO_2, REN.AMMOVRE_DURACION AS AMMOVRE_DURACION_2
			into RentingAcum 
			from Renting M
			left join Renting REN(nolock)
			on M.AMMOVRE_ID_POLIZA = REN.AMMOVRE_ID_POLIZA
			and M.AMMOVRE_F_EFECTO >= REN.AMMOVRE_F_EFECTO
		
	select count(*) from RentingAcum
	select * from RentingAcum
	
	
	SELECT AMMOVRE_ID_POLIZA,
		AMMOVRE_F_EFECTO,
		AMMOVRE_DURACION,
		SUM(AMMOVRE_DURACION_2) AS AMMOVRE_DURACION_TOTAL
			INTO RentingTotal
			FROM RentingAcum
			GROUP BY AMMOVRE_ID_POLIZA,AMMOVRE_F_EFECTO,AMMOVRE_DURACION
	select count(*) from RentingTotal --83407
			
			INSERT INTO RentingTotal 
			SELECT DISTINCT AMMOVRE_ID_POLIZA, '20501231', 0,0
			FROM RentingTotal --71550
			
	select count(*) from RentingTotal --154957
	
	--
	
	SELECT  AMMOVRE_ID_POLIZA,
			AMMOVRE_DURACION_TOTAL
			,F1.AMMOVRE_F_EFECTO as AMMOVRE_F_EFECTO_Ini
			,dateadd(dd,-1,F2.AMMOVRE_F_EFECTO) as AMMOVRE_F_EFECTO_Fin
			--into RentingPeriodos
			FROM RentingTotal F1 
			CROSS APPLY ( 
			 SELECT TOP ( 1 ) AMMOVRE_F_EFECTO
			 FROM   RentingTotal AS F  
			 WHERE   F1.AMMOVRE_ID_POLIZA=F.AMMOVRE_ID_POLIZA 
					and F1.AMMOVRE_F_EFECTO<F.AMMOVRE_F_EFECTO
			 ORDER BY F.AMMOVRE_F_EFECTO  
			 ) AS F2 --83047
			 
			 
	 SELECT TOP ( 1 ) AMMOVRE_F_EFECTO
		 FROM   RentingTotal AS F  
		 WHERE   F1.AMMOVRE_ID_POLIZA=F.AMMOVRE_ID_POLIZA 
			and F1.AMMOVRE_F_EFECTO<F.AMMOVRE_F_EFECTO
		 ORDER BY F.AMMOVRE_F_EFECTO
			 
 select AMMOVRE_ID_POLIZA,count(0), max(AMMOVRE_F_EFECTO)
	 FROM RentingTotal group by AMMOVRE_ID_POLIZA
		 
		 
select * from RentingTotal order by AMMOVRE_ID_POLIZA,AMMOVRE_F_EFECTO
/*
6024796	2011-06-29	48	48
6024796	2015-06-30	1	49
6024796	2015-07-29	1	50
6024796	2050-12-31	0	0
 */

select * from RentingPeriodos order by AMMOVRE_ID_POLIZA ,AMMOVRE_F_EFECTO_INI
/*
6024796	49		2015-07-28
6024796	48		2015-06-29
6024796	50		2050-12-30
*/


/*
6024797	48	2011-06-24	2015-06-24
6024797	49	2015-06-25	2015-07-28
6024797	50	2015-07-29	2050-12-30
 */

--calculo periodos sin cross apply
--paso1

drop table TmpRenting
select R1.AMMOVRE_ID_POLIZA,R1.AMMOVRE_F_EFECTO as AMMOVRE_F_EFECTO_Ini,
	dateadd(dd,-1,R2.AMMOVRE_F_EFECTO) as AMMOVRE_F_EFECTO_Fin,
	R1.AMMOVRE_DURACION, R1.AMMOVRE_DURACION_TOTAL
into tmpRenting
from RentingTotal R1
join RentingTotal R2
on R1.AMMOVRE_ID_POLIZA = R2.AMMOVRE_ID_POLIZA
and R1.AMMOVRE_F_EFECTO < R2.AMMOVRE_F_EFECTO
--group by R1.AMMOVRE_ID_POLIZA, AMMOVRE_F_EFECTO_Ini, AMMOVRE_F_EFECTO_Fin 
order by R1.AMMOVRE_ID_POLIZA, AMMOVRE_F_EFECTO_Ini

select * from TmpRenting
--paso2
select AMMOVRE_ID_POLIZA , AMMOVRE_F_EFECTO_Ini, min(AMMOVRE_F_EFECTO_Fin),AMMOVRE_DURACION_TOTAL from tmpRenting 
group by AMMOVRE_ID_POLIZA, AMMOVRE_F_EFECTO_Ini,AMMOVRE_DURACION_TOTAL
order by AMMOVRE_ID_POLIZA, AMMOVRE_F_EFECTO_Ini


select AMMOVRE_ID_POLIZA,count(0), min(AMMOVRE_F_EFECTO) as AMMOVRE_F_EFECTO_Fin
	 FROM RentingTotal group by AMMOVRE_ID_POLIZA --order by AMMOVRE_F_EFECTO_Fin asc

	
select * from TGRDESGL where GRDESGL_REF_RECIBO = '2.018.020.337.486'
--4258568	
	
/*
6024785	2011-08-09	36	36
6024785	2014-08-09	1	37
6024785	2014-09-09	1	38
6024785	2014-10-09	1	39
6024785	2014-11-09	1	40
6024785	2050-12-31	0	0
 */
	
	
	
select * from RECIBOSEXCLUIR b join TGRDESGL a on a.GRDESGL_REF_RECIBO=b.ReferenciaRecibo

select * from XRECIBOS a
join TGRDESGL b  on a.ReferenciaRecibo=b.GRDESGL_REF_RECIBO

select * from TGRRECIB b
join TGRDESGL a  on a.GRDESGL_REF_RECIBO=b.GRRECIB_REF_RECIBO


select * from TGRRECIB a
join TGRDESGL b  on a.GRRECIB_REF_RECIBO=b.GRDESGL_REF_RECIBO
join XRECIBOS c on a.GRRECIB_REF_RECIBO=c.ReferenciaRecibo

select * from TGRDESGL a 
join TGRRECIB b  on a.GRDESGL_REF_RECIBO=b.GRRECIB_REF_RECIBO
join XRECIBOS c on a.GRDESGL_REF_RECIBO=c.ReferenciaRecibo



select * from TGRDESGL
	
	
	
----------------------------------------

CREATE TABLE diarizacion_polizas2_modulos(
				[IdPeriodo] [bigint]NOT NULL,
				[Apolclav] [int] NOT NULL,
				[FechaEntrada] [date] NULL,
				[FIni] [date] NULL,
				[FFin] [date] NULL,
				[NDias] [int] NULL,
				[NPolizas] [decimal](10, 5) NULL,
				[SituacionPolizas] [varchar](1) NULL,
				[Producto] [varchar](4) NULL,
				[TipoPersona] [varchar](1) NULL,
				---Expuestos de garantia
				[RcObligatorio] [bit] null,
				[RcVoluntario] [bit]null,
				[DañosPropios] [bit] null,
				[Accidentes] [bit] null,
				[Robo][bit] null,
				[DefensaJuridica][bit] null,
				[Acm][bit] null,
				[Lunas][bit] null,
				[Incendios][bit] null,	
				[GarantiaMecanica] [bit] null,
				---Expuestos de garantia
				[IdEmpresa] [tinyint] not null,
				[Mediador] [varchar](9) null,
				[Renting]  [tinyint] null,
				[FrecuenciaPago] [tinyint] null,			
				[AntPoliza] [smallint] NULL,
				[AntPolizaEstudio] [smallint] NULL,
				[AntCarnetConductor] [smallint] NULL,
				[EdadTomador] [smallint] NULL,
				[EdadConductor] [smallint] NULL,
				[NifTomador] [varchar](10) NULL,
				[IdModelo] [int] NULL,
				[AntVehiculo] [smallint] NULL,
				[AñoConstruccion] [smallint] NULL,
				[SexoTomador] [varchar](1) NULL,
				[CodPostal] [varchar](5) NULL,
				[AntCarnetConductorOcasional] [smallint] NULL,
				[RelacionCROConductor][char](1) NULL,
				[EdadConductorOcasional][smallint] NULL,
				[SexoCROcasional][tinyint] NULL,
				[CapitalAsegurado] [decimal](9, 2) NULL,
				[Cambio_Caracteristica] [int] NULL,
				[Grupo] [int] NULL,
				[Año] [int] NULL,
				[PresenciaAsnef] [varchar](1) null,
				[RiskScore] [varchar](1) null,
				[SeverityScore] [varchar](1) null,
				[NumPlazas] [int] NULL,
				[Peso] [int] NULL,
				[AñoAdquisicion] [smallint] NULL,
				[CondHabitual] [bit] NULL,
				[UsoVehiculo]  [varchar](4) null,
				[codCoefBonificacion]  [varchar](8) null,
				[NivelBonificacion] [smallint] NULL
				
			) ON [PRIMARY]
			WITH (DATA_COMPRESSION = NONE)

-----------------------

--insert into diarizaciones.autos.diarizacion_polizas2_modulos with (tablock)

	declare @ProfundidadEstudio smalldatetime
	set @ProfundidadEstudio='2018-01-01'
			
		select 
			PerEst.IdPeriodo,
			PerEst.Apolclav,
			xpol.FechaEntrada,
			PerEst.FIni,
			PerEst.FFin,
			datediff(day,PerEst.Fini,PerEst.Ffin)+1 as NDias, 
			cast(cast(datediff(day,Fini,Ffin)+1 as decimal(10,5))/(datediff(day,cast(year(Fini) as varchar(4))+'0101',cast(year(Fini) as varchar(4))+'1231')+1)  as decimal(10,5)) as NPolizas, 
			xpol.SitPoliza as SituacionPolizas,
			xpol.Producto,
			xpol.TipoPersona,
			MAX(case	
				--En el caso de llegar hasta Pg en esta sentencia es debido a 
				--Que el recibo no tiene desglose (pero si existe el recibo),
				--porque recibo cruza con PG, entonces Recibo Si Desglose NO
					when isnull(DESG.GRDESGL_COD_GARAN,PG.RCObligatorio*1)=1 then 1
					else 0
				end) as RcObligatorio,
			MAX(case	
					when isnull(DESG.GRDESGL_COD_GARAN,PG.RCVoluntario*2) =2 then 1
					else 0
				end) as RcVoluntario,
			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,PG.DañosPropios*3)=3 then 1
					else 0
				end) as DañosPropios,
			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,PG.Accidentes*4)=4 then 1
					else 0
				end) as Accidentes,
			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,PG.Robo*5)=5 then 1
					else 0
				end) as Robo,
			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,PG.DefensaJuridica*6)=6 then 1
					else 0
				end) as DefensaJuridica,
			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,PG.Acm*7)=7 then 1
					else 0
				end) as Acm,
			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,PG.Lunas*8)=8 then 1
					else 0
				end) as Lunas,
			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,PG.Incendio*9)=9 then 1
					else 0
				end) as Incendios,	
			--Esta garantia no entra en la tabla auxiliar de garantias por producto
			--al ser de nueva generacion
			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,0)=10	then 1
					else 0
				end) as GarantiaMecanica,
			--En funcion de la empresa, el id de mediador es diferente 
			xpol.idempresa as IdEmpresa,			
			--MEDIADOR
			cast(case
				--La poliza pertenece a una flota mediada
				when (xpc.colectivo<>'0' or xpc.flota<>'0') and MED.IdPersonalComercial is not null
					-- then convert(varchar,xpol.idempresa)+ convert (varchar(9),MED.IdPersonalComercial)
					--Cuando tenemos información del mediador cogemos la empresa del mediador
					--existen polizas con distinta empresa que su mediador
					then convert(varchar,MED.idempresa)+ convert (varchar(8),MED.IdPersonalComercial)
				else '0'--Colectivo=0 and flota=0
			end as varchar(9))
			as Mediador,
			case	when isnull(neg.IdTipoSubNegocio,'') = 'FL' then
						case	when isnull(datediff(m, xpol.FechaEntrada,tau.audacon_ffin_contr),0) > 96 then 99 -- "No Aplica"
								when isnull(datediff(m, xpol.FechaEntrada,tau.audacon_ffin_contr),0) < 0  then 99 -- "No Aplica"
								else isnull(datediff(m, xpol.FechaEntrada,tau.audacon_ffin_contr),0)
						end
					when isnull(neg.IdTipoSubNegocio,'') = 'RT'	then
						case when xpol.IdEmpresa = 3 then isnull(AMMOVRE_DURACION_TOTAL,0)
							else isnull(xpol.DuracionContratoRenting,0)*12  -- lo pasamos a meses
						end
				else 0 --Si no es ni 'FL' ni 'RT'.
			end			as Renting,

			--Frecuencia de Pago, se obtienen a partir de los recibos.
			MAX(
				case 
					when Rec.GRRECIB_FREC_PAGO='A' then 1
					when Rec.GRRECIB_FREC_PAGO='S' then 2
					when Rec.GRRECIB_FREC_PAGO='T' then 3
					when Rec.GRRECIB_FREC_PAGO='M' then 4
					when Rec.GRRECIB_FREC_PAGO='P' then 5
					--Caso en el que dicho periodo no tiene recibo.
					else 1
				end) as FrecuenciaPago,
			
			cast(case 
					when day(Fini)>=day(xpol.FechaEntrada) then (datediff(month,xpol.FechaEntrada,Fini)/12)
					else ((datediff(month,xpol.FechaEntrada,Fini)-1)/12)
				 end as smallint) as AntPoliza,
			cast(case
					when day(Fini)>=day(FechaEntradaEstudio) then (datediff(month,FechaEntradaEstudio,Fini)/12)
					else ((datediff(month,FechaEntradaEstudio,Fini)-1)/12)
				 end as smallint) as AntPolizaEstudio,
			cast(case 
					when day(Fini)>=day(Frt) then (datediff(month,Frt,Fini)/12)
					else ((datediff(month,Frt,Fini)-1)/12)
				 end as smallint) as AntCarnetConductor,
			cast(case 
					when day(Fini)>=day(FnacTomador) then (datediff(month,FnacTomador,Fini)/12)
					else ((datediff(month,FnacTomador,Fini)-1)/12)
				 end as smallint) as EdadTomador,
			cast(case 
					when day(Fini)>=day(FnacConductor) then (datediff(month,FnacConductor,Fini)/12)
					else ((datediff(month,FnacConductor,Fini)-1)/12)
				 end as smallint) as EdadConductor,
			NifTomador,
			idmodelo,
			cast(case 
					when day(Fini)>=day(FechaConstruccion) then (datediff(month,FechaConstruccion,Fini)/12)
					else ((datediff(month,FechaConstruccion,Fini)-1)/12)
				 end as smallint) as AntVehiculo,		
			añoconstruccion,
			SexoTomador,
			codPostal,
			cast(case 
					when FRTCROcasional is null then null
					when day(Fini)>=day(FRTCROcasional) then (datediff(month,FRTCROcasional,Fini)/12)
					else ((datediff(month,FRTCROcasional,Fini)-1)/12)
				 end as smallint)    as AntCarnetConductorOcasional,
				 
			RelacionCROConductor	 as RelacionCROConductor,
			
			cast(case 
					when FNacCROcasional IS null then null
					when day(Fini)>=day(FNacCROcasional) then (datediff(month,FNacCROcasional,Fini)/12)
					else ((datediff(month,FNacCROcasional,Fini)-1)/12)
				 end as smallint)   as EdadConductorOcasional,
			
			case when SexoCROcasional='M' then 2 
			when  SexoCROcasional='H' then 1 
			else SexoCROcasional end	as SexoCROcasional,
			cast(
				case
					when ValorVehiculo>9000000 then 9000000
					else ValorVehiculo
				end
				+
				ValorAccesorios as decimal(9,2)) as CapitalAsegurado,
			Perest.cambio_caracteristica,
			Perest.Grupo,
			Perest.faño as Año,
			xpol.PresenciaAsnef,
			xpol.RiskScore,
			xpol.SeverityScore,
			xpol.NumPlazas,
			xpol.Peso,
			xpol.AñoAdquisicion,
			xpol.CondHabitual,
			case when xpol.UsoVehiculo='1050' then '105' else xpol.UsoVehiculo end UsoVehiculo, --RH 15/10/2015
			xpol.codCoefBonificacion,
			xpol.NivelBonificacion
		from PeriodosEstudioGrupos PerEst
			inner join xpolizas xpol --si un registro no tiene movimientos en polizas es que no nos interesa lo perdemos en el join 
				on PerEst.apolclav=xpol.apolclav 
				and PerEst.FIni between xpol.FechaMovIni 
				and xpol.FechaMovFin
			
			-- 13/10/2015
			left join taudacon tau 
				on xpol.idSolicitud	= tau.AUDACON_ID_SOLICIT
				and xpol.IdEmpresa	= tau.AUDACON_ID_EMPRESA
				and 1				= tau.AUDACON_ID_RAMO
				and year(tau.audacon_ffin_contr) not in (0001,1900)
				and tau.AUDACON_SER_DES_VE in ('A', 'B')-- Renting tenencia, Renting propiedad.
			
			left join NEGOCIOS_HISTORICO neg 
				on xpol.idNegocio = neg.idnegocio
				
			inner join (	
				select 
					cast(case 
						when FechaEntrada<@ProfundidadEstudio then cast(year(@ProfundidadEstudio)*10000+
								case 	
									when month(fechaentrada)*100+day(fechaentrada)=0229 then 0301 
									else month(fechaentrada)*100+day(fechaentrada) 
								end  as varchar(8))
						else FechaEntrada
 						end as smalldatetime) as FechaEntradaEstudio
					,*
				from 	xpolizas_comun
				) xpc
				on xpol.apolclav=xpc.apolclav
			
			--Cruce para Mediador de Flotas	
			LEFT JOIN TUCNEGME TUC --dw_autos..TUCNEGME TUC 
				ON case
					when xpc.Flota='0' then xpc.Colectivo
					else xpc.Flota
				end = TUC.UCNEGME_ID_NEGOCIO 
				and TUC.UCNEGME_F_ALTA <= PerEst.FIni    			  --Lo cruzamos con la fecha de inicio del periodo
				and ISNULL(TUC.UCNEGME_F_BAJA,'20501231')  > PerEst.FIni  --De esta manera sabemos que en ese momento existia el mediador
			
			--Codigo de Mediadores
			LEFT JOIN XESTRCOMER_PERSONAL MED 
				ON MED.IdPersonalComercial = TUC.UCNEGME_ID_MEDIADO 
				AND MED.IdEmpresa = TUC.UCNEGME_ID_EMPRESA 
				AND MED.FecDesde <= PerEst.Fini 
				AND MED.FecHasta > PerEst.Fini 		
			
			left join TGRRECIB REC--dw_mutua_m..TGRRECIB REC
				on REc.GRRECIB_ID_ADHES=xpol.Apolclav    
				and REc.GRRECIB_EMPRESA=xpol.IdEmpresa	  
				-- Para la fecha de vencimiento tenemos en cuenta los suplementos diferidos (hay que añadirle un año)
				and REC.GRRECIB_FECH_EFE<=PerEst.Fini	  
				and case
						when  Rec.GRRECIB_TIP_RECI='010' and	Rec.GRRECIB_FECH_EFE=Rec.GRRECIB_FECH_VENC then DATEADD(DAY,365,REC.GRRECIB_FECH_VENC)
						else  REC.GRRECIB_FECH_VENC
					end> PerEst.Fini	  									
				and Rec.GRRECIB_ESTADO='EM'--  Solo cogemos recibos emitidos y que no sean devueltos o negativos!
				and Rec.GRRECIB_ESTADO_COB in ('PC','FC','PPC')  
				--and REc.GRRECIB_RAMO=1 
				and Rec.GRRECIB_TIP_RECI<>'008'
			
			left join TGRDESGL DESG --dw_mutua_m..TGRDESGL DESG
				on DESG.GRDESGL_REF_RECIBO=REC.GRRECIB_REF_RECIBO 
				and DESG.GRDESGL_EMPRESA=REC.GRRECIB_EMPRESA and
				--DESG.GRDESGL_RAMO=1 and
				--Solo cogemos desgloses positivos
				DESG.GRDESGL_IMPORTE>0 and
				--Solo cogemos desgloses de los valores que se cuentan para prima!
				DESG.GRDESGL_COD_DESGL in (1,14,17)
			
			left join ProductosGarantias PG
				on REC.GRRECIB_PRODUCTO=PG.Producto
			
			--left join  RentingPeriodos REN
				--on REN.AMMOVRE_ID_POLIZA=PerEst.apolclav 
				--and PerEst.FIni between REN.AMMOVRE_F_EFECTO_Ini 
				--and REN.AMMOVRE_F_EFECTO_Fin

		where PerEst.FIni>=@InicioEstudio  --cogemos recibos que nos entren en el estudio 
			and PerEst.FIni<= @finestudio

		group by
			PerEst.IdPeriodo,
			PerEst.Apolclav,
			xpol.FechaEntrada,
			PerEst.FIni,
			PerEst.FFin,
			xpol.SitPoliza ,
			xpol.Producto,
			xpol.TipoPersona,
			xpol.FechaEntrada,
			FechaEntradaEstudio,
			Frt,
			Fini,
			FnacTomador,
			FnacConductor,
			FRTCROcasional,
			RelacionCROConductor,
			FNacCROcasional,
			SexoCROcasional,
			NifTomador,
			idmodelo,
			FechaConstruccion,		
			añoconstruccion,
			SexoTomador,
			codPostal,
			ValorVehiculo,
			ValorAccesorios ,
			Perest.cambio_caracteristica,
			Perest.Grupo,
			xpc.colectivo,
			xpc.flota,
			MED.IdPersonalComercial,
			xpol.DuracionContratoRenting,
			REN.AMMOVRE_DURACION_TOTAL,			
			PerEst.Faño,
			xpol.IdEmpresa,
			MED.idempresa,
			xpol.PresenciaAsnef,
			xpol.RiskScore,
			xpol.SeverityScore,
			xpol.NumPlazas,
			xpol.Peso,
			xpol.AñoAdquisicion,
			xpol.CondHabitual,
			xpol.UsoVehiculo, 
			xpol.codCoefBonificacion,
			xpol.NivelBonificacion,
			neg.IdTipoSubNegocio,
			tau.audacon_ffin_contr			
			

		
		
select * from XPOLIZAS





CREATE TABLE periodosrecibos (
    "Idempresa" text NULL,
    "Idramo" text NULL,
    "ReferenciaRecibo" text NULL,
    "Poliza" text NULL,
    "Estado" text NULL,
    "Situacion" text NULL,
    "FecEfecto" text NULL,
    "FecVencimiento" text NULL,
    "FactorPrimaRecibo" text NULL,
    "FrecuenciaPago" text NULL,
    "TipoRecibo" text NULL,
    "Anualidad" text NULL,
    "NumeroFraccion" text NULL,
    "Imputable" text NULL,
    "TipUnGes" text NULL,
    "FormaPago" text NULL
);


select * from periodosperiodosrecibosrecibos
select * from TGRDESGL



select count(*)
from
			periodosestudiogrupos Per
			join
			periodosrecibos Rec
on 				CAST(Rec.Poliza AS INT)=CAST(Per.apolclav AS INT) 

select CAST("Poliza" AS VARCHAR) from periodosrecibos order by CAST("Poliza" AS VARCHAR) asc 
select CAST("apolclav" AS VARCHAR) from periodosestudiogrupos order by CAST("apolclav" AS VARCHAR) asc

----
select count(*) from periodosestudiogrupos

select * from TGRDESGL where GRDESGL_IMPORTE > 0

select poliza from xrecibos
select * from periodosestudiogrupos where GRDESGL_IMPORTE > 0
--update periodosestudiogrupos set apolclav ='666'
select * from TGRDESGL where GRDESGL_IMPORTE > 0

alter table periodosrecibos
alter column FecEfecto DATE
alter table periodosrecibos
alter column FecVencimiento DATE

select ReferenciaRecibo from periodosrecibos

select Rec.FecEfecto, Per.FIni, Rec.FecVencimiento,Rec.ReferenciaRecibo from
			periodosestudiogrupos Per
			join
			periodosrecibos Rec
			on
				Rec.FecEfecto<=Per.FIni and
				--Rec.FecVencimiento>Per.FIni and             
				 Rec.Poliza = Per.apolclav
			join
			TGRDESGL Desg				
			on
				Desg.GRDESGL_REF_RECIBO = Rec.ReferenciaRecibo --and
				--Desg.GRDESGL_RAMO=Rec.IdRamo and
				--Desg.GRDESGL_EMPRESA=Rec.Idempresa 
				--and Desg.GRDESGL_COD_DESGL in (1,14,17)
				 
select poliza from periodosrecibos order by poliza desc
update periodosrecibos set poliza = 666 where poliza = 8402237
update periodosestudiogrupos set apolclav = 666 where apolclav = 1024198
select apolclav from periodosestudiogrupos order by apolclav desc

				 
