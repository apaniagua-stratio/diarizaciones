BEGIN 
	--'2018-04-10T19:55:00.001'
	declare @fechadiarizacion datetime = CONVERT(datetime, :fechadiarizacion, 126);
	declare @InicioEstudio datetime = convert(varchar(4),year(@fechadiarizacion))+'0101';
	declare @FinEstudio datetime = @fechadiarizacion
	declare @TipoEstudio varchar(50) = 'MENSUAL'
	declare @ProfundidadEstudio smalldatetime = @InicioEstudio
	declare @DiaDespues datetime = dateadd(day,1,@FinEstudio)
	
	select @FinEstudio
	
	select 
		apolclav,
		case 
			when FechaEntrada>@InicioEstudio then FechaEntrada
			else @InicioEstudio
		end as FechaEntradaEstudio,
		FechaEntrada  
	into #polizas_estudio 
	from 
		dbo.xpolizas_comun xp  
	where FechaEntrada<@DiaDespues;
END