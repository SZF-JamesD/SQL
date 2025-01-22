USE uebungsdatenbank;

CREATE USER IF NOT EXISTS 'franz' IDENTIFIED BY 'secret', 'maria' IDENTIFIED BY 'secret2';
CREATE ROLE IF NOT EXISTS 'vertrieb';
-- GRANT SELECT, UPDATE, INSERT ON artikel TO 'vertrieb'; 
REVOKE UPDATE, INSERT ON artikel FROM 'vertrieb';
-- GRANT 'vertrieb' to 'franz', 'maria';
FLUSH PRIVILEGES;