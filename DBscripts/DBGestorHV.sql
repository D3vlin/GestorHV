CREATE DATABASE [GestorHV]
GO
USE [GestorHV]
GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 8/11/2020 3:42:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nit] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](50) NULL
) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[spRegisterSponsor]    Script Date: 8/11/2020 3:42:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spRegisterSponsor](
@pNit varchar(50),
@pNames varchar(50),
@pAddress varchar(50),
@pUNames varchar(50),
@pEmail varchar(50),
@pPassword varchar(50),
@pRol varchar(50)
)
AS
	BEGIN
		insert into Sponsors(nit, name, address)
		values(@pNit, @pNames, @pAddress)
		insert into Users(names, email, password, rol)
		values(@pUNames, @pEmail, @pPassword, @pRol)
	END
GO
