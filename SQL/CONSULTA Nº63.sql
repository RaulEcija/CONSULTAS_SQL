-- Todas las combinaciones posibles con las tiendas que se tienen

select 
  s. "staff_id" as "id_empleado", 
  s. "first_name" as "nombre_empleado",
  s. "last_name" as "apellido_empleado",
  st. "store_id" as "id_tienda"
from 
  "staff" s
cross join -- se utiliza cross join para que muestre todas las combinaciones posibles entre estas dos tablas
  "store" st
order by   
  "id_empleado", "id_tienda" ; -- se ordena primero por empleado y despues por tienda, así facilita la lectura
  

