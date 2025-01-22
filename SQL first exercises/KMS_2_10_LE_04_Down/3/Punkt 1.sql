CREATE TABLE IF NOT EXISTS produktionsmaschinen(
	maschinenID INTEGER,
    variante INTEGER,
    bezeichung VARCHAR(200),
	PRIMARY KEY (maschinenID, variante));
    
INSERT INTO produktionsmaschinen (maschinenid, variante, bezeichnung) VALUES
(1, 1, 'Drill Type A'),
(1, 2, 'Drill Type A - High Power Version'),
(2, 1, 'Laithe Model X'),
(2, 2, 'Laithe Model x - Precision Version');
    