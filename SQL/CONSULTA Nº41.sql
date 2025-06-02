-- Dentro de los actores qu tienen un mismo nombre, ¿cual es el nombre que más se repite?

select 
  "first_name", 
  COUNT(*) AS "cantidad_repetido"
from
  "actor"
group by "first_name"
order by "cantidad_repetido" desc ; -- Se ordena de más a menos para saber que nombres son los más repetidos


