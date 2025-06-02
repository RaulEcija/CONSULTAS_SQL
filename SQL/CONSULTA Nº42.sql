-- Alquiler por nombre de cliente al que se le atribuye

select 
  r. "rental_id" as "numero_alquiler",
  c. "customer_id" as "identificador_cliente",
  c. "first_name" as "nombre_cliente"
from 
  "customer" c
join 
  "rental" r on c. "customer_id" = r. "customer_id"
order by "numero_alquiler" ;
