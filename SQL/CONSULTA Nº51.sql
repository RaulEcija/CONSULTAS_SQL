-- Almacenar el total de alquileres por cliente, creando una tabla temporal llamada "cliente_rentas_temporal"

create temporary table cliente_rentas_temporal as
select 
    c. "customer_id",
    c. "first_name",
    c. "last_name",
    COUNT(r. "rental_id") as "total_alquileres"
from 
    "customer" c
join 
    "rental" r on c. "customer_id" = r. "customer_id"
group by 
    c. "customer_id", c. "first_name", c. "last_name" ;

