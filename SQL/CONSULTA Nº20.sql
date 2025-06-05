/* Categorías de películas que tienen un promedio de duración superior a 110 minutos. 
Además, mostrar el nombre de la categoría junto con el promedio de duración
*/

select 
  c. "name" as "categoria",
  AVG(f. "length") as "promedio_duracion"
from 
  "category" c
join 
  "film_category" fc on c. "category_id" = fc. "category_id"
join 
  "film" f on fc. "film_id" = f. "film_id"
group by "categoria"
having AVG(f. "length") > 110
order by "promedio_duracion" desc ; -- Ordenado por preferencia propia, de más a menos promedio de duración


