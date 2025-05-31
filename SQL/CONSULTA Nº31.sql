-- Peliculas de la tabla 'film' junto con los actores que han actuado en ellas

select 
  f. "film_id",
  f. "title",
  a. "actor_id" as "numero_actor",
  a. "first_name" as "nombre_actor"
from 
  "film" f
left join 
  "film_actor" fa on f. "film_id" = fa. "film_id"
left join
  "actor" a on fa. "actor_id" = a. "actor_id" -- Se utiliza el left join para que nos devuelva los null cuando no encuentre el actor de la película asociado 
order by "numero_actor" ; -- Lo ordeno por id de actor para que sea más comoda la visualización


  
  