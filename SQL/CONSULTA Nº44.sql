-- Realizar un CROSS JOIN entre las tablas "film" y "category". Ver si aporta valor esta consulta

select 
  f. "title",
  c. "name"
from 
  "film" f
cross join
  "category" c ; /* Este conector te aporta todas las combinaciones posibles 
  pero lo cierto es que no muestra la categoría real por película, 
  para ello habría que hacer un join intermedio con la tabla "film_category"
  */
  
