-- Trouver les entités et officiers associés qui ont une relation avant une certaine date (par exemple, le 1er janvier 2010)

SELECT
    e.name AS "Nom entité",
    o.name AS "Nom officier",
    aoe.start_date AS "Date de début"
FROM
    assoc_officer_entity aoe
JOIN
    entity e ON aoe.entity = e.id
JOIN
    officer o ON aoe.officer = o.id
WHERE
    aoe.start_date < '2010-01-01';