 -- Actores cuyo primer nombre es 'Johnny'
 
select 
   "customer_id", 
   CONCAT("first_name", ' ', "last_name") as "actor"
from "customer"
where "first_name" = 'JOHNNY'
order by "customer_id" asc ; -- Lo dejo ordenaado porque previamente no sabía que solo hubiera un actor con el nombre indicado
