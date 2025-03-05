USE bibliothek;

-- DROP TABLE verlag, fachbuch, fachbereich, fachbereichfachbuch, ausleihe;

CREATE TABLE IF NOT EXISTS verlag(
	verlagID INTEGER PRIMARY KEY,
    verlag VARCHAR(255)
    );
    
CREATE TABLE IF NOT EXISTS fachbuch(
	fachbuchID INTEGER PRIMARY KEY,
    ISBN INTEGER,
    titel VARCHAR(255),
    verlagID INTEGER,
    FOREIGN KEY (VerlagID) REFERENCES Verlag(VerlagID)
    );
    
CREATE TABLE IF NOT EXISTS fachbereich(
	fachbereichsID INTEGER PRIMARY KEY,
    titel VARCHAR(255)
    );

CREATE TABLE IF NOT EXISTS fachbereichfachbuch (
    fachbereichsID INTEGER,
    fachbuchID INTEGER,
    PRIMARY KEY (fachbereichsID, fachbuchID),
    FOREIGN KEY (fachbereichsID)
        REFERENCES fachbereich (fachbereichsID),
    FOREIGN KEY (fachbuchID)
        REFERENCES fachbuch (fachbuchID)
);

CREATE TABLE IF NOT EXISTS ausleihe (
	ausleiheID INTEGER,
    exemplarID INTEGER,
    von DATE,
    bis DATE,
    isbn INTEGER,
    titel VARCHAR(255),
    fachbuchID INTEGER,
    PRIMARY KEY (ausleiheID, exemplarID),
    FOREIGN KEY (fachbuchID)
		REFERENCES fachbuch(fachbuchID));
       
INSERT INTO verlag (verlagID, verlag)
	VALUES(1, 'Programmier Verlag'),
    (2, 'IT Technik Verlag'),
    (3, 'Elektrotechnik Verlag'),
    (4, 'Automatisierung Verlag'),
    (5, 'Medien Verlag');
    
INSERT INTO fachbuch (fachbuchID, ISBN, titel, verlagID)
	VALUES(1, 1111, 'Applikationsentwicklung Fundamentals', 1),
    (2, 2222, 'Applikationsentwicklung Advanced', 1),
    (3, 3333, 'IT Technik - Bertriebstechnik Fundmantals', 2),
    (4, 4444, 'IT Technik - Betriebstechnik Advanced', 2),
    (5, 5555, 'IT Technik - Systemtechnik Fundamentals', 2),
    (6, 6666, 'IT Technik - Systemtechnik Advanced', 2),
    (7, 7777, 'Elektrotechnik I', 3),
    (8, 8888, 'Elektrotechnik II', 3),
    (9, 9999, 'Robotik', 4);
    
INSERT INTO fachbereich (fachbereichsID, titel)
	VALUES (1, 'Applikationsentwicklung'),
    (2, 'IT Technik'),
    (3, 'Elektrotechnik'),
    (4, 'Automatisierungstechnik');
    
INSERT INTO fachbereichfachbuch (fachbereichsID, fachbuchID)
		VALUES (1, 1),
        (1,2),
        (2,3),
        (2,4),
        (2,5),
        (2,6),
        (3,7),
        (3,8),
        (4,9);