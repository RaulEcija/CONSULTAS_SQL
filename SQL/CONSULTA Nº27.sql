-- Películas alquiladas por encima del precio medio

select "title", "rental_rate"
from "film"
where "rental_rate" > (
    select AVG("rental_rate")
    from "film"
) 
order by "rental_rate" desc ; -- Ordenadas de mayor precio de alquiler a menor, siempre por encima del promedio
