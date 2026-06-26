/*Mostrar los datos de todas las regiones.*/
SELECT * FROM regiones;
/*Obtener los datos de todos los municipios.*/
SELECT * FROM municipios;
/*Mostrar todos los municipios ordenados por código de departamento.*/
SELECT * FROM municipios ORDER BY cod_depto;
/*Listar los datos de todos los departamentos que pertenecen a la región con código 6.*/
SELECT * FROM departamentos WHERE cod_region=6;
/*Seleccionar a los ciudadanos que pertenecen al municipio con código 901, Los datos a mostrar
son DPI, nombre, apellido, dirección y teléfono móvil.*/
/*Concatenar el nombre del ciudadano de tal forma que posea el siguiente formato: Apellido,
Nombre.*/ 
SELECT dpi, CONCAT(apellido, ', ', nombre) AS nombre_completo, direccion, tel_movil 
FROM ciudadanos where cod_muni=901;
/*Listar los datos de todos los departamentos que pertenecen a la región con nombre
SurOriental*/
SELECT ciudadanos.*,municipios.nombre_municipio, departamentos.nombre_depto
FROM ciudadanos INNER JOIN municipios
ON ciudadanos.cod_muni = municipios.cod_muni
INNER JOIN departamentos 
ON departamentos.cod_depto = municipios.cod_depto
WHERE departamentos.cod_region="SurOriental";
/*Seleccionar a los ciudadanos que pertenecen al municipio con nombre Quetzaltenango, los
datos a mostrar son DPI, nombre, apellido, dirección y telefono móvil*/
SELECT ciudadanos.*,municipios.nombre_municipio, departamentos.nombre_depto
FROM ciudadanos INNER JOIN municipios
ON ciudadanos.cod_muni = municipios.cod_muni
INNER JOIN departamentos
ON departamentos.cod_depto = municipios.cod_depto
WHERE departamentos.nombre_depto="Quetzaltenango"
ORDER BY municipios.nombre_municipio, departamentos.nombre_depto;

/*Mostrar todos los datos de los ciudadanos que tiene el apellido Pérez.*/
SELECT * FROM ciudadanos WHERE apellido LIKE "%pérez%";

/*Listar a todos los departamentos ordenados por código de región.*/
SELECT * FROM departamentos ORDER BY cod_region;
/*Mostrar los datos de todos los ciudadanos que pertenecen al municipio con código 101,
ordenar los datos por código de municipio y apellido.*/
SELECT * FROM ciudadanos where cod_muni=101 ORDER BY apellido;
/*Obtener todos los municipios que finalizan con la letra z.*/
SELECT * FROM municipios WHERE nombre_municipio LIKE "%z";
/*Mostrar los datos de todos los ciudadanos que pertenecen al departamento Escuintla, ordenar
los datos por código de municipio y apellido.*/
SELECT ciudadanos.*, municipios.nombre_municipio, departamentos.nombre_depto 
FROM ciudadanos INNER JOIN municipios
ON ciudadanos.cod_muni = municipios.cod_muni
INNER JOIN departamentos
ON departamentos.cod_depto = municipios.cod_depto 
WHERE departamentos.nombre_depto="Escuintla" 
ORDER BY municipios.cod_muni, ciudadanos.apellido;
SELECT *FROM departamentos;
SELECT * FROM ciudadanos;
/*Mostrar dpi, nombre completo (concatenar nombre y apellido) y teléfono móvil de los
ciudadanos del municipio con código 101, ordenar los datos por apellido de forma
descendente.*/
SELECT dpi, CONCAT (nombre, ', ',apellido) AS nombre_completo, tel_movil, cod_muni
FROM ciudadanos
WHERE cod_muni=101 ORDER BY apellido DESC;
/*Mostrar todos los ciudadanos que poseen nivel académico 3 y pertenecen al municipio 102,
ordenar los datos por código de municipio y apellido*/        
SELECT * FROM ciudadanos
WHERE cod_nivel_acad = 3 AND cod_muni=102; 




