# diarizaciones
workflow de diarizaciones para nuevo BI Mutua

Conclusiones diarizaciones:


## INGESTA


```
-HDFS: el cifrado multiplicaba por 4 los tiempos de lectura

-Paso a parquet: al pasar de leer como CSV los ficheros a leerlos de parquet redujimos 1/8 tiempo
--el tiempo extra de procesado por esto fue de x
--la mejora a partir de esto pasa por incrementar cores y executors, pero la mejora es lineal
```

## PROCESADO

En el caso concreto de diarizaciones realimos un filtrado de inicio al crear las tablas temporales XD quedandonos solo los datos que ibamos a usar en el procesado: eg desgloes nos bastaba con 2 años previos a inicio diarizaciones, empresas nos bastaban con las de codigo 1 y 3, etc.

Encontramos dos problemas aplicables a cualquier batch:

```
1 Skewed joins

Problema: spark no puede dividir correctamente el trabajo porque no puede particionar los datos entre los
ejecutores, uno se encuentra con todo el trabajo. El síntoma es que vemos que un ejecutor tiene toda la carga.

Soluciones: 
-evitar joins grandes, realizar por partes previamente
-SKEW hints
-Rediseño de los datos 
-Claves sintéticas para el particionado

(Grafico de ejemplo)
```

```
2 Memory spill

Problema: un ejecutor se encuentra con más datos que la memoria que tiene asignada, por lo que empieza 
a escribir en disco, esto es más lento pero además si supera el máximo de disco tmp asignado dara el 
siguiente error

Soluciones:
-incrementar particiones
-incrementar ejecutores
-se beneficia tambien de los puntos mencionados para skewed joins

Traza:
Caused by: java.io.FileNotFoundException: /tmp/blockmgr-42c7ebec-f738-4743-b4d2-0d5a668033dc/14/temp_shuffle_798bfac4-db6d-4f73-a64c-0deec367968c (No space left on device) at java.io.FileOutputStream.open0(Native Method)

Links: https://forums.databricks.com/questions/277/how-do-i-avoid-the-no-space-left-on-device-error.html
```


## ESCRITURA

No encontramos problemas en esto al escribir en parquet.
Como nota, escribir en parquet es mas rapido que realizar un count.

## OTRAS CONSIDERACIONES

De cara a recursos vimos que es mas beneficioso incrementar numero de executors que cores por cada uno.
Persist solo si se va a leer varias veces lo mismo.
Kryo.
Dividir en varios workflows (nosotros pasamos de 1 a 3: ingesta, primas y polizas).

PROBLEMAS ENCONTRADOS CON SPARTA
-caducidad sesión
-problemas para encontrar errores, avisa en último paso de problemas previos (spark es lazy pero podrían
mejor las trazas)
-seleccion indidual en lugar de múltiple
-subworkflows para evitar repetir
-


## RESULTADOS

En SQL: 30 minutos el año, lineal
Nosotros: en 30 minutos 3 años, 11 años 1:10 mins
Desde 2005: 2700 millones de primas, 670 millones de polizas
Nos, desde 2007: 2348 millones primas, 550 millones de polizas

```
primas 11 años genera 2348
primas 13 años generaria: -2770- (70 millones mas)
```
polizas 11 años genera: 550
polizas 13 generaria: -651- (20 millones menos)
```

## QOL improv
-crear entorno local, tanto un sql como un spark
-count es lento, preferible tirar resultados a parquet temporal
-variables entorno (ver si podemos separarlas de alguna manera)
-automatizar cosas, eg: un wf parametrizable para ingestas de csv a parquet

## FIXES DESCUADRES:
-hay calculos de mes dividiendo dias entre 30..
-hay discards d eventos en alguna lectura de csv
-hay que asegurar al validar que se parte de mismos csv DESGL etc
-update de fecvencimiento en recibos









