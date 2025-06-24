 -- Actores cuyo primer nombre es 'Johnny'
 
select 
   "actor_id", 
   CONCAT("first_name", ' ', "last_name") as "Actor_buscado"
from "actor"
where "first_name" = 'JOHNNY'
order by "actor_id" asc ; -- Lo dejo ordenado de id más bajo a más alto.

