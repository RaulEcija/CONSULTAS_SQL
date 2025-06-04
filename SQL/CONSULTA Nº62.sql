-- Número de películas por categoría, estrenadas en el año 2006

select c. "name" as "categoria", COUNT(f. "film_id") as "numero_peliculas"
from "film" f
join "film_category" fc on f. "film_id" = fc. "film_id"
join "category" c on  fc. "category_id" = c. "category_id"
where f. "release_year" = 2006
group by "categoria"
order by "numero_peliculas" asc ; -- Ordenadas de menor número de conteo a mayor



