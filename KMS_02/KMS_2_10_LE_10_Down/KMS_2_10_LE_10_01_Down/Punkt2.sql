USE uebungsdatenbank;

SELECT 
    m.name, 
    m.vorname,
    coalesce((SELECT SUM(sp.preis)
			FROM sachpraemie sp
			WHERE sp.mitarbeiterid = m.mitarbeiterid), 0) AS total_preis
FROM
    mitarbeiter m
WHERE
    m.mitarbeiterid IN (SELECT 
		mitarbeiterid
        from sachpraemie)