
declare @FinEstudio='2018-04-30';
declare @InicioEstudio='2018-01-01';
declare @DiaDespues='2018-05-01'; 

-- *****************************************************************************************
-- ***				Obtenemos las polizas de estudio para la diarizacion				 ***
-- *****************************************************************************************

drop table diarizacion.polizas_estudio
create table diarizacion.polizas_estudio
	(
		Apolclav int,
		FechaEntradaEstudio date,
		FechaEntrada date
	)


truncate table diarizacion.polizas_estudio
insert into diarizacion.polizas_estudio
select 
	apolclav,
	case 
		when xp."FechaEntrada" > '2018-01-01' then xp."FechaEntrada"
		else '2018-01-01'
	end as FechaEntradaEstudio,
	xp."FechaEntrada"
from 
	diarizacion.xpolizas_comun xp  
where xp."FechaEntrada" < to_date('2018-05-01','YYYY-MM-DD')  --un dias mas del fin de estudio

create index IX_tmp_m_polizas_estudio_1 on diarizacion.polizas_estudio(Apolclav)
create index IX_tmp_m_tgrrecib_1 on diarizacion.tgrrecib("GRRECIB_EMPRESA","GRRECIB_FECH_VENC")

select count(*) from diarizacion.polizas_estudio

-- *****************************************************************************************
-- ***			Obtenemos las fechas de corte para las polizas de estudio				 ***
-- *****************************************************************************************


-- *****************************************************************************************
-- ***							Movimientos de las polizas								 ***
-- *****************************************************************************************
			

--drop table diarizacion.fechasEstudio;
/*
create table diarizacion.fechasEstudio
	(
		Apolclav int,
		FechaEstudio date,
		Tipo smallint
	)	
;
*/

truncate table diarizacion.fechasEstudio;

insert into diarizacion.fechasEstudio 
select 
	ep."apolclav",
	cast(xp."FechaMovini" as date) as FechaEstudio,
	cast(1 as smallint) as Tipo
from
	diarizacion.polizas_estudio ep
inner join
	diarizacion.xpolizas xp  
on
	ep."apolclav"=xp."Apolclav"
where 
	xp."FechaMovini" between ep.FechaEntradaEstudio and to_date('2018-04-30','YYYY-MM-DD') --no permitimos nada q se salga del intervalo de estudio
;

