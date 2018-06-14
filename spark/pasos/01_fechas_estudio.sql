BEGIN 

	declare @fechadiarizacion datetime = CONVERT(datetime, '2018-04-10T19:55:00.001', 126);
	declare @InicioEstudio datetime = convert(varchar(4),year(@fechadiarizacion))+'0101';
	declare @FinEstudio datetime = @fechadiarizacion
	declare @TipoEstudio varchar(50) = 'MENSUAL'
	declare @ProfundidadEstudio smalldatetime = @InicioEstudio
	declare @DiaDespues datetime = dateadd(day,1,@FinEstudio)
	
	select @FinEstudio, @DiaDespues
	
	/*
	select 
			ep.apolclav,
			cast(FechamovIni as date) as FechaEstudio,
			cast(1 as tinyint) as Tipo
		from
			#polizas_estudio ep
		inner join
			dbo.xpolizas xp  
		on
			ep.apolclav=xp.apolclav
		where 
			fechamovini between ep.FechaEntradaEstudio and @FinEstudio;*/
END