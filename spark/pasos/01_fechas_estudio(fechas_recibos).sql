BEGIN 

	declare @fechadiarizacion datetime = CONVERT(datetime, :fechadiarizacion, 126);
	declare @InicioEstudio datetime = convert(varchar(4),year(@fechadiarizacion))+'0101';
	declare @FinEstudio datetime = @fechadiarizacion
	declare @TipoEstudio varchar(50) = 'MENSUAL'
	declare @ProfundidadEstudio smalldatetime = @InicioEstudio
	declare @DiaDespues datetime = dateadd(day,1,@FinEstudio)
	
	select 
		ep.apolclav,
		case
			when Rec.GRRECIB_FECH_VENC between ep.FechaEntradaEstudio and @FinEstudio then
				case 	when Rec.GRRECIB_FECH_VENC=Rec.GRRECIB_FECH_EFE  then 
							case 	when Rec.GRRECIB_TIP_RECI='010' then dateadd(day,365,Rec.GRRECIB_FECH_EFE)
									else DATEADD(day,1,Rec.GRRECIB_FECH_VENC)
							end
						else Rec.GRRECIB_FECH_VENC
				end
			else Rec.GRRECIB_FECH_EFE
		end as FechaEstudio,
		case
			when Rec.GRRECIB_FECH_VENC between ep.FechaEntradaEstudio and @FinEstudio then 
				case 	when Rec.GRRECIB_FECH_VENC=Rec.GRRECIB_FECH_EFE  then 
							case 	when Rec.GRRECIB_TIP_RECI='010' then 23
									else 20
							end
						else 20
				end
			else 21 
		end as Tipo
	from 
		 --dw_mutua_m.dbo.TGRRECIB Rec
		autos.TGRRECIB Rec
	inner join
		 #polizas_estudio ep
	on
		ep.apolclav=Rec.GRRECIB_ID_ADHES
	where 
		Rec.GRRECIB_EMPRESA in (1,3) and --Solo del ramo de autos (a�adiendo globalis)
		--Rec.GRRECIB_RAMO=1 and
		(Rec.GRRECIB_FECH_VENC between ep.FechaEntradaEstudio and @FinEstudio or
		 Rec.GRRECIB_FECH_EFE between ep.FechaEntradaEstudio and @FinEstudio);
END