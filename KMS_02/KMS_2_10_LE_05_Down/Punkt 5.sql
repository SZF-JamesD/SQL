USE uebungsdatenbank;

SELECT DISTINCT
    name, vorname
FROM
    niederlassungholland
WHERE
    (name , vorname) NOT IN (SELECT DISTINCT
            name, vorname
        FROM
            niederlassungbelgien);


    
