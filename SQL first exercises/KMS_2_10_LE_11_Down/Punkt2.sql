USE uebungsdatenbank;

CREATE INDEX index_plzort ON kreditinstitutneu(ort, plz);

SELECT * FROM kreditinstitutneu WHERE ort='Berlin' AND plz=10789;

DROP INDEX index_plzort ON kreditinstitutneu;
DROP INDEX index_arbeitszeit_mitarbeiter ON arbeitszeit;