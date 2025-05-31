-- Todas las películas junto con sus registros de alquiler

select 
  f. "film_id",
  f. "title",
  r. "rental_id",
  r. "inventory_id" as "cantidad_veces_alquilada",
  r. "customer_id" as "identificador_cliente",
  r. "rental_date" as "fecha_alquiler"
from 
  "film" f
left join 
  "inventory" i on f. "film_id" = i. "film_id"
left join 
  "rental" r on i. "inventory_id" = r. "inventory_id"
order by f. "film_id" ; -- Ordenadas por id de película

