USE [master]
GO
/****** Object:  Database [qlsk]    Script Date: 11/7/2018 10:57:00 AM ******/
CREATE DATABASE [qlsk]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlsk', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\qlsk.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlsk_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\qlsk_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qlsk] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlsk].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlsk] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlsk] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlsk] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlsk] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlsk] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlsk] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlsk] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlsk] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlsk] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlsk] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlsk] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlsk] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlsk] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlsk] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlsk] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlsk] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlsk] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlsk] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlsk] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlsk] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlsk] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlsk] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlsk] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlsk] SET  MULTI_USER 
GO
ALTER DATABASE [qlsk] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlsk] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlsk] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlsk] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qlsk] SET DELAYED_DURABILITY = DISABLED 
GO
USE [qlsk]
GO
/****** Object:  Table [dbo].[CacMeoVat]    Script Date: 11/7/2018 10:57:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CacMeoVat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[CacMeoVat] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_CacMeoVat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CheDo]    Script Date: 11/7/2018 10:57:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheDo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[CacBaiTap] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_CheDo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/7/2018 10:57:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](255) NULL,
	[MatKhau] [nvarchar](255) NULL,
	[TenNguoiDung] [nvarchar](255) NULL,
	[CapDo] [int] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 11/7/2018 10:57:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[TenMonAn] [nvarchar](50) NULL,
	[Loai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThucDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CacMeoVat] ON 

INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (1, N'mv1.PNG', N'3 cách xây dựng thực đơn ăn kiêng giảm cân cấp tốc dựa trên khoa học', N'http://www.thehinh.com/2018/11/3-cach-xay-dung-thuc-don-an-kieng-giam-can-cap-toc-dua-tren-khoa-hoc.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (2, N'mv2.jpg', N'16 thực phẩm cho thực đơn giảm cân 1 tuần giảm 6kg', N'http://www.thehinh.com/2018/10/sieng-an-16-thuc-pham-cho-thuc-don-giam-can-1-tuan-giam-6kg.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (3, N'mv3.jpg', N'Thực đơn giảm cân 1 tuần 2kg an toàn và hiệu quả', N'http://www.thehinh.com/2018/10/thuc-don-giam-can-1-tuan-2kg-an-toan-khoa-hoc-hieu-qua.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (4, N'mv4.jpg', N'7 thực đơn ăn kiêng giảm cân khoa học không nhịn ăn, không mệt mỏi', N'http://www.thehinh.com/2018/11/7-thuc-don-an-kieng-giam-can-khoa-hoc-khong-nhin-an-khong-met-moi.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (5, N'mv5.jpg', N'12 chế độ ăn kiêng giảm mỡ bụng cho nam nhanh chóng, hiệu quả', N'http://www.thehinh.com/2018/10/12-che-do-an-kieng-giam-mo-bung-cho-nam-nhanh-chong-hieu-qua.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (6, N'mv7.jpg', N'Mẹo giảm mỡ bụng, giảm đau nhức chỉ bằng cách dùng khăn tắm', N'http://www.thehinh.com/2016/05/meo-giam-mo-bung-bang-khan-tam-cua-nguoi-nhat.html')
SET IDENTITY_INSERT [dbo].[CacMeoVat] OFF
SET IDENTITY_INSERT [dbo].[CheDo] ON 

INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link]) VALUES (1, N'lt1.jpg', N'Thể hình 3 ngày một tuần cho người mới', N'https://www.webthehinh.com/chuong-trinh-tap-the-hinh-3-ngay-mot-tuan-cho-nguoi-moi/')
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link]) VALUES (2, N'lt2.jpg', N'Chương trình tăng cơ cho người gầy bởi Doug', N'https://www.webthehinh.com/chuong-trinh-tang-co-cho-nguoi-gay-boi-doug/')
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link]) VALUES (6, N'lt3.jpg', N'Kế hoạch giảm cân giảm mỡ cho nữ  trong 6 tuần cấp tốc', N'http://www.thehinh.com/2017/10/ke-hoach-giam-can-trong-6-tuan.html')
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link]) VALUES (7, N'lt4.jpg', N'10 bài tập cơ bắp tay trước hiệu quả hàng đầu', N'https://www.webthehinh.com/10-bai-tap-bap-tay-truoc-hang-dau/')
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link]) VALUES (8, N'lt5.jpg', N'Lịch tập giảm mỡ cho nữ 5 buổi 1 tuần trong 12 tuần chi tiết ', N'http://www.thehinh.com/2018/04/lich-tap-giam-mo-cho-nu-5-buoi-1-tuan.html')
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link]) VALUES (9, N'lt6.jpg', N'Lịch tập siết cơ giảm mỡ cho nam trong 6 tuần cơ bản', N'http://www.thehinh.com/2017/10/lich-tap-siet-co-giam-mo-6-tuan-cho-nam.html')
SET IDENTITY_INSERT [dbo].[CheDo] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at]) VALUES (2, N'thanhtk', N'1234', N'ThanhCC', 0, NULL)
INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at]) VALUES (5, N'poro177', N'12355', N'Vinh', 1, NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[ThucDon] ON 

INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa]) VALUES (1, N'1a.jpg', N'Mì Spaghetti', N'GÓI KHẨU PHẦN ĂN TĂNG CÂN', N'Phần 1200calories hoặc 800calories')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa]) VALUES (2, N'1b.jpg', N'Salad Rau Bò', N'GÓI KHẨU PHẦN ĂN TĂNG CÂN', N'Phần 1200calories hoặc 800calories')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa]) VALUES (3, N'1c.jpg', N'Mì Xào Gà ', N'GÓI KHẨU PHẦN ĂN TĂNG CÂN', N'Phần 1200calories hoặc 800calories')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa]) VALUES (4, N'1e.jpg', N'Đùi Gà Nướng', N'GÓI KHẨU PHẦN ĂN GIẢM CÂN', N'Phần 700calories hoặc 800calories')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa]) VALUES (5, N'11tp.jpg', N'Salad Trứng Cuộn', N'GÓI KHẨU PHẦN ĂN GIẢM CÂN', N'Phần 700calories hoặc 800calories')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa]) VALUES (6, N'1d.jpg', N'Bún Xào Cay', N'GÓI KHẨU PHẦN ĂN GIẢM CÂN', N'Phần 700calories hoặc 800calories')
SET IDENTITY_INSERT [dbo].[ThucDon] OFF
USE [master]
GO
ALTER DATABASE [qlsk] SET  READ_WRITE 
GO
