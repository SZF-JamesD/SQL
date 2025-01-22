USE uebungsdatenbank;

ALTER TABLE artikelinfo
	ADD PRIMARY KEY(artikelID);
    
ALTER TABLE positionartikel
	ADD CONSTRAINT fk_artikelinfo_artikelID
    FOREIGN KEY (fk_artikelinfo_artikelID) 
    REFERENCES artikelinfo(artikelID)