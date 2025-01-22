USE uebungsdatenbank;
-- SELECT * FROM steuerklasse;
SELECT 
    m.name, 
    m.vorname,
    m.steuerklasse
	FROM mitarbeiter m
    WHERE 
    m.steuerklasse NOT IN (SELECT sk.steuerklasseid FROM steuerklasse sk);