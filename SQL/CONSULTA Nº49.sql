-- Número de alquileres realizados por cada cliente

select 
  c. "first_name" as "nombre cliente",
  c. "last_name" as "apellido_cliente",
  COUNT(r. "rental_id") as "total_alquileres"
from 
  "customer" c
join 
  "rental" r on c. "customer_id" = r. "customer_id"
group by "first_name", "last_name" 
order by "total_alquileres" desc ; -- Ordenado de más alquileres en su posesión a menos.

