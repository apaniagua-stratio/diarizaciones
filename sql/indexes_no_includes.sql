
--

CREATE UNIQUE INDEX  ix1  ON  diarizacion.TGRRECIB 
(
	 GRRECIB_REF_RECIBO  ASC,
	 GRRECIB_RAMO  ASC,
	 GRRECIB_EMPRESA  ASC
)

;
CREATE UNIQUE INDEX  ix2  ON  diarizacion.TGRRECIB 
(
	 GRRECIB_RAMO  ASC,
	 GRRECIB_EMPRESA  ASC,
	 GRRECIB_REF_RECIBO  ASC
)

;
CREATE UNIQUE INDEX  ix3  ON  diarizacion.TGRRECIB 
(
	 GRRECIB_FECH_EFE  ASC,
	 GRRECIB_RAMO  ASC,
	 GRRECIB_EMPRESA  ASC,
	 GRRECIB_REF_RECIBO  ASC
)

;
CREATE INDEX  ix4  ON  diarizacion.TGRRECIB 
(
	 GRRECIB_NUM_POLIZA  ASC,
	 GRRECIB_RAMO  ASC,
	 GRRECIB_EMPRESA  ASC,
	 GRRECIB_REF_RECIBO  ASC
)

;
CREATE INDEX  ix5  ON  diarizacion.TGRRECIB 
(
	 GRRECIB_ID_ADHES  ASC,
	 GRRECIB_RAMO  ASC,
	 GRRECIB_EMPRESA  ASC,
	 GRRECIB_REF_RECIBO  ASC
)

;
CREATE INDEX  ix6  ON  diarizacion.TGRRECIB 
(
	 GRRECIB_ID_COLECT  ASC,
	 GRRECIB_RAMO  ASC,
	 GRRECIB_EMPRESA  ASC
)

;
CREATE INDEX  IXFC  ON  diarizacion.TGRRECIB 
(
	 F_CARGA  ASC,
	 GRRECIB_RAMO  ASC,
	 GRRECIB_EMPRESA  ASC
)

;
CREATE INDEX  IX_TAMMOVRE  ON  diarizacion.TAMMOVRE 
(
	 F_CARGA  ASC
)

;
CREATE INDEX  IX_TAMMOVRE_1  ON  diarizacion.TAMMOVRE 
(
	 FEC_GENERACION  ASC
)

;
CREATE INDEX  IDX_F_CARGA  ON  diarizacion.TUCNEGME 
(
	 F_CARGA  ASC
)

;
CREATE INDEX  IX_XPOLIZAS_COMUN_3  ON  diarizacion.XPOLIZAS_COMUN 
(
	 IdEmpresa  ASC,
	 apolclav  ASC,
	 IdNegocio  ASC
)

;
CREATE INDEX  IX_XPOLIZAS_COMUN_5  ON  diarizacion.XPOLIZAS_COMUN 
(
	 IdEmpresa  ASC,
	 apolclav  ASC,
	 IdNegocio  ASC
)

;
CREATE INDEX  IX_XPOLIZAS_COMUN2_2  ON  diarizacion.XPOLIZAS_COMUN 
(
	 F_carga  ASC
)
;

CREATE INDEX  IX_XPOLIZAS_COMUN2_3  ON  diarizacion.XPOLIZAS_COMUN 
(
	 FechaContratacion  ASC
)
;

CREATE INDEX  IX_XPOLIZAS_COMUN2_4  ON  diarizacion.XPOLIZAS_COMUN 
(
	 Colectivo  ASC
)

;
CREATE NONCLUSTERED INDEX  ix1  ON  diarizacion.XPOLIZAS_COMUN 
(
	 FechaEntrada  ASC
)
;

CREATE INDEX  ix1_flotas  ON  diarizacion.XPOLIZAS_COMUN 
(
	 Flota  ASC
)

;
CREATE INDEX  ixFCarga  ON  diarizacion.XPOLIZAS_COMUN 
(
	 F_carga  ASC
)

;
CREATE INDEX  ixfi  ON  diarizacion.XPOLIZAS_COMUN 
(
	 FechaImputacion  ASC
)
;
CREATE INDEX  ixneg  ON  diarizacion.XPOLIZAS_COMUN 
(
	 IdNegocio  ASC,
	 apolclav  ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
;

CREATE INDEX  IX_xpolizas_apolclav_fechaMovini  ON  diarizacion.xpolizas 
(
	 Apolclav  ASC,
	 FechaMovini  ASC
)
INCLUDE ( 	 IdEmpresa ,
	 idSolicitud ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
;
CREATE INDEX  IX_XPOLIZAS_INCLUDE  ON  diarizacion.xpolizas 
(
	 SitPoliza  ASC,
	 NifTomador  ASC,
	 FechaMovini  ASC,
	 FechaMovFin  ASC
)
INCLUDE ( 	 FechaEntrada ) WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80)  
;
CREATE INDEX  IX_XPOLIZAS_SitPoliza  ON  diarizacion.xpolizas 
(
	 SitPoliza  ASC
)
INCLUDE ( 	 FechaEntrada ,
	 FechaMovini ,
	 FechaMovFin ,
	 NifTomador ) WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80)  
;
CREATE INDEX  ixFCarga  ON  diarizacion.xpolizas 
(
	 F_carga  ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70)  

;
CREATE INDEX  ixFecEntrada  ON  diarizacion.xpolizas 
(
	 FechaEntrada  ASC
)
;

