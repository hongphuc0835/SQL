USE MASTER 
GO

IF EXISTS (SELECT * FROM sys.databases WHERE Name='Example5')
DROP DATABASE Example5
GO
CREATE DATABASE Example5
GO
USE Example5
GO

CREATE TABLE Customer(
customerid int IDENTITY(1,1) PRIMARY KEY,
customerName varchar(50),
contactName varchar(20),
city varchar(20)
);