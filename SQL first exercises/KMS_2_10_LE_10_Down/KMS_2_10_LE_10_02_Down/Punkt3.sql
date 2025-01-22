USE uebungsdatenbank;

--DROP VIEW v_mitarbeiterbonus;

CREATE VIEW v_mitarbeiterbonus AS
SELECT m.name, m.vorname, m.bonus
FROM mitarbeiter m
JOIN bonus b ON m.mitarbeiterid = b.mitarbeiterid
ORDER BY bonus ASC;

-- SELECT * FROM v_mitarbeiterbonus;
