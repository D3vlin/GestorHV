CREATE DATABASE [GestorHV]
GO
USE [GestorHV]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 26/11/2020 3:23:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[identification] [varchar](50) NULL,
	[names] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[profession] [varchar](50) NULL,
	[userId] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nit] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[userId] [int] NOT NULL,
 CONSTRAINT [PK_Sponsors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[names] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[rol] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacancies]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[position] [varchar](50) NOT NULL,
	[contract] [varchar](50) NOT NULL,
	[salary] [varchar](50) NOT NULL,
	[experience] [varchar](50) NOT NULL,
	[sponsorId] [int] NOT NULL,
 CONSTRAINT [PK_Vacancies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Users] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Users]
GO
ALTER TABLE [dbo].[Sponsors]  WITH CHECK ADD  CONSTRAINT [FK_Sponsors_Users] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Sponsors] CHECK CONSTRAINT [FK_Sponsors_Users]
GO
ALTER TABLE [dbo].[Vacancies]  WITH CHECK ADD  CONSTRAINT [FK_Vacancies_Sponsors] FOREIGN KEY([sponsorId])
REFERENCES [dbo].[Sponsors] ([id])
GO
ALTER TABLE [dbo].[Vacancies] CHECK CONSTRAINT [FK_Vacancies_Sponsors]
GO
/****** Object:  StoredProcedure [dbo].[spAllVacanciesList]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spAllVacanciesList]
as
begin
	select v.position, v.contract, v.salary, v.experience
	from Vacancies v
end
GO
/****** Object:  StoredProcedure [dbo].[spEmployeeList]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spEmployeeList]
as
begin
	select e.identification, e.names, e.email, e.profession
	from Employees e
end
GO
/****** Object:  StoredProcedure [dbo].[spGetSponsorId]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[spGetSponsorId]
(
	@pUserId varchar(50)
)
AS
	BEGIN
		SELECT s.id
		FROM Sponsors s
		WHERE s.userId = @pUserId
	END
GO
/****** Object:  StoredProcedure [dbo].[spLogin]    Script Date: 26/11/2020 3:23:55 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[spRegisterEmployee]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spRegisterEmployee](
@pNames varchar(50),
@pEmail varchar(50),
@pPassword varchar(50),
@pRol varchar(50)
)
AS
DECLARE @vUserId INT
	BEGIN
		insert into Users(names, email, password, rol)
		values(@pNames, @pEmail, @pPassword, @pRol)
		select @vUserId = @@IDENTITY
		insert into Employees(names, email, userId)
		values(@pNames, @pEmail, @vUserId)
	END
GO
/****** Object:  StoredProcedure [dbo].[spRegisterNewVacancy]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spRegisterNewVacancy](
@pPosition varchar(50),
@pSalary varchar(50),
@pContract varchar(50),
@pExperience varchar(50),
@pSponsorId int
)
AS
	BEGIN
		insert into Vacancies(position, salary, contract, experience, sponsorId)
		values(@pPosition, @pSalary, @pContract, @pExperience, @pSponsorId)
	END
GO
/****** Object:  StoredProcedure [dbo].[spRegisterSponsor]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spRegisterSponsor](
@pNit varchar(50),
@pNames varchar(50),
@pAddress varchar(50),
@pUNames varchar(50),
@pEmail varchar(50),
@pPassword varchar(50),
@pRol varchar(50)
)
AS
DECLARE @vUserId INT
	BEGIN
		insert into Users(names, email, password, rol)
		values(@pUNames, @pEmail, @pPassword, @pRol)
		select @vUserId = @@IDENTITY
		insert into Sponsors(nit, name, address, userId)
		values(@pNit, @pNames, @pAddress, @vUserId)
	END
GO
/****** Object:  StoredProcedure [dbo].[spSponsorList]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spSponsorList]
as
begin
	select s.nit, s.name, s.address
	from Sponsors s
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateEmployee]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spUpdateEmployee](
@pIdentification varchar(50),
@pNames varchar(50),
@pEmail varchar(50),
@pProfession varchar(50),
@pUserId int
)
AS
DECLARE @vUserId INT
	BEGIN
		update Employees
		set identification=@pIdentification, names=@pNames, email=@pEmail, profession=@pProfession
		where userId=@pUserId

		update Users
		set names=@pNames, email=@pEmail
		where id=@pUserId
	END
GO
/****** Object:  StoredProcedure [dbo].[spVacanciesList]    Script Date: 26/11/2020 3:23:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spVacanciesList]
(
	@pSponsorId int
)
as
begin
	select v.position, v.contract, v.salary, v.experience
	from Vacancies v
	where v.sponsorId = @pSponsorId
end
GO
