-- Lister les entités et leurs pays d'origine
SELECT 
    e.name AS "Nom entité", 
    c.country AS "Pays d'origine"
FROM 
    entity e
JOIN 
    address a ON e.id_address = a.id_address
JOIN 
    country c ON a.countries = c.code
