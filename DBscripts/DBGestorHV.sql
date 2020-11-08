CREATE DATABASE [GestorHV]
GO
USE [GestorHV]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/11/2020 12:41:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[names] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[rol] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spLogin]    Script Date: 8/11/2020 12:41:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLogin]
(
	@pEmail varchar(50),
	@pPassword varchar(200)	
)
AS
	BEGIN
		SELECT u.id, u.email, u.password, u.rol
		FROM Users u
		WHERE u.email = @pEmail and u.password = @pPassword
	END
GO
