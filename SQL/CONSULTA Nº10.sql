--Peliculas con mayor y menor duración de la BBDD
SELECT 'Película más larga'as Pelicula, "title", "length"
FROM "film"
WHERE "length" = (SELECT MAX("length") FROM "film" WHERE "length" IS NOT NULL)

UNION ALL

SELECT 'Película más corta'as pelicula, "title", "length"
FROM "film"
WHERE "length" = (SELECT MIN("length") FROM "film" WHERE "length" IS NOT NULL);





