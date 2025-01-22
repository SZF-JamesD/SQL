USE uebungsdatenbank;
-- DROP VIEW v_praemie;
CREATE VIEW v_praemie AS
    SELECT 
        m.name, 
        m.vorname, 
        sp.praemie, 
        sp.grund
    FROM
        mitarbeiter m
	JOIN
        sachpraemie sp ON m.mitarbeiterid = sp.mitarbeiterid;
        
-- SELECT * FROM v_praemie;