 -- Actores que no participan en ninguna película
 
select 
  a."actor_id", 
  a."first_name", 
  a."last_name"
from
  "actor" a
LEFT join 
  "film_actor" fa on a."actor_id" = fa. "actor_id"
where
  fa."film_id" is null
order by a."last_name", a."first_name" ; -- Se muestra que no hay ningún actor que no participe en ninguna película


