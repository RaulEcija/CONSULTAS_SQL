-- ID de los actores que han participado en más de 40 películas

select  "actor_id", COUNT("film_id") as "total_peliculas"
from  "film_actor"
GROUP by "actor_id"
having COUNT("film_id") > 40;
