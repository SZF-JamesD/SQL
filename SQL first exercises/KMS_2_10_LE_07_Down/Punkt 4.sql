USE bibliothek;

SELECT fachbuch.titel, fachbereich.titel
FROM fachbuch
JOIN fachbereichfachbuch ON fachbuch.fachbuchID = fachbereichfachbuch.fachbuchID
JOIN fachbereich ON fachbereichfachbuch.fachbereichsID = fachbereich.fachbereichsID;