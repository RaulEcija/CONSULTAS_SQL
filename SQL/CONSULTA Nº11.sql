-- Coste del antepenúltimo alquiler, ordenador por día
select "amount"as "coste_alquiler"
from "payment"
order by "payment_date"
limit 1 offset (
  select COUNT("amount") - 3
  from "payment"
  ); 