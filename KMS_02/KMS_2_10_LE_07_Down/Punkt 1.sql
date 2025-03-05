USE bibliothek;

SELECT 
    fachbuch.titel,
    fachbuch.isbn,
    fachbuch.verlagid,
    verlag.verlag,
    verlag.verlagid
FROM
    fachbuch
        INNER JOIN
    verlag ON fachbuch.verlagid = verlag.verlagid;