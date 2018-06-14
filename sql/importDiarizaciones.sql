

------------------------------------------------
---CREACION TABLAS USADAS

CREATE TABLE [dbo].[MESES](
     [Autonumerico] [int] NOT NULL
     ,[FECHA] [datetime] NOT NULL
     ,[Fecha_Conv] [int] NOT NULL
     ,[FECHA2] [datetime] NOT NULL
     ,[InicioMes] [datetime] NULL
     ,[FinMes] [datetime] NULL
)

------------------------------------------------

CREATE TABLE [dbo].[NEGOCIOS_HISTORICO](
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

------------------------------------------

CREATE TABLE [dbo].[PRODUCTOSGARANTIAS](
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

-----------------------------------------

CREATE TABLE [dbo].[RECIBOSEXCLUIR](
     [ReferenciaRecibo] [decimal](13, 0) NOT NULL
     ,[F_carga] [smalldatetime] NOT NULL
)

-----------------------------------------

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

---------------------------------------------

CREATE TABLE [dbo].[TAUDACON](
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

-------------------------------------------

CREATE TABLE [dbo].[TGRDESGL](
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

---------------------------------------------

CREATE TABLE [dbo].[TGRRECIB](
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

---------------------------------------

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

----------------------------------------

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

------------------------------------------

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

------------------------------------------

CREATE TABLE [dbo].[XPOLIZAS](
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

----------------------------------

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

-------------------------------------

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


--CREACION TABLAS SALIDA

CREATE TABLE [Diarizacion_Polizas](
	[IdPeriodo] [bigint] NOT NULL,
	[Apolclav] [int] NOT NULL,
	[FechaEntrada] [date] NULL,
	[FIni] [date] NULL,
	[FFin] [date] NULL,
	[NDias] [int] NULL,
	[NPolizas] [decimal](10, 5) NULL,
	[SituacionPolizas] [varchar](1) NULL,
	[Producto] [varchar](4) NULL,
	[TipoPersona] [varchar](1) NULL,
	[RcObligatorio] [bit] NULL,
	[RcVoluntario] [bit] NULL,
	[DañosPropios] [bit] NULL,
	[Accidentes] [bit] NULL,
	[Robo] [bit] NULL,
	[DefensaJuridica] [bit] NULL,
	[Acm] [bit] NULL,
	[Lunas] [bit] NULL,
	[Incendios] [bit] NULL,
	[GarantiaMecanica] [bit] NULL,
	[IdEmpresa] [tinyint] NOT NULL,
	[Mediador] [varchar](9) NULL,
	[Renting] [tinyint] NULL,
	[FrecuenciaPago] [tinyint] NULL,
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
	[RelacionCROConductor] [char](1) NULL,
	[EdadConductorOcasional] [smallint] NULL,
	[SexoCROcasional] [tinyint] NULL,
	[CapitalAsegurado] [decimal](9, 2) NULL,
	[Cambio_Caracteristica] [int] NULL,
	[Grupo] [int] NULL,
	[Año] [int] NULL,
	[PresenciaAsnef] [varchar](1) NULL,
	[RiskScore] [varchar](1) NULL,
	[SeverityScore] [varchar](1) NULL,
	[NumPlazas] [int] NULL,
	[Peso] [int] NULL,
	[AñoAdquisicion] [smallint] NULL,
	[CondHabitual] [bit] NULL,
	[UsoVehiculo] [varchar](4) NULL,
	[codCoefBonificacion] [varchar](8) NULL,
	[NivelBonificacion] [smallint] NULL
)


CREATE TABLE [Diarizacion_Primas](
        [IdPeriodo] [bigint] NOT NULL,
        [Cambio_Caracteristica] [int] NULL,
        [Grupo] [int] NULL,
        [Año] [int] NULL,
        [FrecuenciaPago] [tinyint] NULL,
        [RefRecibo] [decimal](13, 0) NULL,
        [Garantia] [tinyint] NULL,
        [FechaEfe] [date] NULL,
        [FechaHas] [date] NULL,
        [Prima] [decimal](9, 4) NULL,
        [TipoRecibo] [varchar](3) NULL,
        [TipUnGes] [varchar](1) NULL,
        [FormaPago] [varchar](1) NULL,
        [Apolclav] [int] NULL
)


---IMPORTACION DE DATOS 
---ruta dentro de container mapeada al volumen: /var/lib/docker/volumes/sql1data/_data

BULK INSERT [dbo].[XPOLIZAS_COMUN]
FROM '/var/opt/mssql/XPOLIZAS_COMUN_20180407.dat'
WITH
(
   FIRSTROW = 2,
   FIELDTERMINATOR = '~',  --CSV field delimiter
   ROWTERMINATOR = '\n',   --Use to shift the control to next row
   TABLOCK
);








