-- Obtener los actores y el número de películas en las que ha actuado

select 
    a."actor_id",
    CONCAT(a."first_name", ' ', a.last_name) as "nombre_completo",
    COUNT(fa."film_id") as "cantidad_peliculas"
from "actor" a
join "film_actor" fa on a."actor_id" = fa."actor_id"
group by a."actor_id", a."first_name", a."last_name"
order by cantidad_peliculas desc ;

