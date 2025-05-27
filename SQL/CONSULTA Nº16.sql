-- Listado de clientes con mayor valor de 'id'
select "customer_id"
from "customer"
order by "customer_id" DESC
limit 10; -- Solo muestro el listado de los 10 clientes con mayor valor 'id'

