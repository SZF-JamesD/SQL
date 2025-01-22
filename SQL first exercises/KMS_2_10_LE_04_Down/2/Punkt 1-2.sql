DROP TABLE IF EXISTS mageschenk;

CREATE TABLE IF NOT EXISTS mageschenk(
	geschenkID SMALLINT PRIMARY KEY,
    artikel VARCHAR(200) NOT NULL UNIQUE,
	pries DECIMAL(5,2) NOT NULL,
    jahrzugehörigkeit SMALLINT NOT NULL);
    
INSERT INTO mageschenk
(geschenkID, artikel, pries, jahrzugehörigkeit)
VALUES 
	(1, 'Book', 199.99, 10), 
    (2, 'Pen', 14.99, 2), 
    (3, 'Book', 49.99, 5);

-- the database error 1062, says that there was a duplicate entr for 'Book' for key 'mageschenk.atrikel'. This is because it would no longer be unique
-- and therefore break the rules set for the column. 