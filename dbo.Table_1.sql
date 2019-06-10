CREATE TABLE [dbo].[price1]
(
	[package no] INT NOT NULL PRIMARY KEY, 
    [hotel] NCHAR(10) NULL, 
    [hotel_name] NCHAR(10) NULL, 
    [room_type] NCHAR(10) NULL, 
    [adult_price] INT NULL, 
    [children_price] INT NULL, 
    [days] INT NULL, 
    [nights] INT NULL, 
    [date] DATE NULL
)
