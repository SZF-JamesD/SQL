USE uebungsdatenbank;

ALTER TABLE artikelaktuell
	ADD CONSTRAINT unique_bezeichnung UNIQUE(bezeichnung);