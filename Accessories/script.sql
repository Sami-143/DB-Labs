USE [master]
GO
/****** Object:  Database [SentimentApplication]    Script Date: 02/05/2024 11:36:59 pm ******/
CREATE DATABASE [SentimentApplication]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SentimentApplication', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SentimentApplication.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SentimentApplication_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SentimentApplication_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SentimentApplication] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SentimentApplication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SentimentApplication] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SentimentApplication] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SentimentApplication] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SentimentApplication] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SentimentApplication] SET ARITHABORT OFF 
GO
ALTER DATABASE [SentimentApplication] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SentimentApplication] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SentimentApplication] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SentimentApplication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SentimentApplication] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SentimentApplication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SentimentApplication] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SentimentApplication] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SentimentApplication] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SentimentApplication] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SentimentApplication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SentimentApplication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SentimentApplication] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SentimentApplication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SentimentApplication] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SentimentApplication] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SentimentApplication] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SentimentApplication] SET RECOVERY FULL 
GO
ALTER DATABASE [SentimentApplication] SET  MULTI_USER 
GO
ALTER DATABASE [SentimentApplication] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SentimentApplication] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SentimentApplication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SentimentApplication] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SentimentApplication] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SentimentApplication] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SentimentApplication', N'ON'
GO
ALTER DATABASE [SentimentApplication] SET QUERY_STORE = ON
GO
ALTER DATABASE [SentimentApplication] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SentimentApplication]
GO
/****** Object:  Table [dbo].[AnalysisRequests]    Script Date: 02/05/2024 11:36:59 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisRequests](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[RequestCreatedOn] [datetime] NOT NULL,
	[Platform] [int] NULL,
	[PersonName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[ContactNumber] [nvarchar](max) NOT NULL,
	[OrganizationName] [nvarchar](max) NOT NULL,
	[Status] [int] NULL,
	[Username] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 02/05/2024 11:36:59 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [text] NULL,
	[Data] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/05/2024 11:36:59 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnalysisRequests] ON 

INSERT [dbo].[AnalysisRequests] ([RequestID], [RequestCreatedOn], [Platform], [PersonName], [Email], [ContactNumber], [OrganizationName], [Status], [Username]) VALUES (2, CAST(N'2024-04-30T03:12:20.957' AS DateTime), 4, N'Lucy Grace', N'contact@cnnnews.com', N'1 (404) 827-1500', N'CNN News', 6, N'cnnNetwork')
INSERT [dbo].[AnalysisRequests] ([RequestID], [RequestCreatedOn], [Platform], [PersonName], [Email], [ContactNumber], [OrganizationName], [Status], [Username]) VALUES (1002, CAST(N'2024-04-30T11:20:58.153' AS DateTime), 4, N'fsdsadfsadf', N'asdfsdaf', N'sadfsd', N'dfsdf', 6, N'fadsf')
INSERT [dbo].[AnalysisRequests] ([RequestID], [RequestCreatedOn], [Platform], [PersonName], [Email], [ContactNumber], [OrganizationName], [Status], [Username]) VALUES (1003, CAST(N'2024-05-02T13:56:09.353' AS DateTime), 4, N'', N'', N'', N'nnst fl', 6, N'')
SET IDENTITY_INSERT [dbo].[AnalysisRequests] OFF
GO
SET IDENTITY_INSERT [dbo].[Lookup] ON 

INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (1, N'ROLE', N'Owner')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (2, N'ROLE', N'Admin')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (3, N'ROLE', N'Customer')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (4, N'PLATFORM', N'Facebook')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (5, N'PLATFORM', N'Reddit')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (6, N'REQUEST_STATUS', N'Active')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (7, N'REQUEST_STATUS', N'On Hold')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (8, N'REQUEST_STATUS', N'Completed')
SET IDENTITY_INSERT [dbo].[Lookup] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Username], [Password], [Role]) VALUES (2, N'Malick Barr', N'WicKeD120*', 1)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [Role]) VALUES (3, N'Ayesha Khalid', N'AK007', 2)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [Role]) VALUES (4, N'Shehroz Ahmad', N'MUSA1122', 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[AnalysisRequests]  WITH CHECK ADD FOREIGN KEY([Platform])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[AnalysisRequests]  WITH CHECK ADD FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([Role])
REFERENCES [dbo].[Lookup] ([ID])
GO
USE [master]
GO
ALTER DATABASE [SentimentApplication] SET  READ_WRITE 
GO
