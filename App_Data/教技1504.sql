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
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030140', N'安伟臣', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030149', N'郝晴', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030150', N'李财慧', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030151', N'李一祎', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030155', N'刘兰茵', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030158', N'卢天奕', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030159', N'马佳跃', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030163', N'史亚平', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030164', N'宋达', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030166', N'孙津惠', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030167', N'孙嫣', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030170', N'辛亚南', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030171', N'严程程', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030172', N'严欣悦', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030176', N'张聚', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030177', N'张君驰', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030180', N'谭和强', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030184', N'张薇壮', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030187', N'陈璐', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030189', N'党林月', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030191', N'郭沛', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030192', N'何润芳', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030193', N'何昕', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030195', N'赖丽婷', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030202', N'王玲', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030205', N'王想', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030207', N'闫凤蕊', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030208', N'杨蒙', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030211', N'张明畅', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1530030212', N'张馨予', N'111111')
INSERT [dbo].[tb_student] ([StuNo], [StuName], [StuPwd]) VALUES (N'1661030002', N'李云云', N'111111')
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
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030140', 1, 15, 20, 10, 20, N'多血质', N'组长', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030149', 1, 12, 30, 10, 20, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030150', 1, 10, 15, 46, 12, N'多血质', N'组长', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030151', 1, 12, 15, 13, 14, N'胆汁质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030155', 1, 20, 24, 26, 12, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030158', 1, 11, 16, 20, 14, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030159', 1, 13, 12, 14, 15, N'粘液质', N'组员', N'1')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030163', 1, 16, 48, 12, 13, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030164', 1, 12, 13, 15, 11, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030166', 1, 3, 0, 2, 4, N' 抑郁质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030167', 1, 11, 12, 19, 15, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030170', 1, 13, 16, 20, 14, N'粘液质', N'组员', N'2')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030171', 1, 13, 15, 19, 12, N'粘液质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030172', 1, 19, 12, 15, 16, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030176', 1, 20, 15, 14, 13, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030177', 1, 18, 12, 13, 12, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030180', 1, 20, 15, 14, 13, N'胆汁质', N'组员', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030184', 1, 12, 19, 12, 20, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030187', 1, 13, 15, 12, 20, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030189', 1, 12, 15, 14, 18, N'抑郁质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030191', 1, 14, 15, 13, 21, N'多血质', N'组长', N'3')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030192', 1, 12, 19, 12, 16, N'粘液质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030193', 1, 15, 20, 12, 11, N'粘液质', N'组员', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030195', 1, 12, 18, 13, 12, N'多血质', N'组长', N'4')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030202', 1, 11, 19, 16, 15, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030205', 1, 13, 15, 20, 14, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030207', 1, 11, 15, 13, 12, N'粘液质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030208', 1, 12, 16, 21, 11, N'粘液质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030211', 1, 19, 11, 12, 13, N'胆汁质', N'组员', N'5')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1530030212', 1, 22, 12, 16, 13, N'胆汁质', N'组员', N'6')
INSERT [dbo].[tb_personalityTest] ([StuNo], [isTest], [danZhi], [duoXue], [nianYe], [yiYu], [pattern], [groupIdentity], [groupId]) VALUES (N'1661030002', 1, 23, 12, 11, 13, N'胆汁质', N'组员', N'6')
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
