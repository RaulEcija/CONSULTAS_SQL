-- Peliculas con una duración superior al promedio

SELECT "title", "length"
FROM "film"
WHERE "length" > (
    SELECT AVG("length")
    FROM "film"
)
order by "length" ASC ;  -- Se muestran las películas que están por encima del promedio y además se ordenan por duración de menor a mayor


