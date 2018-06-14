declare @ProfundidadEstudio SMALLDATETIME
declare @InicioEstudio SMALLDATETIME
declare @finEstudio SMALLDATETIME
set @ProfundidadEstudio = '2018-01-01'
set @InicioEstudio = '2018-01-01'
set @finEstudio = '2018-01-01'

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

			MAX(case
					when isnull(DESG.GRDESGL_COD_GARAN,0)=10	then 1
					else 0
				end) as GarantiaMecanica,
			xpol.idempresa as IdEmpresa,			
			cast(case
				when (xpc.colectivo<>'0' or xpc.flota<>'0') and MED.IdPersonalComercial is not null
					then convert(varchar,MED.idempresa)+ convert (varchar(8),MED.IdPersonalComercial)
				else '0'
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
				else 0 
			end		as Renting,

			MAX(
				case 
					when Rec.GRRECIB_FREC_PAGO='A' then 1
					when Rec.GRRECIB_FREC_PAGO='S' then 2
					when Rec.GRRECIB_FREC_PAGO='T' then 3
					when Rec.GRRECIB_FREC_PAGO='M' then 4
					when Rec.GRRECIB_FREC_PAGO='P' then 5
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
			inner join xpolizas xpol  
				on CAST(PerEst.apolclav AS INT)=xpol.apolclav 
				and PerEst.FIni between xpol.FechaMovIni 
				and xpol.FechaMovFin
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
			LEFT JOIN TUCNEGME TUC  
				ON case
					when xpc.Flota='0' then xpc.Colectivo
					else xpc.Flota
				end = TUC.UCNEGME_ID_NEGOCIO 
				and TUC.UCNEGME_F_ALTA <= PerEst.FIni  
				and ISNULL(TUC.UCNEGME_F_BAJA,'20501231')  > PerEst.FIni 
			LEFT JOIN XESTRCOMER_PERSONAL MED 
				ON MED.IdPersonalComercial = TUC.UCNEGME_ID_MEDIADO 
				AND MED.IdEmpresa = TUC.UCNEGME_ID_EMPRESA 
				AND MED.FecDesde <= PerEst.Fini 
				AND MED.FecHasta > PerEst.Fini 		
			left join TGRRECIB REC
				on REc.GRRECIB_ID_ADHES=xpol.Apolclav    
				and REc.GRRECIB_EMPRESA=xpol.IdEmpresa	  
				and REC.GRRECIB_FECH_EFE<=PerEst.Fini	  
				and case
						when  Rec.GRRECIB_TIP_RECI='010' and	Rec.GRRECIB_FECH_EFE=Rec.GRRECIB_FECH_VENC then DATEADD(DAY,365,REC.GRRECIB_FECH_VENC)
						else  REC.GRRECIB_FECH_VENC
					end> PerEst.Fini	  									
				and Rec.GRRECIB_ESTADO='EM'
				and Rec.GRRECIB_ESTADO_COB in ('PC','FC','PPC')  
				and Rec.GRRECIB_TIP_RECI<>'008'
			left join TGRDESGL DESG 
				on DESG.GRDESGL_REF_RECIBO=REC.GRRECIB_REF_RECIBO 
				and DESG.GRDESGL_EMPRESA=REC.GRRECIB_EMPRESA and
				DESG.GRDESGL_IMPORTE>0 and
				DESG.GRDESGL_COD_DESGL in (1,14,17)
			left join ProductosGarantias PG
				on REC.GRRECIB_PRODUCTO=PG.Producto
			--left join RentingPeriodos REN
				--on REN.AMMOVRE_ID_POLIZA=PerEst.apolclav 
				--and PerEst.FIni between REN.AMMOVRE_F_EFECTO_Ini 
				--and REN.AMMOVRE_F_EFECTO_Fin
		where PerEst.FIni>=@InicioEstudio   
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
			
			
select * from periodosestudiogrupos