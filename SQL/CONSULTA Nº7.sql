--Clasificación del total de peliculas que tiene cada ratio en orden descendente
select "rating", COUNT(*) as "Cantidad_peliculas"
from "film"
group BY "rating"
order by "Cantidad_peliculas" desc; 
