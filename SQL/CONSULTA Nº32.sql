-- Actores y películas, incluso los que no han actuado en ninguna película

select 
  a. "actor_id",
  a. "first_name" as "nombre_actor",
  f. "film_id" as "numero_pelicula",
  f. "title"
from 
  "actor" a 
left join 
  "film_actor" fa on a. "actor_id" = fa. "actor_id"
left join 
  "film" f on fa. "film_id" = f. "film_id" -- Al igual ue en la anterior consulta se utiliza el left join por si hay NULL
order by "numero_pelicula" ; -- Ordenado por id de película para que se muestren los actores por cada película
