-- Actor más alto y más bajo

select "actor_id", "first_name", "last_name" 
from "actor"
where "actor_id" = (select MAX("actor_id") from "actor") 
   OR "actor_id" = (select MIN("actor_id") from "actor")
order by "actor_id" desc ; 

