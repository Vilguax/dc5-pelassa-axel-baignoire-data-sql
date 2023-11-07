-- Lister les intermédiaires qui ont des associations avec plus de 5 entités

SELECT
    i.name as "Nom de l'intermédiaire",
    COUNT(aie.entity) AS "Nombre d'entités"
FROM
    intermediary i
    JOIN assoc_inter_entity aie ON i.id = aie.inter
GROUP BY
    i.name
HAVING
    COUNT(aie.entity) > 5
ORDER BY
    COUNT(aie.entity) DESC;