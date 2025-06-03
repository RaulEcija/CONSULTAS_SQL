 /* Nombres de los actores que han actuado en al menos una
película que pertenece a la categoría ‘Sci-Fi’
*/

select distinct -- Se utiliza distinct por si hay actores que han participado en varias películas de la misma categoría
    a. "first_name",
    a. "last_name"
from
    "actor" a
join
    "film_actor" fa on a. "actor_id" = fa. "actor_id"
join
    "film_category" fc on fa. "film_id" = fc. "film_id"
join
    "category" c on fc. "category_id" = c. "category_id"
where
    c. "name" = 'Sci-Fi'
order by 
    a. "last_name" asc, a. "first_name" asc ; /* Se ordena alfabéticamente pornombre y apellido por si hay actores 
 que tienen el mismo nombre, en este caso se les diferencia y ordena por el apallido
 */
    
 
    

