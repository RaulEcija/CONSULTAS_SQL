--Películas que pertenecen al género comedia y tienen cuna duración mayor a 180 minutos
select 
  f. "title",
  f. "length" 
from 
  "film" f
join 
  "film_category" fc on f. "film_id" = fc. "film_id" -- Se une las tablas "film-category", "film" y "category" en esta y la siguiente linea de código
join 
  "category" c on fc. "category_id" = c. "category_id"
where c. "name" = 'Comedy' and f. "length" > 180
order by "title" asc; -- Ordenado alfabéticamente

