/* Cantidad total de películas alquiladas por categoría y
nombre de la categoría junto con el recuento de alquileres */

select c. "name" as "nombre_categoria", COUNT(r. "rental_id") as "alquileres_totales"
from "rental" r
join "inventory" i on r. "inventory_id" = i. "inventory_id"
join "film" f on i. "film_id" = f. "film_id"
join "film_category" fc on f. "film_id" = fc. "film_id"
join "category" c on fc. "category_id" = c. "category_id"
group by c. "category_id", c. "name"
order by "alquileres_totales" desc ;


