-- Trouver les entités qui ont des associations avec des officiers de plus de 2 pays différents

SELECT
    e.name AS "Nom de l'entité",
    COUNT(DISTINCT o.country_id) AS "Nombre de pays"
FROM
    entity e
    JOIN assoc_officer_entity aoe ON e.id = aoe.entity
    JOIN officer o ON aoe.officer = o.id
GROUP BY
    e.name
HAVING
    COUNT(DISTINCT o.country_id) > 2
ORDER BY
    COUNT(DISTINCT o.country_id) DESC;
