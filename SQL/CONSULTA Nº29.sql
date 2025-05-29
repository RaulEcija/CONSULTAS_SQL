-- Mostrar todas las peliculas y si están disponibles en el inventario, mostrar la cantidad disponible

select "title"
from "film" ;

select  f."film_id", f."title", COUNT(i."inventory_id") as "cantidad_disponible"
from  "film" f
left join "inventory" i on f."film_id" = i."film_id"
group by f."film_id", f."title"
order by f."title";
