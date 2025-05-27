/* título de las películas en la tabla “film” que no sean ni ‘NC-
17’ ni ‘G’ en cuanto a su clasificación
*/
select "title" , "rating"
from "film"
where "rating" not in ('NC-17' , 'G')
order by "title" asc; 