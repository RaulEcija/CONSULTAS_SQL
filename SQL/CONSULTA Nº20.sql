/* categorías de películas que tienen un promedio de
duración superior a 110 minutos
*/
select 
  c. "name" as Categoria, ROUND(AVG("length"), 2) as "Promedio_duración_película",
from 
  "film" f
join 
  "film_category" fc on f. "film_id" = fc. "film_id"
join 
  "category" c on fc. "category_id" = c. "category_id"
group by c."name"
having AVG("length") > 110 ;

  