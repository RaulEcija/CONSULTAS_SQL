-- Películas que tienen la misma duración que la película con el título ‘Dancing Fever’

select "title"
from "film"
where "length" = ( -- Se filtra por la duración igual a la siguiente subconsulta
    select "length"
    from "film"
    where "title" = 'DANCING FEVER' /* se crea una subconsulta para saber la duración de una película concreta
    , es decir, la requerida en el enunciado de la consulta principal
     */
)
order by "title" asc ; -- Ordenados alfabéticamente por título de película



