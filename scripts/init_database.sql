/*
==============================================
Create Database and Schema
==============================================
Script Purpose:
    This script creates a new database named 'Data Warehouse' after checking if it already exists. If the database exists, it is dropped and recreated. Additionally, the script creates three schemas within the database named 'bronze', 'silver', 'gold'.

WARNING:
    Running this script will drop the entire database if it already exists. All data in the database will be deleted permanently. Proceed with caution and ensure you have proper backups before running the script. 
*/



USE master;
GO

-- Drop and recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO --GO is a separator when working with multiple statements
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
