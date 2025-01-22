USE uebungsdatenbank;

DROP VIEW v_mitarbeiterkrankenkasse;

CREATE VIEW v_mitarbeiterkrankenkasse AS
SELECT m.mitarbeiterid, m.name, m.vorname, m.krankenversicherung
FROM mitarbeiter m;

INSERT INTO v_mitarbeiterkrankenkasse (mitarbeiterid, name, vorname, krankenversicherung)
VALUES ((SELECT COALESCE(MAX(mitarbeiterid), 0) +1 FROM mitarbeiter) ,'Doe', 'John', 'ÖGK');

SELECT * FROM v_mitarbeiterkrankenkasse;

