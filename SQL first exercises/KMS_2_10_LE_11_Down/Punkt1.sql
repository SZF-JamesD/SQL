USE uebungsdatenbank;

CREATE INDEX index_arbeitszeit_mitarbeiter ON arbeitszeit(mitarbeiterid);

EXPLAIN SELECT arbeitstag, kommen, gehen, anzahlstunden
FROM arbeitszeit
WHERE mitarbeiterid = 2;

SELECT * from arbeitszeit;