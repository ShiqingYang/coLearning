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
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030141', N'廉泽民', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030142', N'乔子煊', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030143', N'王子', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030144', N'徐子瑞', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030145', N'展鲲', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030146', N'张扬', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030147', N'郑睿铭', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030148', N'郭栩宁', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030152', N'李雨奇', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030153', N'李雨彤', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030156', N'刘曼', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030157', N'刘天慧', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030160', N'毛雁', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030162', N'邵钰莹', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030165', N'宋瑞', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030168', N'王若琳', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030169', N'吴友红', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030173', N'于可心', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030175', N'张吉莲', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030178', N'白天喜', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030181', N'滕宇欣', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030182', N'许靖宇', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030185', N'赵灵晓', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030188', N'陈萌', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030190', N'高硕', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030194', N'胡杨洋', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030196', N'李梓凡', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030197', N'刘昱含', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030198', N'卢姝凝', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030199', N'马冬', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030200', N'孙雅婷', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030201', N'王静漪', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030203', N'王露莎', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030204', N'王明凤', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030206', N'王雅莉', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030209', N'尤鑫鑫', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030210', N'张静', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030213', N'张紫璐', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030214', N'张紫云', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030215', N'周紫婷', N'111111')
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
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030141', 1, 15, 20, 10, 20, N'多血质', N'组长', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030142', 1, 12, 30, 10, 20, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030143', 1, 10, 15, 46, 12, N'多血质', N'组长', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030144', 1, 12, 15, 13, 14, N'胆汁质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030145', 1, 20, 24, 26, 12, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030146', 1, 11, 16, 20, 14, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030147', 1, 13, 12, 14, 15, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030148', 1, 16, 48, 12, 13, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030152', 1, 12, 13, 15, 11, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030153', 1, 3, 0, 2, 4, N' 抑郁质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030156', 1, 11, 12, 19, 15, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030157', 1, 13, 16, 20, 14, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030160', 1, 13, 15, 19, 12, N'粘液质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030162', 1, 19, 12, 15, 16, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030165', 1, 20, 15, 14, 13, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030168', 1, 18, 12, 13, 12, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030169', 1, 20, 15, 14, 13, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030173', 1, 12, 19, 12, 20, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030175', 1, 13, 15, 12, 20, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030178', 1, 12, 15, 14, 18, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030181', 1, 14, 15, 13, 21, N'多血质', N'组长', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030182', 1, 12, 19, 12, 16, N'粘液质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030185', 1, 15, 20, 12, 11, N'粘液质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030188', 1, 12, 18, 13, 12, N'多血质', N'组长', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030190', 1, 11, 19, 16, 15, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030194', 1, 13, 15, 20, 14, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030196', 1, 11, 15, 13, 12, N'粘液质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030197', 1, 12, 16, 21, 11, N'粘液质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030198', 1, 19, 11, 12, 13, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030199', 1, 22, 12, 16, 13, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030200', 1, 23, 12, 11, 13, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030201', 1, 16, 11, 12, 46, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030203', 1, 12, 15, 19, 12, N'多血质', N'组长', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030204', 1, 12, 11, 18, 10, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030206', 1, 13, 12, 11, 19, N'多血质', N'组长', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030209', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030210', 1, 12, 15, 19, 12, N'多血质', N'组长', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030213', 1, 12, 11, 18, 10, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030214', 1, 13, 12, 11, 19, N'多血质', N'组长', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030215', 1, 12, 12, 13, 20, N'多血质', N'组员', N'6')
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
