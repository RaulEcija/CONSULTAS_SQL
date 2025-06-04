-- Películas alquiladas por más de 8 días

select distinct f."title" -- usamos distinct para evitar duplicados
from "rental" r
join "inventory" i on r. "inventory_id" = i. "inventory_id" -- se unen las tablas necesarias
join "film" f on i. "film_id" = f. "film_id"
where (r.return_date - r.rental_date) > INTERVAL '8 DAYS' /* se filtra por las películas que tienen
 un intervalo de alquiler mayor a 8 días
*/
order by "title" asc ; -- Se ordenan alfabéticamente para facilitar su comprensión








