USE uebungsdatenbank;

ALTER TABLE artikelaktuell
	ADD CONSTRAINT check_preise CHECK (preis < 1000);