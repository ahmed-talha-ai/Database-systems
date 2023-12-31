USE [League]
GO
/****** Object:  Schema [football]    Script Date: 12/22/2023 11:05:38 PM ******/
CREATE SCHEMA [football]
GO
/****** Object:  Table [football].[Cards]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Cards](
	[card_id] [int] NOT NULL,
	[match_id] [int] NULL,
	[player_id] [int] NULL,
	[card_type] [varchar](10) NULL,
	[minute] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[card_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Championship]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Championship](
	[championship_id] [int] NOT NULL,
	[season_date] [nvarchar](15) NULL,
	[championship_name] [varchar](50) NOT NULL,
	[winning_team_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[championship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Goals]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Goals](
	[goal_id] [int] NOT NULL,
	[player_id] [int] NULL,
	[match_id] [int] NULL,
	[time] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[goal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Injury]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Injury](
	[injury_id] [int] NOT NULL,
	[match_id] [int] NULL,
	[player_id] [int] NULL,
	[description] [varchar](255) NULL,
	[minute] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[injury_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Manager]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Manager](
	[manager_id] [int] NOT NULL,
	[manager_name] [varchar](50) NOT NULL,
	[team_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[manager_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Match]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Match](
	[match_id] [int] NOT NULL,
	[home_team_id] [int] NULL,
	[away_team_id] [int] NULL,
	[championship_id] [int] NULL,
	[match_date] [date] NULL,
	[stadium_id] [int] NULL,
	[referee_id] [int] NULL,
	[result] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[match_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Players]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Players](
	[player_id] [int] NOT NULL,
	[player_name] [nvarchar](50) NULL,
	[player_nationality] [varchar](50) NULL,
	[team_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Referee]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Referee](
	[referee_id] [int] NOT NULL,
	[referee_name] [varchar](50) NOT NULL,
	[referee_nationality] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[referee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Stadium]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Stadium](
	[stadium_id] [int] NOT NULL,
	[stadium_name] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stadium_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [football].[Team]    Script Date: 12/22/2023 11:05:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [football].[Team](
	[team_id] [int] NOT NULL,
	[team_name] [varchar](50) NOT NULL,
	[trophies] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (1, 1, 2, N'yellow', 45)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (2, 2, 1, N'red', 90)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (3, 4, 15, N'yellow', 67)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (4, 5, 5, N'yellow', 69)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (5, 10, 18, N'Red', 50)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (6, 7, 23, N'yellow', 65)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (7, 3, 3, N'yellow', 80)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (8, 9, 29, N'Red', 34)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (9, 5, 46, N'yellow', 27)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (10, 3, 18, N'yellow', 78)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (78, 75, 84, N'Yellow', 22)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (79, 76, 112, N'Red', 35)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (80, 77, 56, N'Red', 18)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (81, 78, 3, N'Yellow', 55)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (82, 79, 92, N'Yellow', 40)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (83, 75, 147, N'Yellow', 28)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (84, 76, 41, N'Yellow', 15)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (85, 75, 99, N'Red', 50)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (86, 8, 73, N'Yellow', 32)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (87, 7, 120, N'Red', 60)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (88, 85, 14, N'Yellow', 42)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (89, 9, 54, N'Yellow', 48)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (90, 10, 135, N'Yellow', 25)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (91, 7, 77, N'Yellow', 30)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (92, 89, 101, N'Yellow', 22)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (93, 90, 49, N'Red', 15)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (94, 2, 37, N'Yellow', 20)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (95, 1, 111, N'Yellow', 38)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (96, 5, 68, N'Yellow', 28)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (97, 6, 82, N'Yellow', 42)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (98, 95, 29, N'Yellow', 18)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (99, 9, 69, N'Red', 32)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (100, 90, 59, N'Yellow', 35)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (101, 77, 115, N'Red', 40)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (102, 9, 85, N'Yellow', 25)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (103, 79, 43, N'Red', 30)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (104, 80, 94, N'Yellow', 22)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (105, 10, 19, N'Yellow', 15)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (106, 2, 120, N'Yellow', 20)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (107, 3, 32, N'Yellow', 38)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (108, 84, 6, N'Yellow', 28)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (109, 85, 53, N'Red', 42)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (110, 86, 121, N'Red', 18)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (111, 87, 2, N'Red', 32)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (112, 88, 76, N'Yellow', 35)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (113, 89, 140, N'Red', 40)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (114, 90, 45, N'Yellow', 25)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (115, 76, 11, N'Yellow', 30)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (116, 92, 62, N'Yellow', 22)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (117, 93, 144, N'Yellow', 15)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (118, 94, 75, N'Yellow', 20)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (119, 7, 30, N'Yellow', 38)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (120, 75, 112, N'Yellow', 28)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (121, 76, 8, N'Red', 42)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (122, 77, 128, N'Yellow', 18)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (123, 78, 36, N'Red', 32)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (124, 79, 57, N'Yellow', 35)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (125, 80, 92, N'Red', 40)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (126, 81, 16, N'Yellow', 25)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (127, 82, 78, N'Red', 30)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (128, 83, 104, N'Yellow', 22)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (129, 84, 19, N'Yellow', 15)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (130, 85, 42, N'Yellow', 20)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (131, 86, 76, N'Yellow', 38)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (132, 87, 97, N'Yellow', 28)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (133, 88, 51, N'Red', 42)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (134, 89, 63, N'Yellow', 18)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (135, 90, 122, N'Red', 32)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (136, 91, 17, N'Yellow', 35)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (137, 92, 104, N'Yellow', 40)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (138, 93, 10, N'Yellow', 25)
INSERT [football].[Cards] ([card_id], [match_id], [player_id], [card_type], [minute]) VALUES (139, 94, 129, N'Yellow', 30)
GO
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (1, N'2022-08-11', N'EPL', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (2, N'2023-07-18', N'Championship 2', 2)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (3, N'2017-11-07', N'EPL', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (4, N'2018-11-23', N'Cup of Egypt', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (5, N'2019-08-21', N'EPL', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (6, N'2024-11-23', N'Cup of Egypt', 3)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (7, N'2023-12-23', N'Cup World Club', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (8, N'2023-06-27', N'CAF', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (9, N'2013-11-23', N'CAF', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (10, N'2006-01-23', N'Cup World Club', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (11, N'2023-06-27', N'EPL', 1)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (12, N'2002-07-25', N'CAF', 2)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (13, N'2001-06-27', N'EPL', 3)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (75, N'2022-2023', N'Premier League', 75)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (76, N'2023-2024', N'La Liga', 76)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (77, N'2024-2025', N'Bundesliga', 77)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (78, N'2025-2026', N'Serie A', 78)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (79, N'2026-2027', N'Ligue 1', 79)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (80, N'2027-2028', N'Primeira Liga', 75)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (81, N'2028-2029', N'Eredivisie', 76)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (82, N'2029-2030', N'Scottish Premiership', 77)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (83, N'2030-2031', N'Super Lig', 78)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (84, N'2031-2032', N'Russian Premier League', 79)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (85, N'2032-2033', N'Belgian Pro League', 75)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (86, N'2033-2034', N'Brazilian Serie A', 76)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (87, N'2034-2035', N'Italian Serie B', 77)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (88, N'2035-2036', N'Championship (England)', 78)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (89, N'2036-2037', N'Major League Soccer (MLS)', 79)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (90, N'2037-2038', N'Argentine Primera Divisi?n', 75)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (91, N'2038-2039', N'Greek Super League', 76)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (92, N'2039-2040', N'Swiss Super League', 77)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (93, N'2040-2041', N'Danish Superliga', 78)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (94, N'2041-2042', N'Norwegian Eliteserien', 79)
INSERT [football].[Championship] ([championship_id], [season_date], [championship_name], [winning_team_id]) VALUES (95, N'2042-2043', N'Chinese Super League', 75)
GO
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (1, 1, 1, 67)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (2, 2, 1, 45)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (3, 23, 1, 76)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (4, 23, 2, 45)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (5, 14, 3, 14)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (6, 22, 4, 49)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (7, 12, 5, 34)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (8, 19, 5, 45)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (9, 17, 4, 85)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (10, 6, 6, 85)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (11, 1, 7, 85)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (12, 2, 2, 49)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (13, 1, 1, 53)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (14, 2, 2, 16)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (15, 1, 7, 19)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (16, 7, 7, 45)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (17, 7, 7, 56)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (18, 18, 2, 56)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (19, 1, 8, 56)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (20, 17, 8, 56)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (21, 23, 1, 85)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (22, 7, 3, 18)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (23, 2, 2, 65)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (24, 23, 2, 79)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (25, 1, 1, 35)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (26, 22, 7, 89)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (27, 7, 10, 10)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (28, 20, 2, 45)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (29, 6, 1, 12)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (30, 8, 5, 78)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (78, 1, 2, 15)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (79, 2, 3, 23)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (80, 3, 4, 60)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (81, 4, 5, 75)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (82, 5, 6, 80)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (83, 6, 7, 35)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (84, 7, 8, 42)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (85, 8, 9, 18)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (86, 9, 10, 22)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (87, 10, 75, 55)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (88, 11, 76, 12)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (89, 12, 77, 38)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (90, 13, 78, 58)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (91, 14, 79, 70)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (92, 15, 80, 82)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (93, 16, 81, 44)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (94, 17, 82, 52)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (95, 18, 83, 25)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (96, 19, 84, 32)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (97, 20, 85, 60)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (98, 21, 86, 15)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (99, 22, 87, 23)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (100, 23, 88, 60)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (101, 24, 89, 75)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (102, 25, 90, 80)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (103, 26, 91, 35)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (104, 27, 92, 42)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (105, 28, 93, 18)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (106, 29, 94, 22)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (107, 30, 95, 55)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (108, 31, 88, 12)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (109, 32, 89, 38)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (110, 33, 90, 58)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (111, 34, 91, 70)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (112, 35, 92, 82)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (113, 36, 93, 44)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (114, 37, 94, 52)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (115, 38, 95, 25)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (116, 39, 88, 32)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (117, 40, 89, 60)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (118, 41, 90, 22)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (119, 42, 91, 37)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (120, 43, 92, 44)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (121, 44, 93, 19)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (122, 45, 94, 27)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (123, 46, 95, 58)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (124, 47, 88, 70)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (125, 48, 89, 82)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (126, 49, 90, 44)
INSERT [football].[Goals] ([goal_id], [player_id], [match_id], [time]) VALUES (127, 50, 91, 52)
GO
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (1, 1, 2, N'damage for his hand', 67)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (2, 2, 17, N'Musel Burn', 60)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (3, 1, 15, N'Musel Burn', 15)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (4, 10, 4, N'Broken hand', 15)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (5, 9, 16, N'Head crash', 85)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (6, 7, 60, N'Broken Leg', 10)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (7, 8, 30, N'Heart attack', 23)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (8, 1, 27, N'Herniated disc', 79)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (9, 2, 20, N'Ankle sprain', 70)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (10, 6, 34, N'Broken clavicle', 90)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (11, 3, 17, N'Rib fracture', 29)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (12, 8, 19, N'cruciate ligament', 15)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (13, 7, 16, N'Musel Burn', 68)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (75, 75, 75, N'Sprained ankle', 20)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (76, 76, 76, N'Muscle strain', 35)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (77, 77, 77, N'Head injury', 15)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (78, 78, 1, N'Knee injury', 10)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (79, 79, 2, N'Ankle sprain', 25)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (80, 80, 3, N'Hamstring strain', 18)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (81, 81, 4, N'Concussion', 30)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (82, 82, 5, N'Groin injury', 42)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (83, 83, 6, N'Fractured leg', 55)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (84, 84, 7, N'Shoulder dislocation', 12)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (85, 85, 8, N'Calf strain', 28)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (86, 86, 9, N'Hip injury', 37)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (87, 87, 10, N'Back pain', 20)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (88, 88, 11, N'Thigh contusion', 15)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (89, 89, 12, N'Hand injury', 22)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (90, 90, 13, N'Foot sprain', 40)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (91, 91, 14, N'Rib fracture', 33)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (92, 92, 15, N'Wrist injury', 48)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (93, 93, 16, N'Neck strain', 28)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (94, 94, 17, N'Elbow dislocation', 36)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (95, 95, 18, N'Facial injury', 10)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (96, 84, 19, N'Achilles tendonitis', 20)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (97, 85, 20, N'Shin splints', 25)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (98, 86, 21, N'Hip flexor strain', 15)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (99, 87, 22, N'Ankle fracture', 40)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (100, 88, 23, N'Sprained wrist', 32)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (101, 89, 24, N'Knee contusion', 18)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (102, 90, 25, N'Calf contusion', 22)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (103, 91, 26, N'Toe injury', 35)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (104, 92, 27, N'Hand contusion', 30)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (105, 93, 28, N'Facial laceration', 38)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (106, 94, 29, N'Groin strain', 28)
INSERT [football].[Injury] ([injury_id], [match_id], [player_id], [description], [minute]) VALUES (107, 95, 30, N'Concussion', 45)
GO
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (1, N'Mhmoud Elkhatieb', 1)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (2, N'Ahmed Seleman', 2)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (3, N'Fahd Khairy', 3)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (4, N'Khaled Elkady', 4)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (5, N'Moawad Samy', 5)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (6, N'Lameen', 6)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (7, N'Samy Azap', 7)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (8, N'Ahmed Samy', 8)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (9, N'Mahmoud Elbanna', 9)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (10, N'Maraey Yaseen', 10)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (11, N'Wafy Abbas', 11)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (12, N'Mwafy Sameh', 12)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (13, N'Mamdoh Abbas', 13)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (14, N'Qady Eldawla', 14)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (15, N'Bavly Ayman', 15)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (16, N'Abdelrhman Mahmoud', 16)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (78, N'Zinedine Zidane', 78)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (79, N'Ronald Koeman', 79)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (80, N'Hans-Dieter Flick', 80)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (81, N'Ole Gunnar Solskjaer', 81)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (82, N'Andrea Pirlo', 82)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (83, N'Mauricio Pochettino', 83)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (84, N'Stefano Pioli', 84)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (85, N'Erik ten Hag', 85)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (86, N'Thomas Tuchel', 86)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (87, N'Jurgen Klopp', 87)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (88, N'Antonio Conte', 88)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (89, N'Mikel Arteta', 89)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (90, N'Edin Terzic', 90)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (91, N'Diego Simeone', 91)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (92, N'Pep Guardiola', 92)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (93, N'Jose Mourinho', 93)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (94, N'Nuno Espirito Santo', 94)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (95, N'Gennaro Gattuso', 95)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (96, N'Carlo Ancelotti', 75)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (97, N'Luciano Spalletti', 76)
INSERT [football].[Manager] ([manager_id], [manager_name], [team_id]) VALUES (98, N'Ryan Mason', 77)
GO
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (1, 1, 2, 1, CAST(N'2021-12-23' AS Date), 1, 1, N'1-1')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (2, 2, 1, 2, CAST(N'2022-11-05' AS Date), 2, 2, N'3-1')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (3, 1, 3, 1, CAST(N'2022-01-01' AS Date), 7, 8, N'2-1')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (4, 3, 5, 2, CAST(N'2022-02-01' AS Date), 5, 10, N'2-2')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (5, 11, 12, 5, CAST(N'2023-09-12' AS Date), 1, 10, N'4-4')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (6, 3, 4, 2, CAST(N'2020-12-29' AS Date), 11, 6, N'6-1')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (7, 15, 13, 3, CAST(N'2019-06-24' AS Date), 8, 7, N'1-2')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (8, 10, 5, 9, CAST(N'2022-04-01' AS Date), 5, 10, N'3-3')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (9, 18, 8, 3, CAST(N'2024-01-23' AS Date), 1, 1, N'2-3')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (10, 7, 15, 7, CAST(N'2022-08-17' AS Date), 2, 2, N'2-4')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (75, 75, 76, 75, CAST(N'2023-01-01' AS Date), 75, 75, N'Home Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (76, 76, 77, 76, CAST(N'2023-02-01' AS Date), 76, 76, N'Draw')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (77, 77, 75, 77, CAST(N'2023-03-01' AS Date), 77, 77, N'Away Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (78, 78, 79, 78, CAST(N'2023-04-01' AS Date), 78, 78, N'Home Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (79, 79, 80, 79, CAST(N'2023-05-01' AS Date), 79, 79, N'Draw')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (80, 80, 81, 80, CAST(N'2023-06-01' AS Date), 80, 80, N'Away Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (81, 81, 82, 81, CAST(N'2023-07-01' AS Date), 81, 81, N'Home Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (82, 82, 83, 82, CAST(N'2023-08-01' AS Date), 82, 82, N'Draw')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (83, 83, 84, 83, CAST(N'2023-09-01' AS Date), 83, 83, N'Away Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (84, 84, 85, 84, CAST(N'2023-10-01' AS Date), 84, 84, N'Home Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (85, 85, 86, 85, CAST(N'2023-11-01' AS Date), 85, 85, N'Draw')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (86, 86, 87, 86, CAST(N'2023-12-01' AS Date), 86, 86, N'Away Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (87, 87, 88, 87, CAST(N'2024-01-01' AS Date), 87, 87, N'Home Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (88, 88, 89, 88, CAST(N'2024-02-01' AS Date), 88, 88, N'Draw')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (89, 89, 90, 89, CAST(N'2024-03-01' AS Date), 89, 89, N'Away Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (90, 90, 91, 90, CAST(N'2024-04-01' AS Date), 90, 90, N'Home Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (91, 91, 92, 91, CAST(N'2024-05-01' AS Date), 91, 91, N'Draw')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (92, 92, 93, 92, CAST(N'2024-06-01' AS Date), 92, 92, N'Away Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (93, 93, 94, 93, CAST(N'2024-07-01' AS Date), 93, 93, N'Home Win')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (94, 94, 95, 94, CAST(N'2024-08-01' AS Date), 94, 94, N'Draw')
INSERT [football].[Match] ([match_id], [home_team_id], [away_team_id], [championship_id], [match_date], [stadium_id], [referee_id], [result]) VALUES (95, 95, 88, 95, CAST(N'2024-09-01' AS Date), 95, 95, N'Away Win')
GO
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (1, N'Hatem Yosry', N'Saudian', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (2, N'Samy Khaled', N'American', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (3, N'Jhon Kenedy', N'Egyption', 14)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (4, N'Khaled Fathy', N'Egyption', 12)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (5, N'Jack', N'Egyption', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (6, N'Mohamed', N'Egyption', 18)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (7, N'Mohsen', N'Egyption', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (8, N'Khaled', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (9, N'Matar', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (10, N'Samy', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (11, N'Sayed', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (12, N'Nady', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (13, N'Hatem', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (14, N'Ahmed', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (15, N'Kotamy', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (16, N'Khaled', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (17, N'Mohamed', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (18, N'Khaled Saey', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (19, N'Kenedy', N'Egyption', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (20, N'Mokhtar', N'Egyption', 18)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (21, N'Safy', N'Egyption', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (22, N'Abas', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (23, N'Elmasry', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (24, N'Komsan', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (25, N'Abdelhafeez', N'Egyption', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (26, N'Fadel', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (27, N'Ghady', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (28, N'Talha', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (29, N'Gehad Elsayed', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (30, N'Khaled Samy', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (31, N'Nour', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (32, N'Safy', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (33, N'Elhade', N'Egyption', 3)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (34, N'Lamien', N'Spanish', 18)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (35, N'Mohsen', N'Egyption', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (36, N'Crestiano Ronaldo', N'Portuguese', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (37, N'Elmasry', N'Egyption', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (38, N'Kamel', N'Egyption', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (39, N'OLmo', N'Turkish', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (40, N'Hady', N'Egyption', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (41, N'Ghady', N'Egyption', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (42, N'Mazen', N'Egyption', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (43, N'Gehad', N'Egyption', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (44, N'Khaled', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (45, N'Hatem', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (46, N'Safy', N'Tunisian', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (47, N'Mohamed', N'Egyption', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (48, N'Hefdhy', N'Saudian', 18)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (49, N'Safy', N'Egyption', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (50, N'Abas', N'Egyption', 14)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (51, N'Elmasry', N'Egyption', 17)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (52, N'Komsan', N'Egyption', 17)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (53, N'Abdelhafeez', N'Egyption', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (54, N'Fadel', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (55, N'Ghady', N'Egyption', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (56, N'Talha', N'Egyption', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (57, N'Gehad', N'Egyption', 8)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (58, N'Khaled', N'Egyption', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (59, N'Nour', N'Egyption', 8)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (60, N'Safy', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (61, N'Kenedy', N'Egyption', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (62, N'Mokhtar', N'Egyption', 18)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (63, N'Safy', N'Egyption', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (64, N'Abas', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (65, N'Elmasry', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (67, N'Komsan', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (68, N'Abdelhafeez', N'Egyption', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (69, N'Fadel', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (70, N'Ghady', N'Egyption', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (71, N'Talha', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (72, N'Elsaady', N'Egyption', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (73, N'Jameel', N'Egyption', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (74, N'Nour', N'Egyption', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (75, N'Lotfy', N'Egyption', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (76, N'Aly Ahmed', N'Egyptian', 10)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (77, N'Carmen Rodriguez', N'Spanish', 15)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (78, N'Tariq Metwaly', N'Egyptian', 8)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (79, N'Lionel Messi', N'Argentinian', 75)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (80, N'Ahmed Abdelwahab', N'Egyptian', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (81, N'Nora Samy', N'Egyptian', 12)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (82, N'Omer Sayed', N'Turkish', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (83, N'Salma Shwban', N'Egyptian', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (84, N'Ahmad Hatem', N'Egyptian', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (85, N'Hana Saleh', N'Egyptian', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (86, N'Amr Kotamy', N'Egyptian', 3)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (87, N'Sara Mokhtar', N'Egyptian', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (88, N'Khaled Hatem', N'Egyptian', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (89, N'Youssef Mahmoud', N'Egyptian', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (90, N'Nadia Zahran', N'Egyptian', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (91, N'Karim Ibrahim', N'Egyptian', 3)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (92, N'Aya Ali', N'Egyptian', 8)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (93, N'Ramy Elsayed', N'Egyptian', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (94, N'Salwa Salah', N'Egyptian', 11)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (95, N'Rafik Mokhtar', N'Egyptian', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (96, N'Laila Samy', N'Egyptian', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (97, N'Karim Hatem', N'Egyptian', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (98, N'Amira Gamal', N'Egyptian', 84)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (99, N'Ahmad Farouk', N'Egyptian', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (100, N'Safia Khalid', N'Egyptian', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (101, N'Mido Sayed', N'Egyptian', 6)
GO
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (102, N'Lina Fathy', N'Egyptian', 80)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (103, N'Hussein Nasser', N'Egyptian', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (104, N'Hala Kotamy', N'Egyptian', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (105, N'Sherif Mokhtar', N'Egyptian', 90)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (106, N'Mona Shafik', N'Egyptian', 95)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (107, N'Khaled Metwaly', N'Egyptian', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (108, N'Eman Mokhtar', N'Egyptian', 8)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (109, N'Adel Sayed', N'Egyptian', 3)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (110, N'Soha Hossam', N'Egyptian', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (111, N'Hassan Ali', N'Egyptian', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (112, N'Mona Tarek', N'Egyptian', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (113, N'Ashraf Salah', N'Egyptian', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (114, N'Nadia Mahmoud', N'Egyptian', 8)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (115, N'Wael Samir', N'Egyptian', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (116, N'Layla Elsayed', N'Egyptian', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (117, N'Ramy Abdelwahab', N'Egyptian', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (118, N'Yasmin Adel', N'Egyptian', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (119, N'Ahmad Sayed', N'Egyptian', 3)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (120, N'Noura Amr', N'Egyptian', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (121, N'Ali Ahmed', N'Egyptian', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (122, N'Eman Samy', N'Egyptian', 10)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (123, N'Ahmad Zahran', N'Egyptian', 9)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (124, N'Sara Sherif', N'Egyptian', 8)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (125, N'Mido Tarek', N'Egyptian', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (126, N'Nadia Hossam', N'Egyptian', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (127, N'Khaled Ashraf', N'Egyptian', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (128, N'Salma Adel', N'Egyptian', 4)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (129, N'Sherif Amr', N'Egyptian', 3)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (130, N'Layla Ahmed', N'Egyptian', 2)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (131, N'Ramy Hossam', N'Egyptian', 1)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (132, N'Aya Ahmed', N'Egyptian', 10)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (133, N'Carmen Metwaly', N'Spanish', 15)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (134, N'Tariq Yamal', N'Egyptian', 8)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (135, N'Lionel Sanchez', N'Argentinian', 90)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (136, N'Ahmed Abdelwahab', N'Egyptian', 5)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (137, N'Nora Samy', N'Egyptian', 12)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (138, N'Omer Sayed', N'Turkish', 6)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (139, N'Salma Shwban', N'Egyptian', 75)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (140, N'Ahmad Hatem', N'Egyptian', 75)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (141, N'Hana Saleh', N'Egyptian', 91)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (142, N'Amr Kotamy', N'Egyptian', 83)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (143, N'Sara Mokhtar', N'Egyptian', 76)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (144, N'Khaled Hatem', N'Egyptian', 92)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (145, N'Youssef Mahmoud', N'Egyptian', 91)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (146, N'Nadia Zahran', N'Egyptian', 84)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (147, N'Karim Ibrahim', N'Egyptian', 83)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (148, N'Aya Ali', N'Egyptian', 88)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (149, N'Ramy Elsayed', N'Egyptian', 7)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (150, N'Salwa Salah', N'Egyptian', 91)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (162, N'Hassan Ali', N'Egyptian', 90)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (163, N'Mona Tarek', N'Egyptian', 77)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (164, N'Ashraf Salah', N'Egyptian', 75)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (165, N'Nadia Mahmoud', N'Egyptian', 78)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (166, N'Wael Samir', N'Egyptian', 92)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (167, N'Layla Elsayed', N'Egyptian', 76)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (168, N'Ramy Abdelwahab', N'Egyptian', 85)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (169, N'Yasmin Adel', N'Egyptian', 94)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (170, N'Ahmad Sayed', N'Egyptian', 79)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (171, N'Noura Amr', N'Egyptian', 77)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (172, N'Ali Ahmed', N'Egyptian', 81)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (173, N'Eman Samy', N'Egyptian', 94)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (174, N'Ahmad Zahran', N'Egyptian', 93)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (175, N'Sara Sherif', N'Egyptian', 84)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (176, N'Mido Tarek', N'Egyptian', 76)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (177, N'Nadia Hossam', N'Egyptian', 76)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (178, N'Khaled Ashraf', N'Egyptian', 75)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (179, N'Salma Adel', N'Egyptian', 75)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (180, N'Sherif Amr', N'Egyptian', 75)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (181, N'Layla Ahmed', N'Egyptian', 92)
INSERT [football].[Players] ([player_id], [player_name], [player_nationality], [team_id]) VALUES (182, N'Ramy Hossam', N'Egyptian', 81)
GO
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (1, N'Referee 1', N'Nationality 1')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (2, N'Referee 2', N'Nationality 2')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (3, N'john', N'British')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (4, N'Mohamed Omar', N'Egyption')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (5, N'Ebrahiem Nour', N'Egyption')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (6, N'Mohamed Adel', N'Egyption')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (7, N'Leon', N'American')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (8, N'Stieve', N'Canadian')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (9, N'Elmasry', N'German')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (10, N'Hulk', N'British')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (11, N'Ghady Elrefaey', N'Egyption')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (75, N'Jhonathan hulk', N'England')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (76, N'Hover Erik', N'France')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (77, N'Mark Marsheniak', N'Poland')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (78, N'Elena Rodriguez', N'Spain')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (79, N'Andreas Müller', N'Germany')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (80, N'Giulia Rossi', N'Italy')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (81, N'Mikhail Ivanov', N'Russia')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (82, N'Sofia Kowalski', N'Poland')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (83, N'Lucas Silva', N'Brazil')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (84, N'Aisha Rahman', N'India')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (85, N'Chang Min-ho', N'South Korea')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (86, N'Makoto Tanaka', N'Japan')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (87, N'Mia Chen', N'China')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (88, N'Mateo Gutierrez', N'Mexico')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (89, N'Isabella Fernandez', N'Argentina')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (90, N'Mohammed Al-Farsi', N'Saudi Arabia')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (91, N'Zara Ali', N'Pakistan')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (92, N'Yuki Takahashi', N'Japan')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (93, N'Fatima Ibrahim', N'Egypt')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (94, N'Oscar Gonzalez', N'Spain')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (95, N'Lila Patel', N'India')
INSERT [football].[Referee] ([referee_id], [referee_name], [referee_nationality]) VALUES (96, N'Seung-hoon Kim', N'South Korea')
GO
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (1, N'Stadium 1', N'City 1')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (2, N'Stadium 2', N'City 2')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (3, N'Cairo international Staduim', N'Ciaro')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (4, N'Elasalam', N'Cairo')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (5, N'Arab Tower', N'Alexandria')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (6, N'Elgaish', N'Suaiz')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (7, N'Almax', N'Alexandria')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (8, N'Almokawelon', N'Cairo')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (9, N'30 june', N'Cairo')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (10, N'Elasalam', N'Cairo')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (11, N'Beni Ebaid', N'Beni Ebaid')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (12, N'Almahlla', N'Tanta')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (13, N'Military Collage', N'Cairo')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (14, N'Aswan', N'Aswan')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (15, N'Sohag', N'Sohag')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (75, N'Old Trafford', N'Manchester')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (76, N'Camp Nou', N'Barcelona')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (77, N'Allianz Arena', N'Munich')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (78, N'Anfield', N'Liverpool')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (79, N'Santiago Bernabeu', N'Madrid')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (80, N'San Siro', N'Milan')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (81, N'Signal Iduna Park', N'Dortmund')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (82, N'Emirates Stadium', N'London')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (83, N'Etihad Stadium', N'Manchester')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (84, N'Stamford Bridge', N'London')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (85, N'Parc des Princes', N'Paris')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (86, N'Wembley Stadium', N'London')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (87, N'Maracan? Stadium', N'Rio de Janeiro')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (88, N'Stadio Olimpico', N'Rome')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (89, N'Amsterdam Arena', N'Amsterdam')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (90, N'Celtic Park', N'Glasgow')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (91, N'Est?dio do Drag?o', N'Porto')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (92, N'San Mamés Stadium', N'Bilbao')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (93, N'King Power Stadium', N'Leicester')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (94, N'Vodafone Park', N'Istanbul')
INSERT [football].[Stadium] ([stadium_id], [stadium_name], [city]) VALUES (95, N'Stade Vélodrome', N'Marseille')
GO
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (1, N'Alahly', 42)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (2, N'Zamalek', 14)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (3, N'Esmaiely', 2)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (4, N'Masry', 3)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (5, N'Modern Future', 1)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (6, N'Ettihad', 2)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (7, N'Almokawelon', 3)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (8, N'Pyramids', 0)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (9, N'Baladiet Almhalla', 4)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (10, N'Elbank Alahly', 0)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (11, N'Talae3 Elgaiesh', 2)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (12, N'Enpi', 1)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (13, N'Eldakhelia', 0)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (14, N'Zed', 0)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (15, N'Seramika Keliobatra', 1)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (16, N'Somuha', 3)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (17, N'Farco', 0)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (18, N'Elgona', 0)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (75, N'Team A', 5)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (76, N'Team B', 3)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (77, N'Team C', 7)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (78, N'Real Madrid', 34)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (79, N'FC Barcelona', 26)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (80, N'Bayern Munich', 31)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (81, N'Manchester United', 66)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (82, N'Juventus', 36)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (83, N'Paris Saint-Germain', 42)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (84, N'AC Milan', 18)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (85, N'Ajax', 33)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (86, N'Chelsea', 22)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (87, N'Liverpool', 19)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (88, N'Inter Milan', 18)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (89, N'Arsenal', 30)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (90, N'Borussia Dortmund', 10)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (91, N'Atletico Madrid', 11)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (92, N'Manchester City', 28)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (93, N'Roma', 3)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (94, N'Tottenham Hotspur', 17)
INSERT [football].[Team] ([team_id], [team_name], [trophies]) VALUES (95, N'Napoli', 9)
GO
ALTER TABLE [football].[Cards]  WITH CHECK ADD FOREIGN KEY([match_id])
REFERENCES [football].[Match] ([match_id])
GO
ALTER TABLE [football].[Cards]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [football].[Players] ([player_id])
GO
ALTER TABLE [football].[Championship]  WITH CHECK ADD FOREIGN KEY([winning_team_id])
REFERENCES [football].[Team] ([team_id])
GO
ALTER TABLE [football].[Goals]  WITH CHECK ADD FOREIGN KEY([match_id])
REFERENCES [football].[Match] ([match_id])
GO
ALTER TABLE [football].[Goals]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [football].[Players] ([player_id])
GO
ALTER TABLE [football].[Injury]  WITH CHECK ADD FOREIGN KEY([match_id])
REFERENCES [football].[Match] ([match_id])
GO
ALTER TABLE [football].[Injury]  WITH CHECK ADD FOREIGN KEY([player_id])
REFERENCES [football].[Players] ([player_id])
GO
ALTER TABLE [football].[Manager]  WITH CHECK ADD FOREIGN KEY([team_id])
REFERENCES [football].[Team] ([team_id])
GO
ALTER TABLE [football].[Match]  WITH CHECK ADD FOREIGN KEY([away_team_id])
REFERENCES [football].[Team] ([team_id])
GO
ALTER TABLE [football].[Match]  WITH CHECK ADD FOREIGN KEY([championship_id])
REFERENCES [football].[Championship] ([championship_id])
GO
ALTER TABLE [football].[Match]  WITH CHECK ADD FOREIGN KEY([home_team_id])
REFERENCES [football].[Team] ([team_id])
GO
ALTER TABLE [football].[Match]  WITH CHECK ADD FOREIGN KEY([referee_id])
REFERENCES [football].[Referee] ([referee_id])
GO
ALTER TABLE [football].[Match]  WITH CHECK ADD FOREIGN KEY([stadium_id])
REFERENCES [football].[Stadium] ([stadium_id])
GO
ALTER TABLE [football].[Players]  WITH CHECK ADD FOREIGN KEY([team_id])
REFERENCES [football].[Team] ([team_id])
GO
