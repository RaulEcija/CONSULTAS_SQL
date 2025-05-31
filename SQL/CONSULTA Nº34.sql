-- Listado de 5 clientes que más dinero se han gastado
select
  c. "customer_id", 
  CONCAT("first_name", ' ', "last_name") as "cliente",
  SUM(p. "amount") as "total_gastado"
from "customer" c
join 
  "payment" p on c. "customer_id" = p. "customer_id"
group by c. "customer_id", "cliente"
order by "total_gastado" desc
limit 5 ;
