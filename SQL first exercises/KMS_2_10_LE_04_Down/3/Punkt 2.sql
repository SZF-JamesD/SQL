USE uebungsdatenbank;

DROP TABLE IF EXISTS produktionsmaschinen;

CREATE TABLE IF NOT EXISTS produktionsmaschinen(
	globalID INTEGER PRIMARY KEY,
	maschinenID INTEGER UNIQUE,
    variante INTEGER UNIQUE,
    bezeichung VARCHAR(200));
    
INSERT INTO produktionsmaschinen (globalID, maschinenid, variante, bezeichung) VALUES
(1, 1, 1, 'Drill Type A'),
(2, 2, 2, 'Drill Type A - High Power Version'),
(3, 3, 3, 'Laithe Model X'),
(4, 4, 4, 'Laithe Model x - Precision Version');

SELECT * FROM produktionsmaschinen;
    