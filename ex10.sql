-- Trouver tous les officiers qui n'ont pas d'URL associée

SELECT
    o.name AS "Nom officier"
FROM
    officer o
WHERE 
    o.url IS NULL;