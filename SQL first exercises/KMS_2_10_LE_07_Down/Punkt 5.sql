USE bibliothek;

/*TRUNCATE TABLE ausleihe;

INSERT INTO ausleihe (ausleiheID, exemplarID, von, bis, isbn, titel, fachbuchID)
VALUES 
    (1, 1, '2023-11-01', '2023-11-30', '1111', 'Applikationsentwicklung Fundamentals', 1),
    (2, 1, '2023-11-15', '2023-12-15', '3333', 'IT Technik - Bertriebstechnik Fundmantals', 3),
    (3, 2, '2023-12-01', '2023-12-31', '5555', 'IT Technik - Systemtechnik Fundamentals', 5),
    (4, 1, '2023-12-10', '2024-01-10', '7777', 'Elektrotechnik I', 7),
    (5, 1, '2023-12-20', '2024-01-20', '9999', 'Robotik', 9);*/


SELECT 
    f.isbn AS book_isbn, 
    f.titel AS book_title, 
    a.isbn AS loan_isbn, 
    a.titel AS loan_title, 
    a.von AS loan_start, 
    a.bis AS loan_end
FROM 
    fachbuch f
JOIN 
    ausleihe a ON f.fachbuchID = a.fachbuchID;