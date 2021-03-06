USE [coLearning]
GO
/****** Object:  Table [dbo].[tb_teacher]    Script Date: 03/17/2017 09:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_teacher](
	[TeacherNum] [varchar](50) NOT NULL,
	[TeacherName] [varchar](50) NULL,
	[TeacherPwd] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_teacher] ([TeacherNum], [TeacherName], [TeacherPwd]) VALUES (N'teacher', N'Wang', N'teacher')
/****** Object:  Table [dbo].[tb_student]    Script Date: 03/17/2017 09:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_student](
	[StuNo] [nchar](10) NOT NULL,
	[StuName] [varchar](50) NULL,
	[StuPwd] [varchar](50) NULL,
 CONSTRAINT [PK_tb_student] PRIMARY KEY CLUSTERED 
(
	[StuNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030160', N'聂昱', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030161', N'王嘉正', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030162', N'黄思敏', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030163', N'姜静静', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030164', N'林美丽', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030165', N'孙月', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030166', N'王晨阳', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030167', N'王晓琪', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030168', N'王旭', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030169', N'赵雨凡', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030170', N'贾焕阳', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030171', N'刘德华', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030172', N'刘智贤', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030173', N'张召旭', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030174', N'朱磊', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030175', N'陈明玥', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030176', N'冯梦蝶', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030177', N'冯敏', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030178', N'高剑兰', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030179', N'高鑫', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030180', N'巩江源', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030181', N'韩雨桐', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030182', N'阚文荣', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030183', N'李艳如', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030184', N'励挺', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030185', N'刘畅', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030186', N'王清', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030188', N'仵素双', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030189', N'颜青', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030190', N'马琳', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030191', N'李婷', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030192', N'杨梦丽', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030193', N'张三', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030194', N'李四', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030195', N'王五', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1610030196', N'吴多嫩', N'111111')
/****** Object:  Table [dbo].[tb_personalityTest]    Script Date: 03/17/2017 09:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_personalityTest](
	[StuNo] [nchar](10) NOT NULL,
	[isTest] [int] NOT NULL,
	[danZhi] [int] NOT NULL,
	[duoXue] [int] NOT NULL,
	[nianYe] [int] NOT NULL,
	[yiYu] [int] NOT NULL,
	[pattern] [nvarchar](50) NULL,
	[groupIdentity] [nvarchar](50) NULL,
	[groupId] [nvarchar](50) NULL,
 CONSTRAINT [PK_personalityTest] PRIMARY KEY CLUSTERED 
(
	[StuNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030160', 1, 15, 20, 10, 20, N'多血质', N'组长', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030161', 1, 12, 30, 10, 20, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030162', 1, 10, 15, 46, 12, N'多血质', N'组长', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030163', 1, 12, 15, 13, 14, N'胆汁质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030164', 1, 20, 24, 26, 12, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030165', 1, 11, 16, 20, 14, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030166', 1, 13, 12, 14, 15, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030167', 1, 16, 48, 12, 13, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030168', 1, 12, 13, 15, 11, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030169', 1, 3, 0, 2, 4, N' 抑郁质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030170', 1, 11, 12, 19, 15, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030171', 1, 13, 16, 20, 14, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030172', 1, 13, 15, 19, 12, N'粘液质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030173', 1, 19, 12, 15, 16, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030174', 1, 20, 15, 14, 13, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030175', 1, 18, 12, 13, 12, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030176', 1, 20, 15, 14, 13, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030177', 1, 12, 19, 12, 20, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030178', 1, 13, 15, 12, 20, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030179', 1, 12, 15, 14, 18, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030180', 1, 14, 15, 13, 21, N'多血质', N'组长', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030181', 1, 12, 19, 12, 16, N'粘液质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030182', 1, 15, 20, 12, 11, N'粘液质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030183', 1, 12, 18, 13, 12, N'多血质', N'组长', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030184', 1, 11, 19, 16, 15, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030185', 1, 13, 15, 20, 14, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030186', 1, 11, 15, 13, 12, N'粘液质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030188', 1, 12, 16, 21, 11, N'粘液质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030189', 1, 19, 11, 12, 13, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030190', 1, 22, 12, 16, 13, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030191', 1, 23, 12, 11, 13, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030192', 1, 16, 11, 12, 46, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030193', 1, 12, 15, 19, 12, N'多血质', N'组长', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030194', 1, 12, 11, 18, 10, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030195', 1, 13, 12, 11, 19, N'多血质', N'组长', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1610030196', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
/****** Object:  Table [dbo].[tb_admin]    Script Date: 03/17/2017 09:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_admin](
	[AdminNum] [nvarchar](50) NOT NULL,
	[AdminName] [varchar](50) NULL,
	[AdminPwd] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_admin] PRIMARY KEY CLUSTERED 
(
	[AdminNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_admin] ([AdminNum], [AdminName], [AdminPwd]) VALUES (N'admin', N'admin', N'admin')
/****** Object:  Default [DF_personalityTest_groupIdentity]    Script Date: 03/17/2017 09:04:09 ******/
ALTER TABLE [dbo].[tb_personalityTest] ADD  CONSTRAINT [DF_personalityTest_groupIdentity]  DEFAULT (N'组员') FOR [groupIdentity]
GO
