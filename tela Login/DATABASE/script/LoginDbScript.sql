CREATE DATABASE LoginOAuth2Db
GO

Use LoginOAuth2Db
GO

CREATE TABLE UserTb
(
Id INT IDENTITY PRIMARY KEY,
Nome VARCHAR (60) not null,
Age DATETIME null,
UserPassword VARBINARY (32) not null,
Picture VARBINARY (MAX) null,
DateSign DATETIME DEFAULT GETDATE()
)
GO

CREATE TABLE UserDataLog
(
UserDataLogId INT IDENTITY PRIMARY KEY,
UserId INT not null,
DescriptionLog NVARCHAR (30),
LastPassword VARBINARY (32) null,
LastPicture VARBINARY (MAX) null,
DateOcurrendLog DATETIME DEFAULT GETDATE()
)
GO

CREATE TABLE UserSystemLog
(
UserSystemLog INT IDENTITY PRIMARY KEY,
UserId INT not null,
DescriptionLog NVARCHAR (30) not null,
DateOcurrendLog DATETIME DEFAULT GETDATE()
)
GO

CREATE TABLE AutentificationMethod
(
Id INT IDENTITY PRIMARY KEY,
MethodName VARCHAR (10) not null,
MethodDescription NVARCHAR (100) not null
)
GO

CREATE TABLE UserAutentificationMethod
(
UserId INT not null,
MethodId INT not null,
CONSTRAINT PK_UserId_MethodId PRIMARY KEY (UserId, MethodId),
CONSTRAINT FK_UserAutentificationMethod_UserTb_UserId FOREIGN KEY (UserId) REFERENCES UserTb (Id),
CONSTRAINT FK_UserAutentificationMethod_AutentificationMethod_MethodId FOREIGN KEY (MethodId) REFERENCES AutentificationMethod (Id)

)
GO