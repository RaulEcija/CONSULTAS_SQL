-- Duración total de las peliculas correspondientes a la categoría Acción

select
    c. "name" as "categoria",
    SUM(f. "length") as "duracion_total"
from
    "film" f
join 
    "film_category" fc on f. "film_id" = fc. "film_id"
join
    "category" c on fc. "category_id" = c. "category_id"
where 
    c. "name" = 'Action'
group by c. "name" ;


