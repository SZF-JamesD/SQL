USE uebungsdatenbank;

SELECT 
    m.name, 
    m.vorname,
	m.steuerklasse
FROM 
	mitarbeiter m
WHERE 
	 m.steuerklasse IS NOT NULL AND NOT EXISTS (
     SELECT 1
     FROM steuerklasse sk
     WHERE sk.steuerklasseID = m.steuerklasse 
     );