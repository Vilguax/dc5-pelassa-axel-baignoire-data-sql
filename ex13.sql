-- Lister les intermédiaires et le nombre d'entités et d'officiers associés

SELECT
    i.name AS "Nom intermédiaire",
    COUNT(DISTINCT e.id) AS "Nombre d'entités",
    COUNT(DISTINCT o.id) AS "Nombre d'officiers"
FROM
    intermediary i
JOIN
    assoc_inter_entity aie ON aie.inter = i.id
JOIN
    entity e ON aie.entity = e.id
JOIN
    assoc_officer_entity aoe ON aoe.entity = e.id
JOIN
    officer o ON aoe.officer = o.id
GROUP BY
    i.name;