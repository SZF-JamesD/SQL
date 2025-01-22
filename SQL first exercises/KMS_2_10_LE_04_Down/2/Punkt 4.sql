DROP TABLE IF EXISTS mageschenk;

CREATE TABLE IF NOT EXISTS mageschenk(
	geschenkID SMALLINT PRIMARY KEY,
    artikel VARCHAR(200) NOT NULL UNIQUE,
	pries DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    jahrzugehörigkeit SMALLINT NOT NULL, 
    CHECK (jahrzugehörigkeit IN (5, 10, 15, 20)));
    
INSERT INTO mageschenk
(geschenkID, artikel, pries, jahrzugehörigkeit)
VALUES 
	(1, 'Book', 199.99, 10), 
    (2, 'Pen', 14.99, 5), 
    (3, 'Mug', 49.99, 6);

-- Error Code 3819. Check constraint 'mageschenk_chk_1' is vioalted. The column should only allow 5,10,15 or 20, and 6 is not in that list
-- The database will then prevent the insert to maintain the check constraint on the column. 