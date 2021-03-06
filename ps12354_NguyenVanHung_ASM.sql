USE [PS12354_NguyenVanHung_ASM]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 3/4/2021 3:46:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](20) NULL,
	[VideoId] [varchar](20) NULL,
	[LikeDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Share]    Script Date: 3/4/2021 3:46:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](20) NULL,
	[VideoId] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[ShareDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/4/2021 3:46:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [varchar](20) NOT NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Admin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 3/4/2021 3:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[Id] [varchar](20) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Poster] [nvarchar](50) NULL,
	[Views] [int] NULL,
	[Description] [nvarchar](50) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Favorite] ON 

INSERT [dbo].[Favorite] ([Id], [UserId], [VideoId], [LikeDate]) VALUES (1, N'trinh', N'1', CAST(N'2020-01-29' AS Date))
SET IDENTITY_INSERT [dbo].[Favorite] OFF
INSERT [dbo].[Users] ([Id], [Password], [Email], [Fullname], [Admin]) VALUES (N'trinh', N'1', N'trinh@gmail.com', N'Trinh', 0)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'1', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'10', N'Trinh 1', N'phone3.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'11', N'Trinh 1', N'phone3.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'12', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'2', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'3', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'4', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'5', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'6', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'7', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'8', N'Trinh 1', N'phone1.jpg', 5, N'Trinh 1', 1)
INSERT [dbo].[Video] ([Id], [Title], [Poster], [Views], [Description], [Active]) VALUES (N'9', N'Trinh 1', N'phone3.jpg', 5, N'Trinh 1', 1)
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Video] ([Id])
GO
ALTER TABLE [dbo].[Share]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Share]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Video] ([Id])
GO
