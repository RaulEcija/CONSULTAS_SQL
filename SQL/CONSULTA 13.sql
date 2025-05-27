 /*promedio de duración de las películas para cada
clasificación de la tabla film
 */
 select "rating" , ROUND(AVG("length"), 2) as "Promedio_duracion_pelicula" -- Dejo redondeado el promedio a 2 decimales
 from "film"
 group by "rating"
 order by "Promedio_duracion_pelicula" desc; -- Ordeno de más a menos promedio
 