-- Listado de actores junto con la cantidad de peliculas en las que han trabajado

select
    a."first_name",
    a."last_name",
    COUNT(fa. "film_id") as "cantidad_peliculas"
from
    "actor" a
join 
    "film_actor" fa on a. "actor_id" = fa. "actor_id"
group by  
    a."actor_id", a. "first_name", a. "last_name"
order by
    "cantidad_peliculas" asc ; -- Ordenadas en formato ascendente según la cantidad de películas realizadas de cada actor
