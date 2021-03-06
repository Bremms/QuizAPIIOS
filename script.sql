USE [TestQuiz]
GO
/****** Object:  User [quiz]    Script Date: 30/12/2017 17:57:02 ******/
CREATE USER [quiz] FOR LOGIN [quiz] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [wmm]    Script Date: 30/12/2017 17:57:02 ******/
CREATE USER [wmm] FOR LOGIN [wmm] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [quiz]
GO
ALTER ROLE [db_datareader] ADD MEMBER [quiz]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [quiz]
GO
/****** Object:  Table [dbo].[HighScore]    Script Date: 30/12/2017 17:57:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HighScore](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonTag] [varchar](200) NULL,
	[Score] [int] NULL,
	[CatID] [int] NULL,
 CONSTRAINT [PK_HighScore] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuizAnswer]    Script Date: 30/12/2017 17:57:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizAnswer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [varchar](200) NOT NULL,
	[IsRightAnswer] [bit] NOT NULL,
	[QuizQuestionID] [int] NULL,
 CONSTRAINT [PK_QuizAnswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuizCategory]    Script Date: 30/12/2017 17:57:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CategoryAvgDificulty] [int] NULL,
	[Description] [varchar](200) NULL,
 CONSTRAINT [PK_QuizCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuizQuestion]    Script Date: 30/12/2017 17:57:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizQuestion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](200) NULL,
	[PhotoInternalPath] [varchar](250) NULL,
	[PhotoExternalURL] [varchar](250) NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_QuizQuestion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[QuizAnswer] ON 

INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (1, N'Chelsea', 1, 1)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (2, N'Manchester United', 0, 1)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (3, N'Arsenal', 0, 1)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (4, N'Liverpool', 0, 1)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (5, N'Eden Hazard', 0, 2)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (6, N'Jamie Vardie', 1, 2)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (7, N'Sergio aquero', 0, 2)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (8, N'Hary Kane', 0, 2)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (9, N'Frank Lampard', 0, 3)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (10, N'Pavel Nedved', 1, 3)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (11, N'Andrea Pirlo', 0, 3)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (12, N'Sebastian Giovinco', 0, 3)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (13, N'Cristiano Ronaldo', 1, 4)
INSERT [dbo].[QuizAnswer] ([ID], [Answer], [IsRightAnswer], [QuizQuestionID]) VALUES (14, N'Lionel Messi', 0, 4)
SET IDENTITY_INSERT [dbo].[QuizAnswer] OFF
SET IDENTITY_INSERT [dbo].[QuizCategory] ON 

INSERT [dbo].[QuizCategory] ([ID], [Name], [CategoryAvgDificulty], [Description]) VALUES (1, N'Voetbal 1 ', 3, N'Een categorie over voetbal')
INSERT [dbo].[QuizCategory] ([ID], [Name], [CategoryAvgDificulty], [Description]) VALUES (2, N'Voetbal 2 ', 5, N'Een categorie over voetbal')
INSERT [dbo].[QuizCategory] ([ID], [Name], [CategoryAvgDificulty], [Description]) VALUES (3, N'Uitvindingen', 3, N'Een categorie over uitvindingen')
SET IDENTITY_INSERT [dbo].[QuizCategory] OFF
SET IDENTITY_INSERT [dbo].[QuizQuestion] ON 

INSERT [dbo].[QuizQuestion] ([ID], [Question], [PhotoInternalPath], [PhotoExternalURL], [CategoryID]) VALUES (1, N'Wie won in het seizoen 2004/2005 de premier league', NULL, N'https://cdn.bleacherreport.net/images/team_logos/328x328/epl.png', 1)
INSERT [dbo].[QuizQuestion] ([ID], [Question], [PhotoInternalPath], [PhotoExternalURL], [CategoryID]) VALUES (2, N'Wie was speler van het jaar in seizoen 2014/2015 in de premier league', NULL, N'https://cdn.bleacherreport.net/images/team_logos/328x328/epl.png', 1)
INSERT [dbo].[QuizQuestion] ([ID], [Question], [PhotoInternalPath], [PhotoExternalURL], [CategoryID]) VALUES (3, N'Wie is de speler weergegeven op de foto', NULL, N'http://i.dailymail.co.uk/i/pix/2015/04/02/10/044A48EF0000044D-3022842-image-a-21_1427968587431.jpg', 1)
INSERT [dbo].[QuizQuestion] ([ID], [Question], [PhotoInternalPath], [PhotoExternalURL], [CategoryID]) VALUES (4, N'Wie won de Ballon d''or het meest', NULL, N'http://images.performgroup.com/di/library/GOAL_INTERNATIONAL/63/90/fifa-ballon-dor-trophy_5lcu2xvnp2qp1arcfkf1vs1ay.jpg?t=1432324929', 1)
SET IDENTITY_INSERT [dbo].[QuizQuestion] OFF
ALTER TABLE [dbo].[HighScore]  WITH CHECK ADD  CONSTRAINT [FK_HighScore_QuizCategory] FOREIGN KEY([CatID])
REFERENCES [dbo].[QuizCategory] ([ID])
GO
ALTER TABLE [dbo].[HighScore] CHECK CONSTRAINT [FK_HighScore_QuizCategory]
GO
ALTER TABLE [dbo].[QuizAnswer]  WITH CHECK ADD  CONSTRAINT [FK_QuizAnswer_QuizQuestion] FOREIGN KEY([QuizQuestionID])
REFERENCES [dbo].[QuizQuestion] ([ID])
GO
ALTER TABLE [dbo].[QuizAnswer] CHECK CONSTRAINT [FK_QuizAnswer_QuizQuestion]
GO
ALTER TABLE [dbo].[QuizQuestion]  WITH CHECK ADD  CONSTRAINT [FK_QuizQuestion_QuizCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[QuizCategory] ([ID])
GO
ALTER TABLE [dbo].[QuizQuestion] CHECK CONSTRAINT [FK_QuizQuestion_QuizCategory]
GO
