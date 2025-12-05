IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'gadoe')
EXEC sys.sp_executesql N'CREATE SCHEMA [gadoe]'
GO
