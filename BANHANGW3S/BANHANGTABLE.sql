USE master
GO
IF EXISTS (SELECT * FROM SYS.DATABASES WHERE Name ='BANHANG')
DROP DATABASE BANHANG
GO
CREATE DATABASE BANHANG
GO
USE BANHANG
GO
 CREATE TABLE CUSTOMER (
CustomerID int identity primary key,
CustomerName varchar(100),
ContactName varchar(50),
City varchar(20),
Country varchar(20)
);
CREATE TABLE SHIPPER (
ShipperID int identity primary key,
ShipperName varchar(50),
Phone int
);
CREATE TABLE ORDERS(
OrderID int identity primary key,
CustomerID int,
EmployeeID int,
OrderDate varchar(20),
ShipperID int,
CONSTRAINT CustomerID FOREIGN KEY (CustomerID)  REFERENCES CUSTOMER(CustomerID) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ShippperID FOREIGN KEY (ShipperID) REFERENCES SHIPPER(ShipperID) ON DELETE CASCADE ON UPDATE  CASCADE
);