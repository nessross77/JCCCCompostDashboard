USE SUSJCCC1;
CREATE TABLE dbo.Users
(
	UserID INT IDENTITY(1,1),
	UserName varchar(50) NOT NULL,
	Passwords varchar(50) NOT NULL,
	Guids uniqueidentifier NULL,
	UserType varchar(15) NOT NULL,
	DateCreated Date NOT NULL
);

INSERT INTO dbo.Users (UserName, Passwords, DateCreated) VALUES ('user1', '12345', GETDATE());

Select * from dbo.Users;
Select * from dbo.CalendarYearAnalysis;