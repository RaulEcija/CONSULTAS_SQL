/* Encuentra la cantidad total de películas alquiladas por cada cliente y
muestra el ID del cliente, su nombre y apellido junto con la cantidad de
películas alquiladas*/

select 
  c. "customer_id" as "id_cliente",
  c. "first_name" as "nombre",
  c. "last_name" as "apellido",
  COUNT(r. "rental_id") as "alquileres_totales"
from "customer" c
join "rental" r on c. "customer_id" = r. "customer_id"
group by "id_cliente", "nombre", "apellido"
order by "alquileres_totales" desc ; -- Ordenados de mas alquileres en posesión a menos


