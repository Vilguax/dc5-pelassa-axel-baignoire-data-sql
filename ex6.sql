-- Trouver tous les intermédiaires et leurs adresses associées

SELECT 
    i.name AS "Nom de l'intermédiaire", 
    a.address AS "Adresse de l'intermédiaire", 
    a.countries AS "Pays de l'intermédiaire"
FROM 
    intermediary i 
JOIN 
    address a ON i.id_address = a.id_address;