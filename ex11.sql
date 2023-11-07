-- Lister les entités et leurs intermédiaires associés

SELECT 
    e.name AS "Nom entité",
    i.name AS "Nom intermediare"
FROM 
    assoc_inter_entity aie
JOIN 
    entity e ON aie.entity = e.id
JOIN 
    intermediary i ON aie.inter = i.id;
