USE [master]
GO
/****** Object:  Database [SentimentAnalysis]    Script Date: 05/05/2024 2:12:51 pm ******/
CREATE DATABASE [SentimentAnalysis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SentimentAnalysis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SentimentAnalysis.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SentimentAnalysis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SentimentAnalysis_log.ldf' , SIZE = 1712128KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SentimentAnalysis] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SentimentAnalysis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SentimentAnalysis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET ARITHABORT OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SentimentAnalysis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SentimentAnalysis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SentimentAnalysis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SentimentAnalysis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET RECOVERY FULL 
GO
ALTER DATABASE [SentimentAnalysis] SET  MULTI_USER 
GO
ALTER DATABASE [SentimentAnalysis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SentimentAnalysis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SentimentAnalysis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SentimentAnalysis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SentimentAnalysis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SentimentAnalysis] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SentimentAnalysis', N'ON'
GO
ALTER DATABASE [SentimentAnalysis] SET QUERY_STORE = ON
GO
ALTER DATABASE [SentimentAnalysis] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SentimentAnalysis]
GO
/****** Object:  Table [dbo].[AnalysisRequests]    Script Date: 05/05/2024 2:12:51 pm ******/
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
/****** Object:  Table [dbo].[AppUsers]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
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
/****** Object:  Table [dbo].[Event]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventTitle] [text] NOT NULL,
	[Location] [text] NULL,
	[CreatedBy] [int] NOT NULL,
	[InterestedUsers] [int] NULL,
	[AttendingUsers] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[EventDate] [datetime] NULL,
	[PageID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventAnalysis]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventAnalysis](
	[EventAnalysisID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [int] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[InterestedUserCount] [int] NOT NULL,
	[AttendingUserCount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EventAnalysisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Timestamp] UNIQUE NONCLUSTERED 
(
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventUser]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventUser](
	[EventID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[IsInterested] [bit] NOT NULL,
	[IsGoing] [bit] NOT NULL,
	[TimeStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FB_Interaction]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FB_Interaction](
	[InteractionID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NULL,
	[UserID] [int] NOT NULL,
	[InteractionTime] [datetime] NOT NULL,
	[CommentText] [text] NULL,
	[ReactionType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_InteractionTime] UNIQUE NONCLUSTERED 
(
	[InteractionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FB_InteractionAnalysis]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FB_InteractionAnalysis](
	[FB_InteractionAnalysisID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NULL,
	[TimeStamp] [datetime] NULL,
	[LikeReactionCount] [int] NULL,
	[HeartReactionCount] [int] NULL,
	[LaughReactionCount] [int] NULL,
	[WowReactionCount] [int] NULL,
	[SadReactionCount] [int] NULL,
	[AngryReactionCount] [int] NULL,
	[PositiveCommentCount] [int] NULL,
	[NegativeCommentCount] [int] NULL,
	[NeutralCommentCount] [int] NULL,
	[LoveReactionCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FB_InteractionAnalysisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FB_Post]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FB_Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [text] NULL,
	[PageID] [int] NULL,
	[Format] [int] NOT NULL,
	[TimePosted] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
	[PostTitle] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fb_User]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fb_User](
	[UserID] [int] NOT NULL,
	[Country] [int] NULL,
	[UserGender] [int] NOT NULL,
	[FollowerCount] [int] NULL,
	[DoB] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hashtag]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hashtag](
	[HashtagID] [int] IDENTITY(1,1) NOT NULL,
	[HashtagName] [varchar](255) NULL,
	[Popularity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HashtagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_HashtagName] UNIQUE NONCLUSTERED 
(
	[HashtagName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HashtagPost]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HashtagPost](
	[HashtagID] [int] NOT NULL,
	[PostID] [int] NOT NULL,
	[HashtagCount] [int] NULL,
 CONSTRAINT [PK_HashtagandPostID] PRIMARY KEY CLUSTERED 
(
	[HashtagID] ASC,
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [text] NOT NULL,
	[Data] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Data] UNIQUE NONCLUSTERED 
(
	[Data] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Page]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [text] NOT NULL,
	[PageFollowerCount] [int] NULL,
	[PageCategory] [int] NOT NULL,
	[CreatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PageAdmin]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageAdmin](
	[UserID] [int] NOT NULL,
	[PageID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reddit_Interaction]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reddit_Interaction](
	[InteractionID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[InteractionTime] [datetime] NOT NULL,
	[Vote] [int] NULL,
	[Comment] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reddit_InteractionAnalysis]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reddit_InteractionAnalysis](
	[Reddit_InteractionAnalysis] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NULL,
	[TimeStamp] [datetime] NOT NULL,
	[UpVoteCount] [int] NOT NULL,
	[DownVoteCount] [int] NOT NULL,
	[PositiveCommentCount] [int] NOT NULL,
	[NegativeCommentCount] [int] NOT NULL,
	[NeutralCommentCount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Reddit_InteractionAnalysis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Time] UNIQUE NONCLUSTERED 
(
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reddit_Post]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reddit_Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SubredditID] [int] NOT NULL,
	[TimePosted] [datetime] NOT NULL,
	[TimeEdited] [datetime] NULL,
	[PostText] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reddit_User]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reddit_User](
	[UserID] [int] NOT NULL,
	[PostKarma] [int] NULL,
	[CommentKarma] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialUser]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [text] NOT NULL,
	[AccountCreatedOn] [datetime] NOT NULL,
	[AccountType] [int] NOT NULL,
	[Social_id] [int] NULL,
	[SocialPage_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subreddit]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subreddit](
	[SubredditID] [int] IDENTITY(1,1) NOT NULL,
	[SubredditName] [text] NOT NULL,
	[TimeCreated] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubredditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubredditMember]    Script Date: 05/05/2024 2:12:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubredditMember](
	[UserID] [int] NOT NULL,
	[SubredditID] [int] NOT NULL,
	[JoinTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[SubredditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AnalysisRequests]  WITH CHECK ADD FOREIGN KEY([Platform])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[AnalysisRequests]  WITH CHECK ADD FOREIGN KEY([Status])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[AppUsers]  WITH CHECK ADD FOREIGN KEY([Role])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_CreatedBY] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Fb_User] ([UserID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_CreatedBY]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_PostIDEvent] FOREIGN KEY([PageID])
REFERENCES [dbo].[Page] ([PageID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_PostIDEvent]
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
ALTER TABLE [dbo].[FB_Interaction]  WITH CHECK ADD FOREIGN KEY([PostID])
REFERENCES [dbo].[FB_Post] ([PostID])
GO
ALTER TABLE [dbo].[FB_Interaction]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Fb_User] ([UserID])
GO
ALTER TABLE [dbo].[FB_Interaction]  WITH CHECK ADD  CONSTRAINT [FK_ReactionType] FOREIGN KEY([ReactionType])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[FB_Interaction] CHECK CONSTRAINT [FK_ReactionType]
GO
ALTER TABLE [dbo].[FB_InteractionAnalysis]  WITH CHECK ADD FOREIGN KEY([PostID])
REFERENCES [dbo].[FB_Post] ([PostID])
GO
ALTER TABLE [dbo].[FB_Post]  WITH CHECK ADD FOREIGN KEY([Format])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[FB_Post]  WITH CHECK ADD FOREIGN KEY([PageID])
REFERENCES [dbo].[Page] ([PageID])
GO
ALTER TABLE [dbo].[FB_Post]  WITH CHECK ADD  CONSTRAINT [FK_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Fb_User] ([UserID])
GO
ALTER TABLE [dbo].[FB_Post] CHECK CONSTRAINT [FK_UserID]
GO
ALTER TABLE [dbo].[Fb_User]  WITH CHECK ADD FOREIGN KEY([UserGender])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[Fb_User]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[SocialUser] ([UserID])
GO
ALTER TABLE [dbo].[Fb_User]  WITH CHECK ADD FOREIGN KEY([Country])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[HashtagPost]  WITH CHECK ADD FOREIGN KEY([HashtagID])
REFERENCES [dbo].[Hashtag] ([HashtagID])
GO
ALTER TABLE [dbo].[HashtagPost]  WITH CHECK ADD FOREIGN KEY([PostID])
REFERENCES [dbo].[FB_Post] ([PostID])
GO
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_PageCategory] FOREIGN KEY([PageCategory])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_PageCategory]
GO
ALTER TABLE [dbo].[Page]  WITH CHECK ADD  CONSTRAINT [FK_PageCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Fb_User] ([UserID])
GO
ALTER TABLE [dbo].[Page] CHECK CONSTRAINT [FK_PageCreatedBy]
GO
ALTER TABLE [dbo].[PageAdmin]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[AppUsers] ([UserID])
GO
ALTER TABLE [dbo].[Reddit_Interaction]  WITH CHECK ADD FOREIGN KEY([PostID])
REFERENCES [dbo].[Reddit_Post] ([PostID])
GO
ALTER TABLE [dbo].[Reddit_Interaction]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Reddit_User] ([UserID])
GO
ALTER TABLE [dbo].[Reddit_Interaction]  WITH CHECK ADD FOREIGN KEY([Vote])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[Reddit_InteractionAnalysis]  WITH CHECK ADD FOREIGN KEY([PostID])
REFERENCES [dbo].[Reddit_Post] ([PostID])
GO
ALTER TABLE [dbo].[Reddit_Post]  WITH CHECK ADD FOREIGN KEY([SubredditID])
REFERENCES [dbo].[Subreddit] ([SubredditID])
GO
ALTER TABLE [dbo].[Reddit_Post]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Reddit_User] ([UserID])
GO
ALTER TABLE [dbo].[Reddit_User]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[SocialUser] ([UserID])
GO
ALTER TABLE [dbo].[SocialUser]  WITH CHECK ADD FOREIGN KEY([AccountType])
REFERENCES [dbo].[Lookup] ([ID])
GO
ALTER TABLE [dbo].[SubredditMember]  WITH CHECK ADD FOREIGN KEY([SubredditID])
REFERENCES [dbo].[Subreddit] ([SubredditID])
GO
ALTER TABLE [dbo].[SubredditMember]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Reddit_User] ([UserID])
GO
USE [master]
GO
ALTER DATABASE [SentimentAnalysis] SET  READ_WRITE 
GO
