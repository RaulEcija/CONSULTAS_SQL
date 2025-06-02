 -- Actores que han participado en películas que pertenezcan a la categoría 'ACTION'
 
select distinct -- Uso distinct para evitar que se repitan los actores que han participado en varias películas de acción
  a."actor_id" as "identificador_actor",
  a."first_name" as "nombre",
  a."last_name" as "apellido"
from 
  "actor" a
join 
  "film_actor" fa on a."actor_id" = fa."actor_id"
join 
  "film" f on fa."film_id" = f."film_id"
join 
  "film_category" fc on f."film_id" = fc."film_id"
join 
  "category" c on fc."category_id" = c."category_id"
where c."name" = 'Action' 
order by "identificador_actor" asc ;
