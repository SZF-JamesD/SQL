USE uebungsdatenbank;

SELECT DISTINCT nb.name, nb.vorname FROM niederlassungbelgien nb
INNER JOIN niederlassungholland nh
	ON nb.name = nh.name and nb.vorname = nh.vorname;
    
