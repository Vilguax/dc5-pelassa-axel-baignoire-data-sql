-- Trouver le nombre d'entités associées à chaque intermédiaire

SELECT
    i.name AS "Nom intermédiaire",
    COUNT(e.id) AS "Nombre d'entités"
FROM
    intermediary i
JOIN
    assoc_inter_entity aie ON aie.inter = i.id
JOIN
    entity e ON aie.entity = e.id
GROUP BY
    i.name;