-- Lister les intermédiaires qui ont des associations avec plus de 5 entités

SELECT
    i.name,
    COUNT(aie.entity) AS NumberOfEntities
FROM
    intermediary i
    JOIN assoc_inter_entity aie ON i.id = aie.inter
GROUP BY
    i.name
HAVING
    COUNT(aie.entity) > 5
ORDER BY
    NumberOfEntities DESC;