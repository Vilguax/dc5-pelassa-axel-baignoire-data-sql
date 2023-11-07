-- Trouver les entités sans officiers associés

SELECT
    e.name AS "Nom entité"
FROM
    entity e
    LEFT JOIN assoc_officer_entity aoe ON e.id = aoe.entity
WHERE
    aoe.officer IS NULL;