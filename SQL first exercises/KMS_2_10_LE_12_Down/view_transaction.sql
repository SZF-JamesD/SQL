USE shop_db_down; 

/*CREATE VIEW KundenUmsätze AS
SELECT 
	k.kunden_id,
    k.vorname,
    k.nachname,
    SUM(v.menge * a.preis) AS total_sales
FROM 
    Kunden k
LEFT JOIN 
    Verkauf v ON k.kunden_id = v.kunden_id
LEFT JOIN 
    Artikel a ON v.artikel_id = a.artikel_id
GROUP BY 
    k.kunden_id, k.vorname, k.nachname;
 
SELECT * FROM KundenUmsätze;*/

/*
SELECT * FROM Artikel;
SELECT * FROM Verkauf;

START TRANSACTION;

UPDATE Artikel
SET lagerbestand = lagerbestand - 2
WHERE artikel_id = 1;

INSERT INTO Verkauf (kunden_id, artikel_id, lieferanten_id, menge, datum)
VALUES (1, 1, 1, 2, CURRENT_DATE);

SELECT * FROM Artikel;
SELECT * FROM Verkauf;

ROLLBACK;
-- COMMIT;


SELECT * FROM Artikel;
SELECT * FROM Verkauf;*/

/*
SELECT * FROM Kunden;
SELECT * FROM Verkauf;

START TRANSACTION;

INSERT INTO Kunden (vorname, nachname, straße, hausnummer, postleitzahl, stadt, telefonnummer, email)
VALUES ('Jim', 'Jimmy', 'Jim Street', '123a', '1234', 'Jimton', '123123543', 'jim@jimexample.com');

SET @last_customer_id = LAST_INSERT_ID();

INSERT INTO Verkauf (kunden_id, artikel_id, lieferanten_id, menge, datum)
VALUES (@last_customer_id, 1, 1, 5, CURRENT_DATE);

SELECT * FROM Kunden;
SELECT * FROM Verkauf;

-- COMMIT;
ROLLBACK;

SELECT * FROM Kunden;
SELECT * FROM Verkauf;
*/

/*
SELECT * FROM Artikel WHERE artikel_id = 1;
SELECT * FROM Verkauf WHERE artikel_id = 1;

START TRANSACTION;

UPDATE Artikel
SET preis = 12
WHERE artikel_id = 1;

SELECT * FROM Artikel WHERE artikel_id = 1;
SELECT * FROM Verkauf WHERE artikel_id = 1;

ROLLBACK;
-- COMMIT;

SELECT * FROM Artikel WHERE artikel_id = 1;
SELECT * FROM Verkauf WHERE artikel_id = 1;
*/