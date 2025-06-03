-- Creación de la vista que muestre el numero de películas en las que ha participado cada actor

create view actor_num_peliculas as 
select
    a."first_name",
    a."last_name",
    COUNT(fa. "film_id") as "cantidad_peliculas"
from
    "actor" a
join 
    "film_actor" fa on a. "actor_id" = fa. "actor_id"
group by  
    a."actor_id", a. "first_name", a. "last_name" ;

select *
from actor_num_peliculas 
order by "cantidad_peliculas" desc ; /* Se muestra la vista 
y se ordena de más a menos porque no hay que ordenarla cuando se crea.
*/



