IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'vt')
EXEC sys.sp_executesql N'CREATE SCHEMA [vt]'
GO
