USE uebungsdatenbank;

CREATE USER IF NOT EXISTS 'james'
IDENTIFIED BY 'secret';
GRANT SELECT, UPDATE, INSERT
ON artikel
TO 'james';