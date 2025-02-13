/*
**************************
Script create Database and  Scemas
**************************
Script contain:
				Create a new database named "DataWarehouse" after checking if exist or not
				If the database exist will droped then recreate the database
        There are three Schemas Bromze,Silver and Gold to handle data with three layers
**************************
*/

USE master ;
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
-- Create database DataWarehouse
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO

-- Create scema bronze for bronze layer
CREATE SCHEMA Bronze;
GO
-- Create scema silver for silver layer
CREATE SCHEMA Silver;
GO
-- Create scema gold for gold layer
CREATE SCHEMA Gold;
GO
