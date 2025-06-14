/*
=======================================================================================
Create Databse nd Schemas
=======================================================================================
Script Purpose:
  This script create a new database named 'DataWarehouse' after checking if it alredy exists.
If the databse exists, it is dropped and recreated. Additionally, the script sets up three schemas
within the database: 'bronze', 'silver', 'gold'.

WARNING: 
    Running this script will drop the entire 'DataWarehouse' database if it exsists.
All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehose' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehose;
GO
  
USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
