USE [salary]
GO
/****** Object:  Table [dbo].[chucvu]    Script Date: 10/12/2016 8:29:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chucvu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[chuc_vu] [nvarchar](100) NOT NULL,
	[he_so] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ngach]    Script Date: 10/12/2016 8:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ngach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maso] [varchar](10) NOT NULL,
	[ngach] [nvarchar](50) NOT NULL,
	[nien_hang] [int] NOT NULL,
	[_1] [nvarchar](30) NOT NULL,
	[_2] [nvarchar](30) NOT NULL,
	[_3] [nvarchar](30) NOT NULL,
	[_4] [nvarchar](30) NOT NULL,
	[_5] [nvarchar](30) NOT NULL,
	[_6] [nvarchar](30) NOT NULL,
	[_7] [nvarchar](30) NOT NULL,
	[_8] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 10/12/2016 8:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nhanvien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](40) NOT NULL,
	[gioi_tinh] [nvarchar](40) NOT NULL,
	[ngay_sinh] [nvarchar](40) NOT NULL,
	[dan_toc] [nvarchar](40) NOT NULL,
	[ngay_vao_lam] [varchar](30) NOT NULL,
	[dia_chi] [nvarchar](100) NOT NULL,
	[so_cmnd] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nhanvien_chucvu]    Script Date: 10/12/2016 8:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien_chucvu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_chucvu] [int] NOT NULL,
	[id_nhanvien] [int] NOT NULL,
	[totnhat] [nvarchar](50) NULL,
	[ngay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien_ngach]    Script Date: 10/12/2016 8:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien_ngach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ngach] [int] NOT NULL,
	[id_nhanvien] [int] NOT NULL,
	[bac] [nvarchar](10) NOT NULL,
	[ngay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[chucvu] ON 

INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (1, N'Hiệu trưởng', 0.8)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (2, N'Hiệu phó', 0.7)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (3, N'Trưởng phòng', 0.5)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (4, N'Trưởng khoa', 0.5)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (5, N'Giám đốc trung tâm', 0.5)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (6, N'Phó phòng', 0.4)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (7, N'Phó khoa', 0.4)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (8, N'Phó giám đốc trung tâm', 0.4)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (9, N'Trưởng bộ môn trực thuộc khoa', 0.4)
INSERT [dbo].[chucvu] ([id], [chuc_vu], [he_so]) VALUES (10, N'Phó bộ môn trực thuộc khoa', 0.3)
SET IDENTITY_INSERT [dbo].[chucvu] OFF
SET IDENTITY_INSERT [dbo].[ngach] ON 

INSERT [dbo].[ngach] ([id], [maso], [ngach], [nien_hang], [_1], [_2], [_3], [_4], [_5], [_6], [_7], [_8]) VALUES (1, N'01.001', N'Chuyên viên cao cấp', 3, N'6,20', N'6,56', N'6,92', N'7,28', N'7,64', N'8,00', N'8,36', N'VK 0,05')
INSERT [dbo].[ngach] ([id], [maso], [ngach], [nien_hang], [_1], [_2], [_3], [_4], [_5], [_6], [_7], [_8]) VALUES (2, N'01.003', N'Chuyên viên', 3, N'2,34', N'2,67', N'3,00', N'3,33', N'3,66', N'3,99', N'4,32', N'VK 0,05')
INSERT [dbo].[ngach] ([id], [maso], [ngach], [nien_hang], [_1], [_2], [_3], [_4], [_5], [_6], [_7], [_8]) VALUES (3, N'15.110', N'GIảng viên chính', 3, N'4,40', N'4,74', N'5,08', N'5,42', N'5,76', N'6,10', N'6,44', N'VK 0,05')
INSERT [dbo].[ngach] ([id], [maso], [ngach], [nien_hang], [_1], [_2], [_3], [_4], [_5], [_6], [_7], [_8]) VALUES (4, N'15.111', N'Giảng viên', 3, N'2,34', N'2,67', N'3,00', N'3,33', N'3,60', N'3,99', N'4,32', N'VK 0,05')
INSERT [dbo].[ngach] ([id], [maso], [ngach], [nien_hang], [_1], [_2], [_3], [_4], [_5], [_6], [_7], [_8]) VALUES (5, N'01.004', N'Cán sự', 2, N'1,86', N'2,06', N'2,26', N'2,46', N'2,66', N'VK 0,07', N'VK 0,09', N'VK 0,11')
INSERT [dbo].[ngach] ([id], [maso], [ngach], [nien_hang], [_1], [_2], [_3], [_4], [_5], [_6], [_7], [_8]) VALUES (6, N'01.007', N'Nhân viên kỹ thuật', 2, N'1,65', N'1,83', N'2,01', N'2,19', N'2,37', N'VK 0,07', N'VK 0,09', N'VK 0,11')
INSERT [dbo].[ngach] ([id], [maso], [ngach], [nien_hang], [_1], [_2], [_3], [_4], [_5], [_6], [_7], [_8]) VALUES (7, N'01.11', N'Nhân viên bảo vệ', 2, N'1,50', N'1,68', N'1,86', N'2,04', N'2,22', N'VK 0,07', N'VK 0,09', N'VK 0,11')
SET IDENTITY_INSERT [dbo].[ngach] OFF
