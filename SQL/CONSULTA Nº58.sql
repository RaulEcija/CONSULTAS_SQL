-- Películas que pertenecen a la categoría 'Animation'

select f. "title" /* Como no se obtienen duplicados en los nombres de películas 
de esta categoría por su condición de "film_id" - "film_category" no es necesario utilizar distict en este ejemplo
*/
from "film" f
join "film_category" fc on f. "film_id" = fc. "film_id"
join "category" c on fc. "category_id" = c. "category_id"
where c. "name" = 'Animation' ; -- no lo ordeno alfabéticamente porque ya sale por defecto en esta consulta


