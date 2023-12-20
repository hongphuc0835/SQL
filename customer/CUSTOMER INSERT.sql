use Example5
go

SET IDENTITY_INSERT Customer ON;
INSERT INTO Customer (customerid,customerName,contactName,city) values (1,'alfreds','maria anders','belin')
INSERT INTO Customer (customerid,customerName,contactName,city) values (2,'qdwfwe','wdwaf','anh')
SET IDENTITY_INSERT Customer OFF;