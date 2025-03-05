USE bank;

-- DROP TABLE IF EXISTS accounts;

CREATE TABLE IF NOT EXISTS accounts(
	kontonummer INTEGER PRIMARY KEY,
    kontoinhaber VARCHAR(255),
    kontostand DECIMAL(10, 2));
    
INSERT INTO accounts(kontonummer, kontoinhaber, kontostand)
	VALUES(123456789, 'Jimbo Jimmieson', 9546.12),
    (321321321, 'Money McMoneyson', 9999999.99),
    (987654321, 'Bob', 31.40);