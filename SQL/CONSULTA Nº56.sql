-- Actores que no han actuado en ninguna de las peliculas dentro de la categoría 'Music'

select a. "first_name" as "nombre_actor", a. "last_name" as "apellido_actor"  
from "actor" a
where a. "actor_id" not in ( /* Se utiliza not in para saber los id de actores que 
no están entre lo mostrado en la subconsulta siguiente*/
    select fa. "actor_id"
    from "film_actor" fa
    join "film" f on fa. "film_id" = f. "film_id"
    join "film_category" fc on f. "film_id" = fc. "film_id"
    join "category" c on fc. "category_id" = c. "category_id"
    where c. "name" = 'Music' /* Se utiliza una subconsulta para mostrar los id de los actores que han participado
 en películas con la categoría solicitada*/
) 
order by 
  a. "first_name" asc, a. "last_name" asc ;
