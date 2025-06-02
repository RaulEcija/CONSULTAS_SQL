-- Se muestran todos los clientes, tengan o no alquileres. A los que se les asocia el alquiler si lo tienen

select 
  c. "customer_id",
  c. "first_name" as "nombre_cliente",
  c. "last_name" as "apellido_cliente",
  r. "rental_id" as "alquiler"
from 
  "customer" c
left join  -- Se utiliza este conector para mostrar también los actores que no tengan alquileres
  "rental" r on c. "customer_id" = r. "customer_id"
order by "customer_id" ; -- Se ordena por id del cliente ya que puede que algún cliente no tenga alquileres obtenidos

