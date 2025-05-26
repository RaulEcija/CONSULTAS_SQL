-- Peliculas con clasificación 'PG-13' ó tienen una duración de más de 3 horas
select "title", "rating", "length"
from "film"
where "rating" = 'PG-13' or "length" > 180; --en la tabla miden el tiempo en minutos

