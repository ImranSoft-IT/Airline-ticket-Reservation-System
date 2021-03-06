USE [master]
GO
/****** Object:  Database [AspNetCoreProjectAirline]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE DATABASE [AspNetCoreProjectAirline];
 GO
ALTER DATABASE [AspNetCoreProjectAirline] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AspNetCoreProjectAirline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET ARITHABORT OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET  MULTI_USER 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET QUERY_STORE = OFF
GO
USE [AspNetCoreProjectAirline]
GO
/****** Object:  User [BUILTIN\Users]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE USER [BUILTIN\Users] FOR LOGIN [BUILTIN\Users]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookingFlights]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookingFlights](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[FromPlace] [nvarchar](max) NOT NULL,
	[Destination] [nvarchar](max) NOT NULL,
	[FlightDate] [nvarchar](max) NOT NULL,
	[PassengerID] [int] NULL,
	[CountryID] [int] NULL,
	[FlightID] [int] NULL,
 CONSTRAINT [PK_bookingFlights] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[countries]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Country1] [nvarchar](max) NOT NULL,
	[travelCost] [int] NULL,
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flightInfoes]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flightInfoes](
	[FlightID] [int] IDENTITY(1,1) NOT NULL,
	[FlightNunber] [nvarchar](max) NOT NULL,
	[TakeOff] [nvarchar](max) NOT NULL,
	[Landing] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_flightInfoes] PRIMARY KEY CLUSTERED 
(
	[FlightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuHelperModel]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuHelperModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[MenuModelId] [int] NULL,
 CONSTRAINT [PK_MenuHelperModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuModel]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuHelperModelId] [int] NOT NULL,
	[RollId] [nvarchar](max) NULL,
	[RollIdText] [nvarchar](max) NULL,
 CONSTRAINT [PK_MenuModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuModelManage]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuModelManage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuModelId] [int] NOT NULL,
	[Retrive] [bit] NOT NULL,
	[Insert] [bit] NOT NULL,
	[Update] [bit] NOT NULL,
	[Delete] [bit] NOT NULL,
 CONSTRAINT [PK_MenuModelManage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[passengerInfoes]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[passengerInfoes](
	[PassengerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](60) NULL,
	[LastName] [nvarchar](60) NULL,
	[DateOfBirth] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[passportNo] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_passengerInfoes] PRIMARY KEY CLUSTERED 
(
	[PassengerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentModel]    Script Date: 04 03 2020 2:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](max) NULL,
 CONSTRAINT [PK_StudentModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200304063550_myMigration', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200304073029_airlince', N'2.1.11-servicing-32099')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', N'Staff', N'STAFF', N'084cbc23-53c5-46cd-8af1-7ad19a367fce')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'837cd5a5-45e7-48fe-9ba5-8d04eb9a0873', N'Passenger', N'PASSENGER', N'c8e6f985-31c3-4409-8fb0-f45d03a6c3cf')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e321aad7-89c1-44ac-b447-ce7f82a30d06', N'admin', N'ADMIN', N'01d58326-cb34-467b-acec-75a51ad904a2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dea371ab-81bd-4be0-b375-711ff7abf957', N'837cd5a5-45e7-48fe-9ba5-8d04eb9a0873')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'546a5fc7-70c5-4a3e-869f-69ca81b26141', N'e321aad7-89c1-44ac-b447-ce7f82a30d06')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'546a5fc7-70c5-4a3e-869f-69ca81b26141', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELmRyBw3tnCPR0YSfGcUVxfgmeyS/iaFdnIJkf1FdwwCQfkq32xzVVL2O8BxSZfLLg==', N'QLVZACMGKYHAEN3ZDRQGFS7Z5N77HKKL', N'a7140c16-b13b-47a2-a0f0-188562d382b2', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'dea371ab-81bd-4be0-b375-711ff7abf957', N'pa@gmail.com', N'PA@GMAIL.COM', N'pa@gmail.com', N'PA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIZxhO41vOgOqHFHxRrzwHtGEJ7O8NCH2aKdST+VvFtcwP23ukfZ8uIazoZ7oM62tw==', N'K3WXSRCBPMC7TIYMNM46PF7IY3FSUB76', N'baa582ff-e622-4878-bd0e-cbad37c03c06', NULL, 0, 0, NULL, 1, 0, N'Kawser', N'Ahmed')
SET IDENTITY_INSERT [dbo].[bookingFlights] ON 

INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (1, N'Dhaka', N'John F. Kennedy International Airport', N'2020-03-05', 1, 3, 1)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (2, N'Dhaka', N'Riyadh Airport', N'2020-03-08', 2, 7, 3)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (3, N'Dhaka', N'Bangkok Suvarnabhumi airport', N'2020-03-06', 3, 4, 2)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (4, N'Dhaka', N'Singapore Changi Airport', N'2020-03-09', 4, 5, 4)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (5, N'Dhaka', N'Dubai International Airport', N'2020-03-12', 5, 3, 6)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (6, N'Dhaka', N'London City Airport (LCY)', N'2020-03-19', 7, 6, 9)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (7, N'Dhaka', N'Bangkok Suvarnabhumi airport', N'2020-03-12', 8, 4, 5)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (8, N'Dhaka', N'Canberra Airport (CBR)', N'2020-03-14', 6, 1, 10)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (9, N'Dhaka', N'Canberra Airport (CBR)', N'2020-03-14', 10, 1, 10)
INSERT [dbo].[bookingFlights] ([BookID], [FromPlace], [Destination], [FlightDate], [PassengerID], [CountryID], [FlightID]) VALUES (10, N'Dhaka', N'Jeddah Airport', N'2020-03-16', 9, 7, 5)
SET IDENTITY_INSERT [dbo].[bookingFlights] OFF
SET IDENTITY_INSERT [dbo].[countries] ON 

INSERT [dbo].[countries] ([CountryID], [Country1], [travelCost]) VALUES (1, N'NewYork', 525000)
INSERT [dbo].[countries] ([CountryID], [Country1], [travelCost]) VALUES (2, N'Australia	', 480000)
INSERT [dbo].[countries] ([CountryID], [Country1], [travelCost]) VALUES (3, N'Dubai ', 75000)
INSERT [dbo].[countries] ([CountryID], [Country1], [travelCost]) VALUES (4, N'Bangkok ', 52500)
INSERT [dbo].[countries] ([CountryID], [Country1], [travelCost]) VALUES (5, N'Singapore ', 285000)
INSERT [dbo].[countries] ([CountryID], [Country1], [travelCost]) VALUES (6, N'London ', 575000)
INSERT [dbo].[countries] ([CountryID], [Country1], [travelCost]) VALUES (7, N'Saudi Arabia ', 80500)
SET IDENTITY_INSERT [dbo].[countries] OFF
SET IDENTITY_INSERT [dbo].[flightInfoes] ON 

INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (1, N'BF-54', N'2:30 pm', N'6:50 pm')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (2, N'BG-50', N'3:30 pm', N'6:50 pm')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (3, N'CG-52', N'3:30 am', N'6:50 am')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (4, N'BG-53', N'10:30 am', N'2:50 pm')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (5, N'BG-33', N'11:30 am', N'5:50 pm')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (6, N'BH-45', N'09:30 am', N'1:50 pm')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (7, N'BF-45', N'12:00 pm', N'05:30 pm')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (8, N'GF-35', N'01:45 pm', N'05:30 pm')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (9, N'BH-35', N'02:45 pm', N'05:30 pm')
INSERT [dbo].[flightInfoes] ([FlightID], [FlightNunber], [TakeOff], [Landing]) VALUES (10, N'GH-80', N'03:45', N'07:20')
SET IDENTITY_INSERT [dbo].[flightInfoes] OFF
SET IDENTITY_INSERT [dbo].[MenuHelperModel] ON 

INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (1, N'PassengerInfoes', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (2, N'PassengerInfoes', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (3, N'PassengerInfoes', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (4, N'PassengerInfoes', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (5, N'PassengerInfoes', N'IndexSingle', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (6, N'FlightInfoes', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (7, N'FlightInfoes', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (8, N'FlightInfoes', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (9, N'FlightInfoes', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (10, N'FlightInfoes', N'Sample', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (11, N'BookingFlights', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (12, N'BookingFlights', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (13, N'BookingFlights', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (14, N'BookingFlights', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (15, N'Countries', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (16, N'Countries', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (17, N'Countries', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (18, N'Countries', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (19, N'Home', N'Contact', NULL)
SET IDENTITY_INSERT [dbo].[MenuHelperModel] OFF
SET IDENTITY_INSERT [dbo].[MenuModel] ON 

INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (1, 1, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (2, 2, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (3, 3, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (4, 4, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (5, 5, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (6, 6, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (7, 7, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (8, 8, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (10, 9, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (11, 10, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (12, 11, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (13, 12, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (14, 13, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (15, 14, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (16, 15, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (17, 16, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (18, 17, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (19, 18, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (20, 1, N'a5c8decb-d505-4a46-a188-d10300dd6dcd', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (21, 2, N'a5c8decb-d505-4a46-a188-d10300dd6dcd', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (22, 4, N'a5c8decb-d505-4a46-a188-d10300dd6dcd', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (23, 6, N'a5c8decb-d505-4a46-a188-d10300dd6dcd', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (24, 11, N'a5c8decb-d505-4a46-a188-d10300dd6dcd', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (25, 15, N'a5c8decb-d505-4a46-a188-d10300dd6dcd', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (26, 1, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (27, 5, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (28, 6, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (29, 7, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (30, 9, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (31, 10, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (32, 11, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (33, 13, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (34, 14, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (35, 15, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (36, 16, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (37, 17, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (38, 18, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (39, 19, N'612c12d1-a705-4fd9-bea1-91330833cb6d', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (40, 19, N'a5c8decb-d505-4a46-a188-d10300dd6dcd', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (41, 19, N'd0286823-e3b5-4ba9-b969-30c444370b61', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (42, 1, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (43, 2, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (44, 3, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (45, 4, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (46, 5, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (47, 6, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (48, 7, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (49, 8, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (51, 9, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (52, 10, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (53, 15, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (54, 16, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (55, 18, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (56, 19, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (57, 17, N'e321aad7-89c1-44ac-b447-ce7f82a30d06', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (58, 1, N'837cd5a5-45e7-48fe-9ba5-8d04eb9a0873', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (59, 2, N'837cd5a5-45e7-48fe-9ba5-8d04eb9a0873', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (60, 6, N'837cd5a5-45e7-48fe-9ba5-8d04eb9a0873', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (61, 11, N'837cd5a5-45e7-48fe-9ba5-8d04eb9a0873', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (62, 15, N'837cd5a5-45e7-48fe-9ba5-8d04eb9a0873', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (63, 19, N'837cd5a5-45e7-48fe-9ba5-8d04eb9a0873', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (64, 1, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (65, 4, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (66, 5, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (67, 6, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (68, 10, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (69, 7, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (70, 11, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (71, 12, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (72, 15, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (73, 16, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (74, 18, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (75, 19, N'17fd1668-41d6-4149-b2f5-b3f2c8baa1b9', NULL)
SET IDENTITY_INSERT [dbo].[MenuModel] OFF
SET IDENTITY_INSERT [dbo].[MenuModelManage] ON 

INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (59, 39, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (60, 18, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (61, 2, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (62, 3, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (63, 4, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (64, 5, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (65, 6, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (66, 7, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (67, 17, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (68, 8, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (69, 11, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (70, 12, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (71, 13, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (72, 14, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (73, 15, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (74, 16, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (75, 1, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (76, 10, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (77, 19, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (78, 40, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (79, 22, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (80, 23, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (81, 24, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (82, 25, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (83, 21, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (84, 20, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (85, 41, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (86, 26, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (87, 27, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (88, 28, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (89, 29, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (90, 30, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (91, 31, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (92, 32, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (93, 33, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (94, 34, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (95, 35, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (96, 36, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (97, 37, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (98, 38, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (99, 64, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (100, 65, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (101, 66, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (102, 67, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (103, 68, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (104, 69, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (105, 70, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (106, 71, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (107, 72, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (108, 73, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (109, 74, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (110, 75, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (111, 58, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (112, 59, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (113, 60, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (114, 61, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (115, 62, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (116, 63, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (117, 42, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (118, 43, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (119, 44, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (120, 45, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (121, 46, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (122, 47, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (123, 48, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (124, 49, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (125, 51, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (126, 52, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (127, 53, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (128, 54, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (129, 55, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (130, 56, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (131, 57, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[MenuModelManage] OFF
SET IDENTITY_INSERT [dbo].[passengerInfoes] ON 

INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (1, N'Md. Akram ', N'Hossain', N'1994-06-15', 25, N'01670761068', N'aliriaj411@gmail.com', N'65465365', N'~/images/passenger/akram.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (2, N'Sharmin Akter', N'Rumpa', N'1993-10-19', 26, N'01688656198', N'SharminAkterRumpa@gmail.com', N'654651365', N'~/images/passenger/sharmin.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (3, N'Mohammad Kawser ', N'Ahmed', N'1993-07-13', 27, N'01676639936', N'kawser.tc@gmail.com', N'98798465', N'~/images/passenger/kawser.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (4, N'Md Robiul ', N'Hossain', N'1994-06-14', 25, N'01812783839', N'rhidb1251184@gmail.com', N'9987654', N'~/images/passenger/robiul.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (5, N'Md.', N'Zulhas', N'1993-08-17', 27, N'01953979201', N'mdzulhasuddin95@gmail.com', N'34687163', N'~/images/passenger/zulhas.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (6, N'Md. Imran ', N'Hosen', N'1995-01-21', 25, N'01617553723', N'mdimranhosen055@gmail.com', N'68713134', N'~/images/passenger/imran.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (7, N'Mohammad Ala Uddin', N'Uddin', N'1995-03-15', 25, N'01829270610', N'alauddinahsan@gmail.com', N'98615355', N'~/images/passenger/alauddin.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (8, N'Rokeya ', N'Akter', N'1994-02-12', 26, N'01825830496', N'rokeyaakteridb@gmail.com', N'9876546', N'~/images/passenger/rokeya.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (9, N'Ala Uddin ', N'Zafar', N'1994-08-17', 25, N'01731200468', N'alauddinzafaridb@gmail.com', N'6464984', N'~/images/passenger/zafar.jpg')
INSERT [dbo].[passengerInfoes] ([PassengerID], [FirstName], [LastName], [DateOfBirth], [Age], [PhoneNumber], [Email], [passportNo], [ImageUrl]) VALUES (10, N'Nilay', N'Khanom', N'1994-02-14', 26, N'01984444374', N'benojirkhanom@gmail.com', N'9846555', N'~/images/passenger/nilay.jpg')
SET IDENTITY_INSERT [dbo].[passengerInfoes] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_bookingFlights_CountryID]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_bookingFlights_CountryID] ON [dbo].[bookingFlights]
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_bookingFlights_FlightID]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_bookingFlights_FlightID] ON [dbo].[bookingFlights]
(
	[FlightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_bookingFlights_PassengerID]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_bookingFlights_PassengerID] ON [dbo].[bookingFlights]
(
	[PassengerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuHelperModel_MenuModelId]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_MenuHelperModel_MenuModelId] ON [dbo].[MenuHelperModel]
(
	[MenuModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuModelManage_MenuModelId]    Script Date: 04 03 2020 2:50:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_MenuModelManage_MenuModelId] ON [dbo].[MenuModelManage]
(
	[MenuModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[bookingFlights]  WITH CHECK ADD  CONSTRAINT [FK_bookingFlights_countries_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[countries] ([CountryID])
GO
ALTER TABLE [dbo].[bookingFlights] CHECK CONSTRAINT [FK_bookingFlights_countries_CountryID]
GO
ALTER TABLE [dbo].[bookingFlights]  WITH CHECK ADD  CONSTRAINT [FK_bookingFlights_flightInfoes_FlightID] FOREIGN KEY([FlightID])
REFERENCES [dbo].[flightInfoes] ([FlightID])
GO
ALTER TABLE [dbo].[bookingFlights] CHECK CONSTRAINT [FK_bookingFlights_flightInfoes_FlightID]
GO
ALTER TABLE [dbo].[bookingFlights]  WITH CHECK ADD  CONSTRAINT [FK_bookingFlights_passengerInfoes_PassengerID] FOREIGN KEY([PassengerID])
REFERENCES [dbo].[passengerInfoes] ([PassengerID])
GO
ALTER TABLE [dbo].[bookingFlights] CHECK CONSTRAINT [FK_bookingFlights_passengerInfoes_PassengerID]
GO
ALTER TABLE [dbo].[MenuHelperModel]  WITH CHECK ADD  CONSTRAINT [FK_MenuHelperModel_MenuModel_MenuModelId] FOREIGN KEY([MenuModelId])
REFERENCES [dbo].[MenuModel] ([Id])
GO
ALTER TABLE [dbo].[MenuHelperModel] CHECK CONSTRAINT [FK_MenuHelperModel_MenuModel_MenuModelId]
GO
ALTER TABLE [dbo].[MenuModelManage]  WITH CHECK ADD  CONSTRAINT [FK_MenuModelManage_MenuModel_MenuModelId] FOREIGN KEY([MenuModelId])
REFERENCES [dbo].[MenuModel] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuModelManage] CHECK CONSTRAINT [FK_MenuModelManage_MenuModel_MenuModelId]
GO
USE [master]
GO
ALTER DATABASE [AspNetCoreProjectAirline] SET  READ_WRITE 
GO
