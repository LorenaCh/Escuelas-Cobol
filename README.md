# Escuelas-Cobol
Sean los archivos:

"ESCUELAS": secuencial, ordenado por código de provincia, distrito escolar y número de escuela ascendente.                                                                                                          
Contiene un registro por cada escuela de un distrito de una provincia.

El diseño de registro es:
Código de provincia: 1 carácter
Distrito escolar: entero, 2 dígitos								
Código de escuela: entero, 2 dígitos
Cantidad de varones: entero, 3 dígitos
Cantidad de mujeres: entero, 3 dígitos
Cantidad de niños que concurren al comedor: entero, 3 dígitos

"PROVINCIAS": secuencial, ordenado por código de provincia ascendente.
Contiene un registro por cada provincia del país.
El diseño del registro es:
Código de provincia: 1 carácter
Nombre de provincia: 20 caracteres
Se pide: Obtener a partir de los mismos el listado cuyo diseño se da a continuación.

****** LISTADO DE ESCUELAS ******
Por cada PROVINCIA:
Encabezado de la PROVINCIA con el Nombre de la provincia

Datos a nivel provincia:
DISTRITO
ESCUELA
TOTAL ALUMNOS
% COMEDOR (1)

Al finalizar cada provincia:
TOTAL DE ESCUELAS (2)
TOTAL ALUMNOS (3)

Al finalizar del listado, datos a nivel país en nueva página:
Total de escuelas país
Total alumnado país
Escuela/s con más alumnado del país (5)

-Aclaraciones:-
(1)-Porcentaje de niños que concurren al comedor.
(2)-Cantidad de escuelas de la provincia.
(3)-Cantidad de alumnos de la provincia.
(4)-Código de distrito y código de escuela con más alumnos de esa provincia.
(5)-Nombre de provincia, código de distrito y código de escuela con más alumnos del país.
(5) En caso que el máximo alumnado se registre en más de una provincia-distrito-escuela, informar todos los casos encontrados
