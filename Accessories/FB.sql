USE [master]
GO
/****** Object:  Database [FB]    Script Date: 02/04/2024 5:01:22 am ******/
CREATE DATABASE [FB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FB] SET RECOVERY FULL 
GO
ALTER DATABASE [FB] SET  MULTI_USER 
GO
ALTER DATABASE [FB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FB', N'ON'
GO
ALTER DATABASE [FB] SET QUERY_STORE = ON
GO
ALTER DATABASE [FB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FB]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 02/04/2024 5:01:22 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] NOT NULL,
	[CommentText] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 02/04/2024 5:01:22 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventTitle] [text] NULL,
	[CreatedBy] [text] NULL,
	[Location] [text] NULL,
	[InterestedUserCount] [int] NULL,
	[AttendingUserCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventAnalysis]    Script Date: 02/04/2024 5:01:22 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventAnalysis](
	[EventAnalysisID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [int] NULL,
	[TimeStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventAnalysisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventUser]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventUser](
	[EventID] [int] NOT NULL,
	[UserID] [int] NULL,
	[IsInterested] [bit] NULL,
	[IsGoing] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fb_User]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fb_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserRegion] [int] NULL,
	[UserGender] [int] NULL,
	[UserAge] [text] NULL,
	[FollowerCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hashtag]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hashtag](
	[HashtagID] [int] IDENTITY(1,1) NOT NULL,
	[HashtagName] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[HashtagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HashtagPost]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HashtagPost](
	[HashtagPostID] [int] IDENTITY(1,1) NOT NULL,
	[HashtagID] [int] NULL,
	[PostID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HashtagPostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interaction]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interaction](
	[InteractionID] [int] IDENTITY(1,1) NOT NULL,
	[PageID] [int] NULL,
	[UserID] [int] NULL,
	[InteractionTime] [datetime] NULL,
	[TimeStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginActivity]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginActivity](
	[UserID] [int] NULL,
	[LoginTime] [datetime] NULL,
	[LogoutTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 02/04/2024 5:01:23 am ******/
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
/****** Object:  Table [dbo].[Page]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [text] NULL,
	[PageFollowerCount] [int] NULL,
	[PageCategory] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PageUser]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageUser](
	[PageID] [int] NULL,
	[UserID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [text] NULL,
	[PageID] [int] NULL,
	[Format] [int] NULL,
	[TimePosted] [datetime] NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reaction]    Script Date: 02/04/2024 5:01:23 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reaction](
	[ReactionID] [int] NOT NULL,
	[ReactionType] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Comment] ([CommentID], [CommentText]) VALUES (1, N'Great post!')
INSERT [dbo].[Comment] ([CommentID], [CommentText]) VALUES (2, N'Interesting content!')
GO
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([EventID], [EventTitle], [CreatedBy], [Location], [InterestedUserCount], [AttendingUserCount]) VALUES (1, N'Event 1', N'User 1', N'Location 1', 100, 50)
INSERT [dbo].[Event] ([EventID], [EventTitle], [CreatedBy], [Location], [InterestedUserCount], [AttendingUserCount]) VALUES (2, N'Event 2', N'User 2', N'Location 2', 200, 100)
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
SET IDENTITY_INSERT [dbo].[EventAnalysis] ON 

INSERT [dbo].[EventAnalysis] ([EventAnalysisID], [EventID], [TimeStamp]) VALUES (1, 1, CAST(N'2024-04-02T04:52:05.290' AS DateTime))
INSERT [dbo].[EventAnalysis] ([EventAnalysisID], [EventID], [TimeStamp]) VALUES (2, 2, CAST(N'2024-04-02T04:52:05.290' AS DateTime))
SET IDENTITY_INSERT [dbo].[EventAnalysis] OFF
GO
INSERT [dbo].[EventUser] ([EventID], [UserID], [IsInterested], [IsGoing]) VALUES (1, 1, 1, 0)
INSERT [dbo].[EventUser] ([EventID], [UserID], [IsInterested], [IsGoing]) VALUES (2, 2, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Fb_User] ON 

INSERT [dbo].[Fb_User] ([UserID], [UserRegion], [UserGender], [UserAge], [FollowerCount]) VALUES (1, 4, 11, N'25', 500)
INSERT [dbo].[Fb_User] ([UserID], [UserRegion], [UserGender], [UserAge], [FollowerCount]) VALUES (2, 5, 12, N'30', 600)
SET IDENTITY_INSERT [dbo].[Fb_User] OFF
GO
SET IDENTITY_INSERT [dbo].[Hashtag] ON 

INSERT [dbo].[Hashtag] ([HashtagID], [HashtagName]) VALUES (1, N'#trending')
INSERT [dbo].[Hashtag] ([HashtagID], [HashtagName]) VALUES (2, N'#popular')
SET IDENTITY_INSERT [dbo].[Hashtag] OFF
GO
SET IDENTITY_INSERT [dbo].[HashtagPost] ON 

INSERT [dbo].[HashtagPost] ([HashtagPostID], [HashtagID], [PostID]) VALUES (1, 1, 1)
INSERT [dbo].[HashtagPost] ([HashtagPostID], [HashtagID], [PostID]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[HashtagPost] OFF
GO
SET IDENTITY_INSERT [dbo].[Interaction] ON 

INSERT [dbo].[Interaction] ([InteractionID], [PageID], [UserID], [InteractionTime], [TimeStamp]) VALUES (1, 1, 1, CAST(N'2024-04-02T04:52:05.267' AS DateTime), CAST(N'2024-04-02T04:52:05.267' AS DateTime))
INSERT [dbo].[Interaction] ([InteractionID], [PageID], [UserID], [InteractionTime], [TimeStamp]) VALUES (2, 2, 2, CAST(N'2024-04-02T04:52:05.267' AS DateTime), CAST(N'2024-04-02T04:52:05.267' AS DateTime))
SET IDENTITY_INSERT [dbo].[Interaction] OFF
GO
INSERT [dbo].[LoginActivity] ([UserID], [LoginTime], [LogoutTime]) VALUES (1, CAST(N'2024-04-02T04:52:05.263' AS DateTime), CAST(N'2024-04-02T05:52:05.263' AS DateTime))
INSERT [dbo].[LoginActivity] ([UserID], [LoginTime], [LogoutTime]) VALUES (2, CAST(N'2024-04-02T04:52:05.263' AS DateTime), CAST(N'2024-04-02T06:52:05.263' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Lookup] ON 

INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (1, N'Format', N'Image')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (2, N'Format', N'Video')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (3, N'Format', N'Text')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (4, N'Region', N'North America')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (5, N'Region', N'South America')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (6, N'Region', N'Europe')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (7, N'Region', N'Asia')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (8, N'Region', N'Africa')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (9, N'Region', N'Australia')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (10, N'Gender', N'Male')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (11, N'Gender', N'Female')
INSERT [dbo].[Lookup] ([ID], [Category], [Data]) VALUES (12, N'Gender', N'Other')
SET IDENTITY_INSERT [dbo].[Lookup] OFF
GO
SET IDENTITY_INSERT [dbo].[Page] ON 

INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (1, N'Page 1', 1000, N'Sports')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (2, N'Page 2', 2000, N'Music')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (3, N'Page 3', 3000, N'Movies')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (4, N'Page 4', 4000, N'Books')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (5, N'Page 5', 5000, N'Fashion')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (6, N'Page 6', 6000, N'Travel')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (7, N'Page 7', 7000, N'Food')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (8, N'Page 8', 8000, N'Tech')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (9, N'Page 9', 9000, N'Health')
INSERT [dbo].[Page] ([PageID], [PageName], [PageFollowerCount], [PageCategory]) VALUES (10, N'Page 10', 10000, N'Education')
SET IDENTITY_INSERT [dbo].[Page] OFF
GO
INSERT [dbo].[PageUser] ([PageID], [UserID]) VALUES (1, 1)
INSERT [dbo].[PageUser] ([PageID], [UserID]) VALUES (2, 2)
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostID], [Caption], [PageID], [Format], [TimePosted], [UserID]) VALUES (1, N'Post 1', 1, 1, CAST(N'2024-04-02T04:52:05.253' AS DateTime), 1)
INSERT [dbo].[Post] ([PostID], [Caption], [PageID], [Format], [TimePosted], [UserID]) VALUES (2, N'Post 2', 2, 2, CAST(N'2024-04-02T04:52:05.253' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
INSERT [dbo].[Reaction] ([ReactionID], [ReactionType]) VALUES (1, N'Like')
INSERT [dbo].[Reaction] ([ReactionID], [ReactionType]) VALUES (2, N'Love')
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([CommentID])
REFERENCES [dbo].[Interaction] ([InteractionID])
GO
ALTER TABLE [dbo].[EventAnalysis]  WITH CHECK ADD FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[EventUser]  WITH CHECK ADD FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[EventUser]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Fb_User] ([UserID])
GO
ALTER TABLE [dbo].[Fb_User]  WITH CHECK ADD FOREIGN KEY([UserGender])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[Fb_User]  WITH CHECK ADD FOREIGN KEY([UserRegion])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[HashtagPost]  WITH CHECK ADD FOREIGN KEY([HashtagID])
REFERENCES [dbo].[Hashtag] ([HashtagID])
GO
ALTER TABLE [dbo].[HashtagPost]  WITH CHECK ADD FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD FOREIGN KEY([PageID])
REFERENCES [dbo].[Page] ([PageID])
GO
ALTER TABLE [dbo].[Interaction]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Fb_User] ([UserID])
GO
ALTER TABLE [dbo].[LoginActivity]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Fb_User] ([UserID])
GO
ALTER TABLE [dbo].[PageUser]  WITH CHECK ADD FOREIGN KEY([PageID])
REFERENCES [dbo].[Page] ([PageID])
GO
ALTER TABLE [dbo].[PageUser]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Fb_User] ([UserID])
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD FOREIGN KEY([Format])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD FOREIGN KEY([PageID])
REFERENCES [dbo].[Page] ([PageID])
GO
ALTER TABLE [dbo].[Reaction]  WITH CHECK ADD FOREIGN KEY([ReactionID])
REFERENCES [dbo].[Interaction] ([InteractionID])
GO
USE [master]
GO
ALTER DATABASE [FB] SET  READ_WRITE 
GO
