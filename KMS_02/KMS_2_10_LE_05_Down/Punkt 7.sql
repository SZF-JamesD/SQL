USE uebungsdatenbank;

SELECT 
    name, vorname
FROM
    niederlassungholland 
UNION SELECT 
    name, vorname
FROM
    niederlassungbelgien
ORDER BY name;

    
