CREATE DATABASE IF NOT EXISTS Shop_DB_Down;

USE Shop_DB_Down;

CREATE TABLE IF NOT EXISTS Kunden(
	kunden_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    vorname VARCHAR(255),
    nachname VARCHAR(255),
    straße VARCHAR(255),
    hausnummer VARCHAR(255),
    postleitzahl INTEGER,
    stadt VARCHAR(255),
    telefonnummer VARCHAR(20),
    email VARCHAR(255)
    );
    
CREATE TABLE IF NOT EXISTS Lieferanten (
    lieferanten_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    straße VARCHAR(255),
    hausnummer VARCHAR(255),
    postleitzahl VARCHAR(10),
    stadt VARCHAR(255),
    telefonnummer VARCHAR(20),
    email VARCHAR(255)
);
    
CREATE TABLE IF NOT EXISTS Artikel(
	artikel_id INTEGER PRIMARY KEY AUTO_INCREMENT,
	bezeichnung VARCHAR(255),
    beschreibung TEXT,
    preis DECIMAL(10,2),
    lagerbestand INTEGER
    );
    
CREATE TABLE IF NOT EXISTS Verkauf(
	verkauf_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kunden_id INTEGER,
    lieferanten_id INTEGER,
    artikel_id INTEGER,
	menge INTEGER,
    datum DATE,
    FOREIGN KEY (kunden_id) 
		REFERENCES Kunden(kunden_id),
	FOREIGN KEY (lieferanten_id) 
		REFERENCES Lieferanten(lieferanten_id),
	FOREIGN KEY (artikel_id) 
		REFERENCES Artikel(artikel_id)
    );

ALTER TABLE Kunden AUTO_INCREMENT = 1;
ALTER TABLE Lieferanten AUTO_INCREMENT = 1;
ALTER TABLE Artikel AUTO_INCREMENT = 1;
ALTER TABLE Verkauf AUTO_INCREMENT = 1;

INSERT INTO Kunden (vorname, nachname, straße, hausnummer, postleitzahl, stadt, telefonnummer, email)
VALUES
('John', 'Doe', 'Main Street', '123', '12345', 'Sample City', '0123456789', 'john.doe@example.com'),
('Jane', 'Smith', 'Second Street', '456', '67890', 'Sample Town', '0987654321', 'jane.smith@example.com'),
('Alice', 'Johnson', 'Third Avenue', '789', '54321', 'Sample Village', '1234567890', 'alice.johnson@example.com'),
('Bob', 'Brown', 'Fourth Boulevard', '101', '98765', 'Sample City', '2345678901', 'bob.brown@example.com'),
('Charlie', 'Davis', 'Fifth Lane', '202', '13579', 'Sample Town', '3456789012', 'charlie.davis@example.com');

INSERT INTO Lieferanten (name, straße, hausnummer, postleitzahl, stadt, telefonnummer, email) 
VALUES
('Supplier A', 'Supplier Street A', '1A', '10115', 'Supplier City A', '+4912345678901', 'contact@supplierA.com'),
('Supplier B', 'Supplier Street B', '2B', '20225', 'Supplier City B', '+4912345678902', 'contact@supplierB.com'),
('Supplier C', 'Supplier Street C', '3C', '30335', 'Supplier City C', '+4912345678903', 'contact@supplierC.com'),
('Supplier D', 'Supplier Street D', '4D', '40445', 'Supplier City D', '+4912345678904', 'contact@supplierD.com'),
('Supplier E', 'Supplier Street E', '5E', '50555', 'Supplier City E', '+4912345678905', 'contact@supplierE.com');

INSERT INTO Artikel (bezeichnung, beschreibung, preis, lagerbestand)
VALUES
('Artikel A', 'Beschreibung für Artikel A', 19.99, 100),
('Artikel B', 'Beschreibung für Artikel B', 29.99, 300),
('Artikel C', 'Beschreibung für Artikel C', 39.99, 250),
('Artikel D', 'Beschreibung für Artikel D', 49.99, 400),
('Artikel E', 'Beschreibung für Artikel E', 69.99, 420);

INSERT INTO Verkauf (kunden_id, lieferanten_id, artikel_id, menge, datum)
VALUES
(1, 1, 1, 5, CURRENT_DATE),
(1, 1, 2, 3, CURRENT_DATE),
(2, 2, 1, 7, CURRENT_DATE),
(3, 2, 3, 2, CURRENT_DATE),
(4, 3, 4, 1, CURRENT_DATE),
(5, 4, 5, 4, CURRENT_DATE);

CREATE UNIQUE INDEX idx_email ON Kunden(email);

CREATE INDEX idx_supplier_name ON Lieferanten(name);

CREATE INDEX idx_article_price ON Artikel(preis);

CREATE INDEX idx_sales_customer_article ON Verkauf(kunden_id, artikel_id);

CREATE INDEX idx_sales_date ON Verkauf(datum);



 



