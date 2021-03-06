USE [master]
GO
/****** Object:  Database [PioneerEmployeeDB]    Script Date: 8/8/2017 12:20:38 PM ******/
CREATE DATABASE [PioneerEmployeeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PioneerEmployeeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\PioneerEmployeeDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PioneerEmployeeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\PioneerEmployeeDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PioneerEmployeeDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PioneerEmployeeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PioneerEmployeeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PioneerEmployeeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PioneerEmployeeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PioneerEmployeeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PioneerEmployeeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET RECOVERY FULL 
GO
ALTER DATABASE [PioneerEmployeeDB] SET  MULTI_USER 
GO
ALTER DATABASE [PioneerEmployeeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PioneerEmployeeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PioneerEmployeeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PioneerEmployeeDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PioneerEmployeeDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PioneerEmployeeDB', N'ON'
GO
ALTER DATABASE [PioneerEmployeeDB] SET QUERY_STORE = OFF
GO
USE [PioneerEmployeeDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PioneerEmployeeDB]
GO
/****** Object:  Table [dbo].[Company_Details]    Script Date: 8/8/2017 12:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company_Details](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Employer_Name] [varchar](50) NULL,
	[Contact_Number] [bigint] NULL,
	[Location] [varchar](50) NULL,
	[Website] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education_Details]    Script Date: 8/8/2017 12:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education_Details](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[CourseType] [varchar](50) NULL,
	[YearOfPass] [int] NULL,
	[CourseSpecialisation] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Details]    Script Date: 8/8/2017 12:20:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Details](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile_Number] [bigint] NULL,
	[AlternateMobileNumber] [bigint] NULL,
	[Address1] [varchar](100) NULL,
	[Adress2] [varchar](100) NULL,
	[Current_Country] [varchar](25) NULL,
	[Home_Country] [varchar](25) NULL,
	[Zipcode] [bigint] NULL,
 CONSTRAINT [PK__Bio__7AD04FF1871ACFF4] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Details]    Script Date: 8/8/2017 12:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Details](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[Project_Name] [varchar](50) NULL,
	[Client_Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Roles] [varchar](50) NULL,
	[EmployeeID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technical_Details]    Script Date: 8/8/2017 12:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technical_Details](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Programming_Languages] [varchar](25) NULL,
	[Databases] [varchar](25) NULL,
	[ORM_Technologies] [varchar](25) NULL,
	[UI] [varchar](25) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Company_Details]  WITH CHECK ADD  CONSTRAINT [FK__Company_D__Emplo__2A4B4B5E] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_Details] ([EmployeeID])
GO
ALTER TABLE [dbo].[Company_Details] CHECK CONSTRAINT [FK__Company_D__Emplo__2A4B4B5E]
GO
ALTER TABLE [dbo].[Education_Details]  WITH CHECK ADD  CONSTRAINT [FK__Education__Cours__30F848ED] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_Details] ([EmployeeID])
GO
ALTER TABLE [dbo].[Education_Details] CHECK CONSTRAINT [FK__Education__Cours__30F848ED]
GO
ALTER TABLE [dbo].[Project_Details]  WITH CHECK ADD  CONSTRAINT [FK__Project_D__Emplo__2F10007B] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_Details] ([EmployeeID])
GO
ALTER TABLE [dbo].[Project_Details] CHECK CONSTRAINT [FK__Project_D__Emplo__2F10007B]
GO
USE [master]
GO
ALTER DATABASE [PioneerEmployeeDB] SET  READ_WRITE 
GO
