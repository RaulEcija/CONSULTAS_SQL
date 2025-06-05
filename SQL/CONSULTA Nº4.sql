--Titulos de las películas cuyo idioma coincide con el original

select "title"
from "film"
where "language_id" = "original_language_id"
   or "original_language_id" is null ; /* Es importante hacer este otro filtro ya que al probar he visto que ya había 
   películas con un idioma original que además era el principal */
   






