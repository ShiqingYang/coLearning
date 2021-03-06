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
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030152', N'毕生锐', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030153', N'陈煜', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030154', N'何元君', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030155', N'黄玉涛', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030156', N'白旭雯', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030157', N'崔雅琪', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030158', N'戴茜雅', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030159', N'刁含玲', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030160', N'丁海媚', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030161', N'樊文婷', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030162', N'冯晨涵', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030163', N'葛敬哲', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030164', N'谷晓彤', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030165', N'郭金', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030166', N'韩明旭', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030167', N'黄捷', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030168', N'黄静玉', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030169', N'黄怡霖', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030170', N'李晶', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030171', N'李钰', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030172', N'廖元芬', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030173', N'刘金佑', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030174', N'刘美琪', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030175', N'柳梦', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030176', N'卢鑫', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030177', N'陆好枫', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030178', N'罗艳', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030179', N'马红艳', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030180', N'米珊', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030181', N'潘新叶', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030182', N'王蕾', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030183', N'王珊', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030184', N'王婷', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030185', N'王雅溶', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030186', N'魏美钰', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030187', N'肖靓', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030188', N'徐荣', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030189', N'徐致远', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030190', N'许尚意', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030191', N'薛晓琪', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030193', N'杨文亚', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030194', N'杨叶', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030195', N'姚文青', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030196', N'尹雯', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030197', N'余影', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030198', N'张美', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030199', N'张琦', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030200', N'张妍', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1630030201', N'周竞', N'111111')



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
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030152', 1, 15, 20, 10, 20, N'多血质', N'组长', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030153', 1, 12, 30, 10, 20, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030154', 1, 10, 15, 46, 12, N'多血质', N'组长', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030155', 1, 12, 15, 13, 14, N'胆汁质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030156', 1, 20, 24, 26, 12, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030157', 1, 11, 16, 20, 14, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030158', 1, 13, 12, 14, 15, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030159', 1, 16, 48, 12, 13, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030160', 1, 12, 13, 15, 11, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030161', 1, 3, 0, 2, 4, N' 抑郁质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030162', 1, 11, 12, 19, 15, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030163', 1, 13, 16, 20, 14, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030164', 1, 13, 15, 19, 12, N'粘液质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030165', 1, 19, 12, 15, 16, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030166', 1, 20, 15, 14, 13, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030167', 1, 18, 12, 13, 12, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030168', 1, 20, 15, 14, 13, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030169', 1, 12, 19, 12, 20, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030170', 1, 13, 15, 12, 20, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030171', 1, 12, 15, 14, 18, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030172', 1, 14, 15, 13, 21, N'多血质', N'组长', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030173', 1, 12, 19, 12, 16, N'粘液质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030174', 1, 15, 20, 12, 11, N'粘液质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030175', 1, 12, 18, 13, 12, N'多血质', N'组长', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030176', 1, 11, 19, 16, 15, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030177', 1, 13, 15, 20, 14, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030178', 1, 11, 15, 13, 12, N'粘液质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030179', 1, 12, 16, 21, 11, N'粘液质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030180', 1, 19, 11, 12, 13, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030181', 1, 22, 12, 16, 13, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030182', 1, 23, 12, 11, 13, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030183', 1, 16, 11, 12, 46, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030184', 1, 12, 15, 19, 12, N'多血质', N'组长', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030185', 1, 12, 11, 18, 10, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030186', 1, 13, 12, 11, 19, N'多血质', N'组长', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030187', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030188', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030189', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030190', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030191', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030193', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030194', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030195', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030196', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030197', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030198', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030199', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030200', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1630030201', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')

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