select count(*) from diarizacion.fechasEstudio  --	(343915 para 01 enero a 30 de abril


-- *****************************************************************************************
-- ***							Fechas de efecto de los recibos							 ***
-- *****************************************************************************************	
		
insert into 
			diarizacion.fechasEstudio 
select 
	ep.apolclav,
	case
		when Rec."GRRECIB_FECH_VENC"=Rec."GRRECIB_FECH_EFE"  then Rec."GRRECIB_FECH_VENC" + interval '1' day 
		else Rec."GRRECIB_FECH_VENC"
	end as FechaEstudio,
	20 as Tipo
from 
	diarizacion.TGRRECIB Rec	
inner join
	diarizacion.polizas_estudio ep
on 
	ep."apolclav"=Rec."GRRECIB_ID_ADHES" --and 
where 
	Rec."GRRECIB_EMPRESA" in (1,3) and 
	Rec."GRRECIB_FECH_VENC" between ep.FechaEntradaEstudio and to_date('2018-04-30','YYYY-MM-DD')
;
	
	
insert into 
	diarizacion.fechasEstudio
select 
	ep."apolclav",
	Rec."GRRECIB_FECH_EFE",
	21 as Tipo
from 
	 diarizacion.TGRRECIB Rec
inner join
	 diarizacion.polizas_estudio ep
on
	ep."apolclav"=Rec."GRRECIB_ID_ADHES"
where 
	Rec."GRRECIB_EMPRESA" in (1,3) and 
	Rec."GRRECIB_FECH_EFE" between ep.FechaEntradaEstudio and to_date('2018-04-30','YYYY-MM-DD')
;
	

insert into 
	diarizacion.fechasEstudio
select 
	ep."apolclav",
	Rec."GRRECIB_FECH_EFE" + interval '365' day,
	23 as Tipo
from 
	diarizacion.TGRRECIB Rec
inner join
	 diarizacion.polizas_estudio ep
on
	ep."apolclav"=Rec."GRRECIB_ID_ADHES"
where 
	Rec."GRRECIB_EMPRESA" in (1,3) and 
	Rec."GRRECIB_TIP_RECI"::integer='010' and
	Rec."GRRECIB_FECH_EFE"=Rec."GRRECIB_FECH_VENC" and
	Rec."GRRECIB_FECH_EFE" between ep.FechaEntradaEstudio and to_date('2018-04-30','YYYY-MM-DD') 	
;

select Tipo,count(*) from diarizacion.fechasestudio
 group by Tipo

--resultado 0 
 
-- *****************************************************************************************
-- ***								Cambios del frt										 ***
-- *****************************************************************************************	
			
--truncate table diarizacion.fechasEstudio
insert into 
	diarizacion.fechasEstudio
select 
	apolclav,
	"FechaEstudio",	
	0 as Tipo			

from
	(
	select
		apolclav,
		--cast(Años.Año+right(convert(varchar(8),frts.frt,112),4) as smalldatetime) as FechaEstudio,
		CAST(cast(Anos.Ano as text) || substring(to_char(frts."Frt",'YYYY-MM-DD') from 5 for 6) as date) as "FechaEstudio",
		FechaEntradaEstudio
	from
		(
		select distinct ep."apolclav",xp."Frt","fechaentradaestudio"
		from diarizacion.polizas_estudio ep
		inner join diarizacion.xpolizas xp 
		on ep."apolclav"=xp."Apolclav"
		)frts
	cross join
		(
		select distinct date_part('year',"FinMes") as Ano
		from diarizacion.Meses 
		where "FinMes" between to_date('2018-01-01','YYYY-MM-DD')  and to_date('2018-04-30','YYYY-MM-DD') 
		) Anos
	) sub
where 
	sub."FechaEstudio" between sub.FechaEntradaEstudio and to_date('2018-04-30','YYYY-MM-DD') 

	
--select count.. 2131643
select count(*) from diarizacion.fechasestudio

-- *****************************************************************************************
-- ***							Cambios del frt	Ocasional								 ***
-- *****************************************************************************************	
		
insert into 
	diarizacion.fechasEstudio 
select 
	apolclav,
	"FechaEstudio",	
	0 as Tipo			--Antiguamente 4, pero modificado para CRM

from
	(
	select
		apolclav,
		--cast(Años.Año+right(convert(varchar(8),frts.frt,112),4) as smalldatetime) as FechaEstudio,
		CAST(cast(Anos.Ano as text) || substring(to_char(frts."FRTCROcasional",'YYYY-MM-DD') from 5 for 6) as date) as "FechaEstudio",
		FechaEntradaEstudio
	from
		(
		select distinct ep."apolclav",xp."FRTCROcasional","fechaentradaestudio"
		from diarizacion.polizas_estudio ep
		inner join diarizacion.xpolizas xp 
		on ep."apolclav"=xp."Apolclav"
		)frts
	cross join
		(
		select distinct date_part('year',"FinMes") as Ano
		from diarizacion.Meses 
		where "FinMes" between to_date('2018-01-01','YYYY-MM-DD')  and to_date('2018-04-30','YYYY-MM-DD') 
		) Anos
	) sub
where 
	sub."FechaEstudio" between sub.FechaEntradaEstudio and to_date('2018-04-30','YYYY-MM-DD') 	


--select count --126268

-- *****************************************************************************************
-- ***							Cumplimiento de anos del conductor						 ***
-- *****************************************************************************************	
	
insert into  
	diarizacion.fechasEstudio
select 
	ep."apolclav",
	CAST(mes.ano || '-' || date_part('month',pol."FnacConductor") || '-' || date_part('day',pol."FnacConductor") as date) as "FechaEstudio",
	0 as Tipo						
from 
	diarizacion.polizas_estudio ep
inner join
	diarizacion.xpolizas pol 
on
	ep."apolclav"=pol."Apolclav"
inner join
	(select distinct date_part('year',"FinMes") as ano from diarizacion.meses  --no seria necesario tanto calculo pero lo dejamos como en transact
		where 
			(date_part('year',"FinMes") between date_part('year',to_date('2017-01-01','YYYY-MM-DD')) and date_part('year',to_date('2018-05-01','YYYY-MM-DD')-1)
										and date_part('month',"FinMes") = 12) 
			or 
			(date_part('month',"FinMes") = (date_part('month',to_date('2018-05-01','YYYY-MM-DD')) - 1)
			 and date_part('year',"FinMes") = date_part('year',to_date('2018-05-01','YYYY-MM-DD')))
			)  as mes 
on 
	CAST(mes.ano || '-' || date_part('month',pol."FnacConductor") || '-' || date_part('day',pol."FnacConductor") as date) between pol."FechaMovini" and pol."FechaMovFin"
where 
	CAST(mes.ano || '-' || date_part('month',pol."FnacConductor") || '-' || date_part('day',pol."FnacConductor") as date) between to_date('2018-01-01','YYYY-MM-DD') and to_date('2018-04-30','YYYY-MM-DD')

	
--1666244 de este tipo

-- *****************************************************************************************
-- ***							Cumplimiento de anos del ocasional						 ***
-- *****************************************************************************************	

--select count(*) from diarizacion.fechasestudio
--truncate table diarizacion.fechasestudio

insert into  
	diarizacion.fechasEstudio  
select 
	ep."apolclav",
	CAST(mes.ano || '-' || date_part('month',pol."FNacCROcasional") || '-' || date_part('day',pol."FNacCROcasional") as date) as "FechaEstudio",
	0 as Tipo						
from 
	diarizacion.polizas_estudio ep
inner join
	diarizacion.xpolizas pol 
on
	ep."apolclav"=pol."Apolclav"
inner join
	(select distinct date_part('year',"FinMes") as ano from diarizacion.meses  --no seria necesario tanto calculo pero lo dejamos como en transact
		where 
			(date_part('year',"FinMes") between date_part('year',to_date('2017-01-01','YYYY-MM-DD')) and date_part('year',to_date('2018-05-01','YYYY-MM-DD')-1)
										and date_part('month',"FinMes") = 12) 
			or 
			(date_part('month',"FinMes") = (date_part('month',to_date('2018-05-01','YYYY-MM-DD')) - 1)
			 and date_part('year',"FinMes") = date_part('year',to_date('2018-05-01','YYYY-MM-DD')))
			)  as mes  
on 
	CAST(mes.ano || '-' || date_part('month',pol."FNacCROcasional") || '-' || date_part('day',pol."FNacCROcasional") as date) between pol."FechaMovini" and pol."FechaMovFin"
where 
	CAST(mes.ano || '-' || date_part('month',pol."FNacCROcasional") || '-' || date_part('day',pol."FNacCROcasional") as date) between to_date('2018-01-01','YYYY-MM-DD') and to_date('2018-04-30','YYYY-MM-DD')

--94155 de estas

-- *****************************************************************************************
-- ***							Cumplimiento de anos del vehiculo						 ***
-- *****************************************************************************************	

	
insert into  
	diarizacion.fechasEstudio  
select 
	ep."apolclav",
	CAST(mes.ano || '-' || date_part('month',pol."FechaConstruccion") || '-' || date_part('day',pol."FechaConstruccion") as date) as "FechaEstudio",
	0 as Tipo						
from 
	diarizacion.polizas_estudio ep
inner join
	diarizacion.xpolizas pol 
on
	ep."apolclav"=pol."Apolclav"
inner join
	(select distinct date_part('year',"FinMes") as ano from diarizacion.meses  --no seria necesario tanto calculo pero lo dejamos como en transact
		where 
			(date_part('year',"FinMes") between date_part('year',to_date('2017-01-01','YYYY-MM-DD')) and date_part('year',to_date('2018-05-01','YYYY-MM-DD')-1)
										and date_part('month',"FinMes") = 12) 
			or 
			(date_part('month',"FinMes") = (date_part('month',to_date('2018-05-01','YYYY-MM-DD')) - 1)
			 and date_part('year',"FinMes") = date_part('year',to_date('2018-05-01','YYYY-MM-DD')))
			)  as mes  
on 
	CAST(mes.ano || '-' || date_part('month',pol."FechaConstruccion") || '-' || date_part('day',pol."FechaConstruccion") as VARCHAR) >= CAST(pol."FechaMovini" as VARCHAR)
		and CAST(mes.ano || '-' || date_part('month',pol."FechaConstruccion") || '-' || date_part('day',pol."FechaConstruccion") as VARCHAR) <= CAST(pol."FechaMovFin" as VARCHAR)
	 	and CAST(mes.ano || '-' || date_part('month',pol."FechaConstruccion") || '-' || date_part('day',pol."FechaConstruccion") as VARCHAR) != '2018-2-29'
where 
	CAST(mes.ano || '-' || date_part('month',pol."FechaConstruccion") || '-' || date_part('day',pol."FechaConstruccion") as VARCHAR) >= CAST(to_date('2018-01-01','YYYY-MM-DD') as VARCHAR) 
	and CAST(mes.ano || '-' || date_part('month',pol."FechaConstruccion") || '-' || date_part('day',pol."FechaConstruccion") as VARCHAR) <= CAST(to_date('2018-04-30','YYYY-MM-DD') as VARCHAR)
	-- and CAST(mes.ano || '-' || date_part('month',pol."FechaConstruccion") || '-' || date_part('day',pol."FechaConstruccion") as VARCHAR) != '2018-2-29'
	;

--esto peta por un bisiesto damit
--en spark nos da 1908862, aqui puto 0

-- *****************************************************************************************
-- ***							Cumplimiento de anos del tomador						 ***
-- *****************************************************************************************	

insert into  
	diarizacion.fechasEstudio  
select 
	ep."apolclav",
	CAST(mes.ano || '-' || date_part('month',pol."FnacTomador") || '-' || date_part('day',pol."FnacTomador") as date) as "FechaEstudio",
	0 as Tipo						
from 
	diarizacion.polizas_estudio ep
inner join
	diarizacion.xpolizas pol 
on
	ep."apolclav"=pol."Apolclav"
inner join
	(select distinct date_part('year',"FinMes") as ano from diarizacion.meses  --no seria necesario tanto calculo pero lo dejamos como en transact
		where 
			(date_part('year',"FinMes") between date_part('year',to_date('2017-01-01','YYYY-MM-DD')) and date_part('year',to_date('2018-05-01','YYYY-MM-DD')-1)
										and date_part('month',"FinMes") = 12) 
			or 
			(date_part('month',"FinMes") = (date_part('month',to_date('2018-05-01','YYYY-MM-DD')) - 1)
			 and date_part('year',"FinMes") = date_part('year',to_date('2018-05-01','YYYY-MM-DD')))
			)  as mes  
on 
	CAST(mes.ano || '-' || date_part('month',pol."FnacTomador") || '-' || date_part('day',pol."FnacTomador") as date) between pol."FechaMovini" and pol."FechaMovFin"
where 
	CAST(mes.ano || '-' || date_part('month',pol."FnacTomador") || '-' || date_part('day',pol."FnacTomador") as date) between to_date('2018-01-01','YYYY-MM-DD') and to_date('2018-04-30','YYYY-MM-DD')

--1497735 de este tipo

-- *****************************************************************************************
-- ***							cambios antiguedad polizas								 ***
-- *****************************************************************************************
	
insert into 
	diarizacion.fechasEstudio 
select
	apolclav,
	fechaestudio,
	0 as Tipo				--Antes era 8 pero se cambia para CRM
from
	(
	select 
		pol."apolclav",
		/*
		cast(fec.Año+case right(convert(varchar(8),pol.FechaEntrada,112),4)
				 when '0229' then '0228' 
				 else right(convert(varchar(8),pol.FechaEntrada,112),4)
				 end  as smalldatetime) as FechaEstudio,
		*/
		case when date_part('month',pol.FechaEntrada) || '-' || date_part('day',pol.FechaEntrada) = '2-29'
		 then CAST(fec."ano" || '-' || '2-28' as DATE)
		else 
		 CAST(fec."ano" || '-' || date_part('month',pol.FechaEntrada) || '-' || date_part('day',pol.FechaEntrada) as DATE)
		end as FechaEstudio,
		pol."fechaentradaestudio"
	from
		diarizacion.polizas_estudio pol
	cross join
		( --años comprendidos en el estudio
		select distinct 
			cast(date_part('year',"FinMes") as varchar(4)) as ano
			--date_part('year',"FinMes") as ano
		from 
			diarizacion.Meses 
		where 
			"FinMes" between to_date('2018-01-01','YYYY-MM-DD') and to_date('2018-04-30','YYYY-MM-DD')
		) fec
	) sub		
where
	Sub."fechaestudio" between sub."fechaentradaestudio" and to_date('2018-04-30','YYYY-MM-DD')	

--2020297 de este tipo	
	
-- *****************************************************************************************
-- ***							fecha duracion contrato renting							 ***
-- *****************************************************************************************
	
insert into 
	diarizacion.fechasEstudio 
select 
	apolclav,
	ReN."AMMOVRE_F_EFECTO",
	0 as Tipo
from 
	diarizacion.TAMMOVRE Ren
inner join 
	diarizacion.polizas_estudio ep
on
	Ren."AMMOVRE_ID_POLIZA"=ep."apolclav"
where 
	Ren."AMMOVRE_COD_MOVIM" in ('ALCN','PRTC','PROG','AMPL')	
and 
	Ren."AMMOVRE_ID_POLIZA" < 8000000 

--152597 de este tipo

	select count(*) from diarizacion.fechasestudio
	--13066337 - 11157620
--------------------------------

-- *****************************************************************************************
-- ***							finales de mes 											 ***
-- *****************************************************************************************

insert into 
	diarizacion.fechasEstudio 
select count(*) from
(
select 
	apolclav,
	fecha,
	0 as Tipo
	from
		diarizacion.polizas_estudio pol	
	cross join 
	(
		select to_date('2018-01-01','YYYY-MM-DD') as fecha
		union 
		select -- en el transact le suma un dia a la fecha, porque si lo queresmo son fin de mes?
		--to_date(meses."FinMes"  + interval '1' day,'YYYY-MM-DD')
		to_date(CAST(meses."FinMes"as VARCHAR),'YYYY-MM-DD')+1 as fecha
		from 
			diarizacion.meses 
		where meses."FinMes" between  to_date('2018-01-01','YYYY-MM-DD') and to_date('2018-04-30','YYYY-MM-DD') + 1
	) as sub
	where sub.fecha between fechaentradaestudio and to_date('2018-05-01','YYYY-MM-DD')
)	as fag

select count(*) from diarizacion.polizas_estudio


--28458229 resultado

-- *****************************************************************************************
-- ***							finales de ano 											 ***
-- *****************************************************************************************

	
insert into 
	diarizacion.fechasEstudio 
select 
	apolclav,
	fecha,
	9 as Tipo
	from
		diarizacion.polizas_estudio pol	
	cross join 
	(
		 	select to_date('2018-01-01','YYYY-MM-DD') as fecha
	union 
 	select 
	to_date(CAST(meses."FinMes"as VARCHAR),'YYYY-MM-DD') + 1 as fecha
	from 
		diarizacion.meses 
	where date_part('year',meses."FinMes") between  date_part('year',to_date('2018-01-01','YYYY-MM-DD')) and date_part('year',to_date('2018-05-01','YYYY-MM-DD'))-1
	 	and date_part('month',meses."FinMes") = 12
	 	or date_part('month',meses."FinMes") = date_part('month',to_date('2018-05-01','YYYY-MM-DD')) - 1 and date_part('year',meses."FinMes") = date_part('year',to_date('2018-05-01','YYYY-MM-DD'))   
	) as sub
	where sub.fecha between fechaentradaestudio and to_date('2018-05-01','YYYY-MM-DD')
	
	
--resultado: 11365201	
	
	
select count(*) from diarizacion.fechasestudio
select count(*) from diarizacion.fechasestudioD

select Tipo, count(*) from diarizacion.fechasestudio
 group by Tipo
-- **************************************** *************************************************
-- ***							Generar tabla de periodos								 ***
-- *****************************************************************************************



select count(*) from diarizacion.fechasEstudioD
create table diarizacion.fechasEstudioD
		(
			Apolclav int,
			FechaEstudio date,
			Tipo int
		)
	
insert into
	diarizacion.fechasEstudioD 
select
		apolclav,
		fechaestudio,
		MAX (tipo) as tipo
from 
	diarizacion.fechasEstudio
group by apolclav,
		 fechaEstudio
	


create index IX_tmp_m_fechasEstudio_1 on diarizacion.fechasEstudioD(Apolclav,FechaEstudio)	

--select count(*) from diarizacion.fechasEstudioD
		 
-- ******************************************************************************	 
-- *** Generar tabla periodos                                                 ***
-- ******************************************************************************

select 
	row_number() OVER ()  as IdPeriodo,
	F1.Apolclav,
	F1.FechaEstudio as Fini,
	date_part('year',F1.FechaEstudio) as FAño,  
		(select F2.FechaEstudio - interval '1' day 
		from diarizacion.fechasEstudioD F2 
		where F1."apolclav"=F2."apolclav" and 
			  F1."fechaestudio" < F2."fechaestudio" 
		order by "fechaestudio" limit 1) as Ffin,
	case
		when f1.tipo=0 then 0
		else 1
	end as Cambio_Caracteristica
into
	diarizacion.PeriodosEstudio  
from
	diarizacion.fechasEstudioD F1
--where F1.apolclav=6025801
	  
create index IX_tmp_m_PeriodosEstudio_1 on diarizacion.PeriodosEstudio(Apolclav,FIni,Faño)

--select * from diarizacion.fechasestudiod
-- where apolclav=6025801 order by fechaestudio

--select apolclav,fini,ffin from diarizacion.PeriodosEstudio
-- where apolclav=6025801 order by fini desc
 
SELECT 
		--base64(concat(apolclav,FechaEstudio,Tipo)) as IdPeriodo,
		apolclav,
		FechaEstudio as FIni,
		date_part('year',FechaEstudio) as FAno,
		DATE_ADD('day',FechaEstudio,1) as FFin,
		CASE
			WHEN Tipo=0 THEN 0
			ELSE 1
			END AS Cambio_Caracteristica
	FROM diarizacion.fechasestudiod 
 

	
	
--create index IX_tmp_m_PeriodosEstudio_1 on diarizacion.PeriodosEstudio(Apolclav,FIni,Faño)
	
-- ******************************************************************************	 
-- *** Generar tabla periodos agrupada                                        ***
-- ******************************************************************************		 
		 
select 
	p."idperiodo",
	p."apolclav",
	p."fini",
	p."ffin",
	p."faño",
	p."cambio_caracteristica",
	(select sum(p2."cambio_caracteristica")
			 from 
				diarizacion.periodosEstudio p2
			 where
				p2."apolclav"=p."apolclav" and
				p2."faño" = p."faño" and
				p2."fini" > p."fini"
	)as Grupo
into diarizacion.periodosestudioGrupos
from
	diarizacion.PeriodosEstudio p
	
create index IX_tmp_m_PeriodosEstudioGrupos_1 on diarizacion.PeriodosEstudioGrupos(Apolclav,FIni,Ffin,IdPeriodo)
create index IX_tmp_m_PeriodosEstudioGrupos_2 ON diarizacion.PeriodosEstudioGrupos (Fini)
	
--select count(*) from diarizacion.PeriodosEstudioGrupos
	
-- *****************************************************************************************
-- ***						Obtener detalles para los Periodos							 ***	
-- *****************************************************************************************

-- *****************************************************************************************
-- ***				Obtener duración contrato renting de Globalis						 ***
-- *****************************************************************************************

--drop table diarizacion.Renting
select "AMMOVRE_ID_POLIZA","AMMOVRE_F_EFECTO","AMMOVRE_COD_MOVIM","AMMOVRE_DURACION",MAX("AMMOVRE_ID_SECUEN") as "AMMOVRE_ID_SECUEN" 
into diarizacion.Renting
FROM diarizacion.TAMMOVRE 
where "AMMOVRE_COD_MOVIM" in ('ALCN','PRTC','PROG','AMPL')
	and "AMMOVRE_ID_POLIZA"	<	8000000 --and AMMOVRE_ID_POLIZA=6916195	
	and "AMMOVRE_ESTADO"		<>	'A' 
group by "AMMOVRE_ID_POLIZA","AMMOVRE_F_EFECTO","AMMOVRE_COD_MOVIM","AMMOVRE_DURACION"

--drop table diarizacion.RentingAcum
select M."AMMOVRE_ID_POLIZA",M."AMMOVRE_F_EFECTO",M."AMMOVRE_DURACION", 
	   REN."AMMOVRE_F_EFECTO" as   "AMMOVRE_F_EFECTO_2", REN."AMMOVRE_DURACION" AS "AMMOVRE_DURACION_2"
into diarizacion.RentingAcum 
from diarizacion.Renting M
left join diarizacion.Renting REN
on M."AMMOVRE_ID_POLIZA" = REN."AMMOVRE_ID_POLIZA"
and M."AMMOVRE_F_EFECTO" >= REN."AMMOVRE_F_EFECTO"

--drop table diarizacion.RentingTotal
SELECT "AMMOVRE_ID_POLIZA","AMMOVRE_F_EFECTO","AMMOVRE_DURACION", SUM("AMMOVRE_DURACION_2") AS "AMMOVRE_DURACION_TOTAL"
INTO diarizacion.RentingTotal
FROM diarizacion.RentingAcum
GROUP BY "AMMOVRE_ID_POLIZA","AMMOVRE_F_EFECTO","AMMOVRE_DURACION"

INSERT INTO diarizacion.RentingTotal 
SELECT DISTINCT "AMMOVRE_ID_POLIZA", TO_DATE('2050-12-31','YYYY-MM-DD'), 0,0
FROM diarizacion.RentingTotal 

--drop table diarizacion.RentingPeriodosTotal
SELECT  "AMMOVRE_ID_POLIZA","AMMOVRE_DURACION_TOTAL" ,F1."AMMOVRE_F_EFECTO" as "AMMOVRE_F_EFECTO_Ini"
		--,dateadd(dd,-1,F2.AMMOVRE_F_EFECTO) as "AMMOVRE_F_EFECTO_Fin"
--into diarizacion.RentingPeriodos
FROM diarizacion.RentingTotal F1 
inner lateral JOIN ( 
 SELECT "AMMOVRE_F_EFECTO"
 FROM   diarizacion.RentingTotal AS F  
 WHERE   F1."AMMOVRE_ID_POLIZA" = F."AMMOVRE_ID_POLIZA" 
		and F1."AMMOVRE_F_EFECTO" < F."AMMOVRE_F_EFECTO"
 ORDER BY F.AMMOVRE_F_EFECTO limit 1 
 ) AS F2 


 -----joins finales ------------------
 
 
 
 -------------------------------------
 -- Rellenamos en una temporal con los recibos de pago aplazado que se van a usar
 
 CREATE INDEX  ix1_recibos  ON  diarizacion.XRECIBOS 
(
	 "Idempresa"  ASC,
	 "Idramo"  ASC,
	 "ReferenciaRecibo"  ASC
)

 CREATE INDEX  ix1_vxrecibos  ON  diarizacion.V_XRECIBOS 
(
	 "IdEmpresa"  ASC,
	 "IdRamo"  ASC
)

 
  select
            Rec."Idempresa"
            , Rec."Idramo"
            , Rec."ReferenciaRecibo"
            , Rec."Poliza"
            , Rec."Estado"
            , Rec."Situacion"
            , Rec."FecEfecto"
            , Rec."FecVencimiento"
            , Rec."FactorPrimaRecibo"
            , Rec."FrecuenciaPago"
            , Rec."TipoRecibo"
            , Rec2."Anualidad"
            , Rec2."NumeroFraccion"
            , Rec."Imputable"
			, Rec."TipUnGes"
			, Rec."FormaPago"
        into
            diarizacion.diarizacion_recibos_estudio_pago_aplazado
        from
            diarizacion.xrecibos Rec
            LEFT JOIN
            diarizacion.v_xrecibos Rec2
            ON
                Rec."Idempresa" = Rec2."IdEmpresa"
                AND
                Rec."Idramo" = Rec2."IdRamo"
                AND
                Rec."ReferenciaRecibo" = Rec2."ReferenciaRecibo"
		where
			Rec."Idempresa" in (1,3)
			and
			Rec."Idramo"=1 
			and
			Rec."Poliza" IN ( select "apolclav" from diarizacion.polizas_estudio )
			AND
			Rec."FrecuenciaPago" = 'P'
			AND
			Rec."Imputable" = 1
			
    select count(*) from diarizacion.diarizacion_recibos_estudio_pago_aplazado
 
--esto genera 7503541 regs
   
-- Actualizamos las fechas de efecto y de vencimiento de los recibos de pago aplazado			

update
    pa
set
    "fecefecto" = case
                    when pa.numerofraccion = 2 then dateadd ( month , 4 , pa1.fecefecto )
                    when pa.numerofraccion = 3 then dateadd ( month , 8 , pa1.fecefecto )
                    else pa.fecefecto
                end
    ,
    "fecvencimiento" = case
                        when pa.numerofraccion = 1 then dateadd ( month , 4 , pa1.fecefecto )
                        when pa.numerofraccion = 2 then dateadd ( month , 8 , pa1.fecefecto )
                        when pa.numerofraccion = 3 then dateadd ( year , 1 , pa1.fecefecto )
                        else pa.fecefecto
                    end
from
    diarizacion.diarizacion_recibos_estudio_pago_aplazado pa
    left join
    diarizacion.diarizacion_recibos_estudio_pago_aplazado pa1
    on
        pa."idempresa" = pa1."idempresa"
        and
        pa."idramo" = pa1."idramo"
        and
        pa."poliza" = pa1."poliza"
        and
        pa."anualidad" = pa1."anualidad"
        and
        pa1."NumeroFraccion" = 1
where
    pa."fecefecto" <> case
                        when pa."numerofraccion" = 2 then dateadd ( month , 4 , pa1."fecefecto" )
                        when pa."numerofraccion" = 3 then dateadd ( month , 8 , pa1."fecefecto" )
                        else pa."fecefecto"
                    end
    or
    pa."fecvencimiento" <> case
                            when pa."numerofraccion" = 1 then dateadd ( month , 4 , pa1."fecefecto" )
                            when pa."numerofraccion" = 2 then dateadd ( month , 8 , pa1."fecefecto" )
                            when pa."numerofraccion" = 3 then dateadd ( year , 1 , pa1."fecefecto" )
                            else pa."fecefecto"
                         end
                                 
-- Con los recibos de pago aplazado modificados, vamos a hacer una temporal con los recibos
-- modificados más el resto. Así el algoritmo no se modifica.
                         
select
            Rec."IdEmpresa"
            , Rec."IdRamo"
            , Rec."ReferenciaRecibo"
            , Rec."Poliza"
            , Rec."Estado"
            , Rec."Situacion"
            , Rec."FecEfecto"
            , Rec."FecVencimiento"
            , Rec."FactorPrimaRecibo"
            , Rec."FrecuenciaPago"
            , Rec."TipoRecibo"
            , Rec2."Anualidad"
            , Rec2."NumeroFraccion"
            , Rec."Imputable"
			, Rec."TipUnGes"
			, Rec."FormaPago"
        into
            diarizacion.diarizacion_recibos_total
        from
            diarizacion.xrecibos Rec
            LEFT JOIN
            diarizacion.v_xrecibos Rec2
            ON
                Rec."IdEmpresa" = Rec2."IdEmpresa"
                AND
                Rec."IdRamo" = Rec2."IdRamo"
                AND
                Rec."ReferenciaRecibo" = Rec2."ReferenciaRecibo"
		where
			Rec."Idempresa" in (1,3)
			and
			Rec."IdRamo"=1 
			and
			Rec."Poliza" IN ( select apolclav from diarizacion.polizas_estudio )
			AND
			Rec."FrecuenciaPago" <> 'P'
			AND
			Rec."Imputable" = 1
        union all
        select
            *
        from
            diarizazion.diarizacion_recibos_estudio_pago_aplazado                         
 
------------------------------------------------------------------------
--fechas obtenidas sin y con agrupacion para 01-01 al 30-04-2018
select count(*) from diarizacion.fechasEstudio --16782282
select count(*) from diarizacion.fechasEstudioD --12169224		 
select count(*) from diarizacion.polizas_estudio pol

select tipo,count(*) from diarizacion.fechasestudio --	( para 01 enero a 30 de abril	
 group by tipo 
 
 select count(*) from diarizacion.tgrrecib
 
 
 explain analyze select count(*) from diarizacion.tgrrecib
 
 
 

