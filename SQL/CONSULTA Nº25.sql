-- Número de alquileres registrados por mes

select TO_CHAR(DATE_TRUNC('month', "rental_date"), 'YYYY-MM') as "Mes", COUNT(*) as "Total_alquileres"
from "rental"
group by "Mes" 
order by "Mes" asc; -- Ordenados de más antiguo a más actual

