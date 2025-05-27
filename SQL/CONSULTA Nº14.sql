-- Películas con duración mayor a 3 horas
select "title", "length"
from "film"
where "length" > 180
order by "length" desc;
