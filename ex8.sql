-- Trouver tous les officiers et intermédiaires qui ont une association

SELECT 
  o.name AS "Nom officier", 
  i.name AS "Nom intermediare"
FROM 
  assoc_inter_offi aio
JOIN 
  officer o ON aio.officer = o.id
JOIN 
  intermediary i ON aio.inter = i.id;