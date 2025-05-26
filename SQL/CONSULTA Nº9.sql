-- Variabilidad del coste de remplazo de las películas ordenadas de menos a más según coste por remplazo
select  "title", "replacement_cost", VARIANCE("replacement_cost") OVER () AS "variabilidad_coste_remplazo"
from  "film"
where "replacement_cost" is not NULL
order by "replacement_cost" asc;







