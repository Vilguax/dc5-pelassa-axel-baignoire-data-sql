-- Lister les entités et leurs sources

SELECT
    e.name AS "Nom entité",
    s.source AS "Source"
FROM
    entity e
JOIN
    source s ON e.source = s.id;