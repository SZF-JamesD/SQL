USE shop_db_down;

/*
SELECT k.vorname, k.nachname, a.bezeichnung, v.menge, v.datum
FROM Verkauf v
JOIN Kunden k ON v.kunden_id = k.kunden_id
JOIN Artikel a ON v.artikel_id = a.artikel_id;    
*/

-- SELECT * FROM Kunden;

-- SELECT * FROM Lieferanten;

-- SELECT lagerbestand FROM Artikel WHERE artikel_id = 1;

-- SELECT * FROM Verkauf WHERE kunden_id = 1;

-- SELECT * FROM Verkauf WHERE lieferanten_id = 1;

-- SELECT * FROM Artikel WHERE preis < 50;

/*SELECT SUM(preis * menge) AS total_revenue FROM Verkauf
	JOIN Artikel ON Verkauf.artikel_id = Artikel.artikel_id;*/

-- SELECT ROUND(AVG(preis), 2) AS average_preis FROM Artikel;
/*
SELECT lagerbestand FROM Artikel WHERE artikel_id = 1;
UPDATE Artikel SET lagerbestand = lagerbestand + 5 WHERE artikel_id = 1;
SELECT lagerbestand FROM Artikel WHERE artikel_id = 1;*/

/*
START TRANSACTION;

SELECT * FROM Verkauf;
SELECT * FROM Kunden;

DELETE FROM Verkauf WHERE kunden_id = 1;
DELETE FROM Kunden WHERE kunden_id = 1;

SELECT * FROM Verkauf;
SELECT * FROM Kunden;

ROLLBACK;
*/
/*
START TRANSACTION;

SELECT * FROM Verkauf;
SELECT * FROM Artikel;

DELETE FROM Verkauf WHERE artikel_id = 1;
DELETE FROM Artikel WHERE artikel_id = 1;

SELECT * FROM Verkauf;
SELECT * FROM Artikel;

ROLLBACK;
*/

/*SELECT v.*, k.*, l.*, a.*
	FROM Verkauf v
		JOIN Kunden k on v.kunden_id = k.kunden_id
		JOIN Lieferanten l on v.lieferanten_id = l.lieferanten_id
		JOIN Artikel a ON v.artikel_id = a.artikel_id;*/
/*
SELECT a.*, l.*
	FROM Artikel a
		LEFT JOIN Verkauf v ON a.artikel_id = v.artikel_id
		LEFT JOIN Lieferanten l ON v.lieferanten_id = l.lieferanten_id;
*/
