 /* Encuentra el nombre y apellido de los actores que han actuado en
películas que se alquilaron después de que la película ‘Spartacus
Cheaper’ se alquilara por primera vez. Ordena los resultados
alfabéticamente por apellido
 */
 
 select distinct -- Se utiliza distinct para que solo nos aparezca una vez cada actor
    a. "first_name",
    a. "last_name"
from 
    "actor" a
join 
    "film_actor" fa on a. "actor_id" = fa. "actor_id"
join
    "inventory" i on fa. "film_id" = i. "film_id"
join 
    "rental" r on i. "inventory_id" = r. "inventory_id"
where -- Se hace una subconsulta para sacar la fecha más antigua en la que se alquiló la película
    r. "rental_date" > (
        select MIN(r2. "rental_date")
        from "film" f2
        join "inventory" i2 on f2. "film_id" = i2. "film_id"
        join "rental" r2 on i2. "inventory_id" = r2. "inventory_id"
        where f2. "title" = 'SPARTACUS CHEAPER'
    )
order by 
    a. "last_name" asc, a. "first_name" asc ; -- Se ordena por nombre y apellido por si hay nombres reptidos
    
 
