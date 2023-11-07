-- Trouver tous les intermédiaires et leurs adresses associées

SELECT i.name, a.address, a.countries FROM intermediary i JOIN address a ON i.id_address = a.id_address;