((1))
DELETE FROM Customer WHERE Country = 'Spain';


((2))
UPDATE `Order` SET OrderDate = '2021-06-20', ShipCountry = 'Germany' WHERE CustomerId = 'VICTE';


((3))
INSERT INTO Shipper (CompanyName, Phone) 
VALUES ('COBOL', '(503) 555-1515'), ('FISCHER', '(503) 555-1010'), ('SAITO', '(503) 555-2525');


((4))
SELECT * FROM Product WHERE UnitPrice < 50 and Discontinued = 1;


((5))
CREATE TABLE "Transfer" (
"id" INTEGER, 
"transfer_method" TEXT NOT NULL DEFAULT 'By Post',
PRIMARY KEY("id" AUTOINCREMENT)
);

ALTER TABLE `Order` ADD COLUMN TransferMethod INTEGER REFERENCES Transfer(transfer_method);


