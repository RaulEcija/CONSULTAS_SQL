/* promedio de duración de las películas para cada
clasificación de la tabla film
*/
select "rating", ROUND(AVG("length"), 2) as "Promedio_duracion_pelicula" --Redondeo el promedio a dos decimales
from "film"
group by "rating"
order by "Promedio_duracion_pelicula" desc; -- Ordeno por promedio de mayor a menor
