/*
mostrar los datos de todas las regiones*/
SELECT				
	regiones.*
FROM
	regiones; 

/*
mostrar los datos de todos los departamentos*/
select
	departamentos.*
FROM
	departamentos;
/*
mostrar todos los municipios ordenados por còdigo de departamento*/
SELECT
	municipios.*
FROM 
	municipios
ORDER BY cod_depto;
/*listar los datos de todos los departamentos que pertenecen a la region 
con nombre SurOriental*/
SELECT
	departamentos.*
FROM
	departamentos
	INNER JOIN regiones
	ON departamentos.cod_region = regiones.cod_region

WHERE
	regiones.nombre = "SurOriental";
/*Seleccionar a los ciudadanos que pertenecen al municipio con nombre Quetzaltenango, 
los datos a mostrar son DPI, nombre, apellido, direcciòn y telefono movil*/
SELECT
	ciudadanos.dpi,
	ciudadanos.tel_movil,
	ciudadanos.direccion,
	CONCAT(ciudadanos.nombre," ", ciudadanos.apellido) AS nombre_completo,
	municipios.nombre_municipio,
	departamentos.nombre_depto
FROM
	departamentos
	INNER JOIN municipios
	ON departamentos.cod_depto = municipios.cod_depto
	INNER JOIN ciudadanos
	ON ciudadanos.cod_muni = municipios.cod_muni
WHERE
	departamentos.nombre_depto="Quetzaltenango";
/*Mostrar todos los datos de los ciudadanos que tienen el apellido Pèrez*/
SELECT
	*
FROM
	ciudadanos
WHERE
	ciudadanos.apellido like "%Perez%"
	OR 
	ciudadanos.apellido like "%Pérez%";
/*Listar a todos los departamentos ordenados por código de región.*/
SELECT
	departamentos.*
FROM
	departamentos
ORDER BY cod_region;
/*Mostrar los datos de todos los ciudadanos que pertenecen al departamento Escuintla, ordenar
los datos por código de municipio y apellido.*/
SELECT
 	ciudadanos.*
FROM
	departamentos
	INNER JOIN municipios
	ON departamentos.cod_depto = municipios.cod_depto
	INNER JOIN ciudadanos
	ON municipios.cod_muni = ciudadanos.cod_muni
WHERE
	departamentos.nombre_depto = "Escuintla"

ORDER BY municipios.cod_muni,ciudadanos.apellido;
/*Obtener todos los municipios que finalizan con la letra z.*/
SELECT
 	municipios.*
FROM
	departamentos
INNER JOIN municipios
ON departamentos.nombre_municipio = municipios.nombre_municipio
WHERE
	municipios.nombre_municipio = "z%";





	
	
 

	
	


	

	
	
	