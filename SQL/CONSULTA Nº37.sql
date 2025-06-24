-- Actor con "id" más alto y también más bajo

select "actor_id", "first_name", "last_name" 
from "actor"
where "actor_id" = (select MAX("actor_id") from "actor") 
   OR "actor_id" = (select MIN("actor_id") from "actor")
order by "actor_id" desc ; /* Se ordena la lista de cara a lo que solicita la consulta,
 mostrar primero el actor con "id" más alto y después el de "id más bajo."
 */


