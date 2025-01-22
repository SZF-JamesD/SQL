USE uebungsdatenbank;

DROP TABLE IF EXISTS produktionsmaschinen;

CREATE TABLE IF NOT EXISTS produktionsmaschinen(
	globalID INTEGER PRIMARY KEY,
    laufzeit INTEGER,
    maxlaufzeit INTEGER,
	maschinenID INTEGER UNIQUE,
    variante INTEGER UNIQUE,
    bezeichung VARCHAR(200),
    CONSTRAINT check_laufzeit CHECK (laufzeit < maxlaufzeit));
    
INSERT INTO produktionsmaschinen (globalID, laufzeit, maxlaufzeit, maschinenid, variante, bezeichung) VALUES
(1, 50, 150, 1, 101, 'Drill Type A'),
(2, 150, 300, 2, 102, 'Drill Type A - High Power Version');


SELECT * FROM produktionsmaschinen;
    