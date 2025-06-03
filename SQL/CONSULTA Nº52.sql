/* Creación de una tabla temporal llamada "peliculas_alquiladas",
 mostrando todas las películas que han sido alquiladas al menos 10 veces
*/

create temporary table peliculas_alquiladas as
select 
    f. "film_id",
    f. "title",
    COUNT(r. "rental_id") as "total_veces_alquilada"
from 
    "film" f
join 
    "inventory" i on f. "film_id" = i. "film_id"
join
    "rental" r on i. "inventory_id" = r. "inventory_id"
group by 
    f. "film_id", f. "title"
having 
    COUNT(r. "rental_id") >= 10
order by "total_veces_alquilada" desc ; -- Ordenados de más a menos veces haya sido alquilada la película




