USE [data]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 03/23/2017 12:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherNum] [nvarchar](50) NOT NULL,
	[TeacherName] [nvarchar](50) NULL,
	[TeacherPwd] [nvarchar](50) NULL,
	[TeacherSex] [nchar](10) NULL,
	[TeacherInstitution] [nvarchar](50) NULL,
	[TeacherSpecialty] [nvarchar](50) NULL,
	[TeacherCourse] [nvarchar](50) NULL,
	[TeacherTitles] [nvarchar](50) NULL,
	[TeacherPhone] [nvarchar](50) NULL,
	[TeacherE-mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Teacher] ([TeacherNum], [TeacherName], [TeacherPwd], [TeacherSex], [TeacherInstitution], [TeacherSpecialty], [TeacherCourse], [TeacherTitles], [TeacherPhone], [TeacherE-mail]) VALUES (N'001', N'张三', N'001', N'女         ', N'教育科学学院', N'教育技术', N'摄像', N'讲师', N'15122047856', N'123@126.com')
INSERT [dbo].[Teacher] ([TeacherNum], [TeacherName], [TeacherPwd], [TeacherSex], [TeacherInstitution], [TeacherSpecialty], [TeacherCourse], [TeacherTitles], [TeacherPhone], [TeacherE-mail]) VALUES (N'002', N'李四', N'002', N'男         ', N'计算机学院', N'计算机应用', N'计算机基础', N'讲师', N'17756853254', N'456@126.com')
INSERT [dbo].[Teacher] ([TeacherNum], [TeacherName], [TeacherPwd], [TeacherSex], [TeacherInstitution], [TeacherSpecialty], [TeacherCourse], [TeacherTitles], [TeacherPhone], [TeacherE-mail]) VALUES (N'003', N'王五', N'003', N'男         ', N'教育科学学院', N'教育学原理', N'教学系统设计', N'副教授', N'15866961458', N'789@126.com')
INSERT [dbo].[Teacher] ([TeacherNum], [TeacherName], [TeacherPwd], [TeacherSex], [TeacherInstitution], [TeacherSpecialty], [TeacherCourse], [TeacherTitles], [TeacherPhone], [TeacherE-mail]) VALUES (N'004', N'孙六', N'004', N'女         ', N'教育科学学院', N'现代教育技术', N'Spss应用', N'讲师', N'17756648923', N'123@163.com')
