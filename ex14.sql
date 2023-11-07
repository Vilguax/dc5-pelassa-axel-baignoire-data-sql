-- Trouver les entités qui ont été actives pendant plus de 10 ans (en supposant que "lifetime" est en années)

SELECT
    e.name AS "Nom entité",
    s.source AS "Source",
    e.lifetime AS "Durée de vie"
FROM
    entity e
JOIN
    source s ON e.source = s.id
WHERE
    e.lifetime > 10;