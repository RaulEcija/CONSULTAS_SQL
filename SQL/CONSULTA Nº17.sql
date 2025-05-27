/* nombre y apellido de los actores que aparecen en la
película con título ‘Egg Igby’
*/
select
  a."first_name",
  a."last_name"
from 
  "actor" a
join 
  "film_actor" fa on a."actor_id" = fa."actor_id"
join 
  "film" f on fa."film_id" = f."film_id"
where 
  f."title" = 'EGG IGBY';
/* Para conseguir mostrar esta consulta fue necesario unir las tres tablas siguientes: 
 'actor', 'film_actor' y 'film'
 */



