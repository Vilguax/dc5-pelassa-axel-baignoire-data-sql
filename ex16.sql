-- Trouver le nombre d'entités par pays

SELECT
    c.country as "Nom du pays",
    COUNT(e.id) AS "Nombre d'entité"
FROM
    entity e
    JOIN address a ON e.id_address = a.id_address
    JOIN country c ON a.countries = c.code
GROUP BY
    c.country;