CREATE INDEX  ixFechaMovFinIdNegocio  ON  diarizacion.xpolizas 
(
	 FechaMovFin  ASC,
	 IdNegocio  ASC
)

;
CREATE INDEX  ixFecMovIniFecMovFinSitPoliza  ON  diarizacion.xpolizas 
(
	 FechaMovini  ASC,
	 FechaMovFin  ASC,
	 SitPoliza  ASC
)
;

CREATE INDEX  ixMatriculaApolClav  ON  diarizacion.xpolizas 
(
	 Matricula  ASC,
	 Apolclav  ASC
)
;

CREATE INDEX  ixModelo  ON  diarizacion.xpolizas 
(
	 IdModelo  ASC
)

;
CREATE INDEX  ixNifTomador  ON  diarizacion.xpolizas 
(
	 NifTomador  ASC
)

;
CREATE INDEX  ixNegociosHistorico  ON  negocios.NEGOCIOS_HISTORICO 
(
	 IdEmpresa  ASC,
	 ClaveNegocio  ASC,
	 FecDesde  ASC,
	 FecHasta  ASC
)
;

CREATE INDEX  ixClaveNegocio  ON  negocios.NEGOCIOS_HISTORICO 
(
	 ClaveNegocio  ASC,
	 FecDesde  ASC,
	 FecHasta  ASC
)
;

CREATE INDEX  ixEstado  ON  negocios.NEGOCIOS_HISTORICO 
(
	 IdEstadoNegocio  ASC
)
;

CREATE INDEX  ixFCarga  ON  negocios.NEGOCIOS_HISTORICO 
(
	 F_Carga  ASC
)
;

CREATE INDEX  ixFecAlta  ON  negocios.NEGOCIOS_HISTORICO 
(
	 FecAlta  ASC
)

;
CREATE INDEX  ixIdNegocio_Fechas  ON  negocios.NEGOCIOS_HISTORICO 
(
	 IdNegocio  ASC,
	 FecDesde  ASC,
	 FecHasta  ASC
)

;
CREATE INDEX  ixIdTipoNegocio  ON  negocios.NEGOCIOS_HISTORICO 
(
	 IdTipoNegocio  ASC
)

;
CREATE INDEX  ixRedComercialNegocio  ON  negocios.NEGOCIOS_HISTORICO 
(
	 IdRedComercialNegocios  ASC
)

;
CREATE INDEX  IX_F_CARGA  ON  diarizacion.XESTRCOMER_PERSONAL 
(
	 F_Carga  ASC
)

;
CREATE INDEX  IX_XESTRCOMER_PERSONAL_3  ON  diarizacion.XESTRCOMER_PERSONAL 
(
	 IdPersonalComercial  ASC,
	 FecDesde  ASC,
	 FecHasta  ASC
)
;

CREATE INDEX  ix1  ON  diarizacion.XRECIBOS 
(
	 FecImputacion  ASC
)

;
CREATE INDEX  ix_fc  ON  diarizacion.XRECIBOS 
(
	 F_Carga  ASC
)

;
CREATE INDEX  ix1_N  ON  diarizacion.XRECIBOS 
(
	 FecImputacion  ASC,
	 FecEmision  ASC,
	 F_Carga  ASC
)

;
CREATE INDEX  ix1_N2  ON  diarizacion.XRECIBOS 
(
	 Idempresa  ASC,
	 FecEmision  ASC,
	 F_Carga  ASC
)

;
CREATE INDEX  ix4  ON  diarizacion.XRECIBOS 
(
	 FecEfecto  ASC,
	 FecVencimiento  ASC
)

;
CREATE INDEX  ix5  ON  diarizacion.XRECIBOS 
(
	 FecEmision  ASC
)
;

CREATE INDEX  ix6  ON  diarizacion.XRECIBOS 
(
	 Situacion  ASC,
	 Estado  ASC,
	 EstadoCobro  ASC
)

;
CREATE INDEX  ix7  ON  diarizacion.XRECIBOS 
(
	 Poliza  ASC,
	 Idramo  ASC,
	 Idempresa  ASC
)
;

/*
CREATE INDEX  IX_POLIZAS_DIARIZADAS_1  ON  autos.Diarizacion_Polizas 
(
	 FIni  ASC,
	 Apolclav  ASC
)
;

CREATE INDEX  IX_POLIZAS_DIARIZADAS_2  ON  autos.Diarizacion_Polizas 
(
	 IdPeriodo  ASC
)
;

CREATE INDEX  IX_POLIZAS_DIARIZADAS_3  ON  autos.Diarizacion_Polizas 
(
	 FIni  ASC
)

;
CREATE INDEX  IX_POLIZAS_DIARIZADAS_4  ON  autos.Diarizacion_Polizas 
(
	 Apolclav  ASC,
	 FIni  ASC,
	 FFin  ASC
)

;
CREATE INDEX  IX_POLIZAS_DIARIZADAS_5  ON  autos.Diarizacion_Polizas 
(
	 SituacionPolizas  ASC
)

;
CREATE INDEX  IX_MegaDiarizacion_Primas1  ON  autos.Diarizacion_Primas 
(
	 FechaEfe  ASC
)

;
CREATE INDEX  IX_MegaDiarizacion_Primas2  ON  autos.Diarizacion_Primas 
(
	 IdPeriodo  ASC
)
*/


--indices para claves de particionamient



