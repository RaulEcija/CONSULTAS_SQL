-- Clientes que han alquilado al menos 7 películas distintas

select c. "first_name" as "nombre", c. "last_name" as "apellido"
from "customer" c
join "rental" r on c. "customer_id" = r. "customer_id"
join "inventory" i on r. "inventory_id" = i. "inventory_id"
join "film" f on i. "film_id" = f. "film_id"
group by "nombre", "apellido"
having COUNT(distinct f. "film_id") >= 7 -- Se utiliza el having teniendo en cuenta que hay un count
order  by "apellido" asc ; -- Se ordena alfabéticamente por apellido, lo solicitaba el enunciado real de la consulta


