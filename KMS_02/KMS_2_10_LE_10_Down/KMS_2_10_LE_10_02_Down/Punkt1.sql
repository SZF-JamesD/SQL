USE uebungsdatenbank;

CREATE VIEW v_urlaub AS
    SELECT 
        name, vorname, urlaubstage, urlaubgenommen
    FROM
        mitarbeiter;
        
-- SELECT * FROM v_urlaub;