-- Creación de la columna ue contenga el nombre y apellidos de todos los actores y actrices

select CONCAT("first_name", ' ', "last_name") as "Nombre_actores_actrices"
from "actor" ;