USE uebungsdatenbank;

SELECT 
    name, vorname
FROM
    mitarbeiter
WHERE
    mitarbeiterid IN (SELECT 
		mitarbeiterid
        from sachpraemie)