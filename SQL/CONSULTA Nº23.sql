-- Números de alquiler por día

select DATE("rental_date") as "fecha", COUNT(*) as "cantidad_alquileres"
from "rental"
group by DATE("rental_date")
order by "cantidad_alquileres" desc ; -- Ordenado por cantidad de alquiler en descenso
