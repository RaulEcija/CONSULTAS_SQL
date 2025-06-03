-- Títulos de las películas alquiladas por el cliente con nombre 'Tammy Sanders', que aún no se han devuelto

select distinct -- Utilizo distinct por si hay una película que ha sido alquilada más de una vez y ninguna fué devuelta
    f. "title"
from 
    "customer" c
join 
    "rental" r on c. "customer_id" = r. "customer_id"
join 
    "inventory" i on r. "inventory_id" = i. "inventory_id"
join
    "film" f on i. "film_id" = f. "film_id"
WHERE 
    c. "first_name" = 'TAMMY'
    and c."last_name" = 'SANDERS'
    and r. "return_date" is null
order by
    f. "title" asc ; -- Se ordena alfabéticamente como lo pide la consulta
 

