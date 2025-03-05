USE bibliothek;

SELECT fachbuch.*, verlag.*
FROM verlag
LEFT JOIN fachbuch ON verlag.verlagID = fachbuch.verlagID;