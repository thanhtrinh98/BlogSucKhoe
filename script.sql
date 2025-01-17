USE [master]
GO
/****** Object:  Database [qlsk]    Script Date: 1/3/2020 3:23:58 PM ******/
CREATE DATABASE [qlsk]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlsk', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\qlsk.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlsk_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\qlsk_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [qlsk] SET AUTO_CLOSE ON 
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
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 1/3/2020 3:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[id] [int] NOT NULL,
	[ThucDon_id] [int] NULL,
	[NguoiDung_id] [int] NULL,
	[NoiDung] [nvarchar](255) NULL,
	[ngaytao] [datetime] NULL,
	[User_Ten] [nvarchar](255) NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CacMeoVat]    Script Date: 1/3/2020 3:23:59 PM ******/
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
/****** Object:  Table [dbo].[CheDo]    Script Date: 1/3/2020 3:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheDo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[CacBaiTap] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[MotaCD] [nvarchar](max) NULL,
 CONSTRAINT [PK_CheDo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CuongDo]    Script Date: 1/3/2020 3:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuongDo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_CuongDo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KetQuaTDEE]    Script Date: 1/3/2020 3:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQuaTDEE](
	[id] [int] NOT NULL,
	[KetQua] [float] NULL,
	[HinhAnhTD] [nvarchar](max) NULL,
	[ThucDon_ID] [int] NULL,
 CONSTRAINT [PK_KetQuaTDEE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 1/3/2020 3:23:59 PM ******/
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
	[comment_id] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_GioiTinh]    Script Date: 1/3/2020 3:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_GioiTinh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ThuocGioiTinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Online]    Script Date: 1/3/2020 3:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Online](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoTV] [int] NULL,
	[NguoiDung_id] [int] NULL,
 CONSTRAINT [PK_Table_Online] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 1/3/2020 3:23:59 PM ******/
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
	[NguyenLieu] [nvarchar](max) NULL,
	[Buoc] [nvarchar](max) NULL,
	[Mota2] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThucDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTDEE]    Script Date: 1/3/2020 3:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTDEE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CanNang] [float] NULL,
	[ChieuCao] [float] NULL,
	[Tuoi] [int] NULL,
	[CuongDoID] [int] NULL,
	[GioiTinhID] [int] NULL,
 CONSTRAINT [PK_TinhTDEE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BinhLuan] ([id], [ThucDon_id], [NguoiDung_id], [NoiDung], [ngaytao], [User_Ten]) VALUES (0, 1, NULL, N'cac', CAST(N'2018-11-21 16:12:12.833' AS DateTime), N'ThanhCC')
SET IDENTITY_INSERT [dbo].[CacMeoVat] ON 

INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (1, N'mv1.PNG', N'3 cách xây dựng thực đơn ăn kiêng giảm cân cấp tốc dựa trên khoa học', N'http://www.thehinh.com/2018/11/3-cach-xay-dung-thuc-don-an-kieng-giam-can-cap-toc-dua-tren-khoa-hoc.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (2, N'mv2.jpg', N'16 thực phẩm cho thực đơn giảm cân 1 tuần giảm 6kg', N'http://www.thehinh.com/2018/10/sieng-an-16-thuc-pham-cho-thuc-don-giam-can-1-tuan-giam-6kg.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (3, N'mv3.jpg', N'Thực đơn giảm cân 1 tuần 2kg an toàn và hiệu quả', N'http://www.thehinh.com/2018/10/thuc-don-giam-can-1-tuan-2kg-an-toan-khoa-hoc-hieu-qua.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (4, N'mv4.jpg', N'7 thực đơn ăn kiêng giảm cân khoa học không nhịn ăn, không mệt mỏi', N'http://www.thehinh.com/2018/11/7-thuc-don-an-kieng-giam-can-khoa-hoc-khong-nhin-an-khong-met-moi.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (5, N'mv5.jpg', N'12 chế độ ăn kiêng giảm mỡ bụng cho nam nhanh chóng, hiệu quả', N'http://www.thehinh.com/2018/10/12-che-do-an-kieng-giam-mo-bung-cho-nam-nhanh-chong-hieu-qua.html')
INSERT [dbo].[CacMeoVat] ([id], [HinhAnh], [CacMeoVat], [Link]) VALUES (6, N'mv7.jpg', N'Mẹo giảm mỡ bụng, giảm đau nhức chỉ bằng cách dùng khăn tắm', N'http://www.thehinh.com/2016/05/meo-giam-mo-bung-bang-khan-tam-cua-nguoi-nhat.html')
SET IDENTITY_INSERT [dbo].[CacMeoVat] OFF
SET IDENTITY_INSERT [dbo].[CheDo] ON 

INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link], [MotaCD]) VALUES (1, N'lt1.jpg', N'Thể hình 3 ngày một tuần cho người mới', N'https://www.webthehinh.com/chuong-trinh-tap-the-hinh-3-ngay-mot-tuan-cho-nguoi-moi/', NULL)
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link], [MotaCD]) VALUES (2, N'lt2.jpg', N'Chương trình tăng cơ cho người gầy bởi Doug', N'https://www.webthehinh.com/chuong-trinh-tang-co-cho-nguoi-gay-boi-doug/', N'Tăng cân')
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link], [MotaCD]) VALUES (6, N'lt3.jpg', N'Kế hoạch giảm cân giảm mỡ cho nữ  trong 6 tuần cấp tốc', N'http://www.thehinh.com/2017/10/ke-hoach-giam-can-trong-6-tuan.html', N'Giảm cân')
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link], [MotaCD]) VALUES (7, N'lt4.jpg', N'10 bài tập cơ bắp tay trước hiệu quả hàng đầu', N'https://www.webthehinh.com/10-bai-tap-bap-tay-truoc-hang-dau/', NULL)
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link], [MotaCD]) VALUES (8, N'lt5.jpg', N'Lịch tập giảm mỡ cho nữ 5 buổi 1 tuần trong 12 tuần chi tiết ', N'http://www.thehinh.com/2018/04/lich-tap-giam-mo-cho-nu-5-buoi-1-tuan.html', NULL)
INSERT [dbo].[CheDo] ([id], [HinhAnh], [CacBaiTap], [Link], [MotaCD]) VALUES (9, N'lt6.jpg', N'Lịch tập siết cơ giảm mỡ cho nam trong 6 tuần cơ bản', N'http://www.thehinh.com/2017/10/lich-tap-siet-co-giam-mo-6-tuan-cho-nam.html', N'Giảm cân')
SET IDENTITY_INSERT [dbo].[CheDo] OFF
SET IDENTITY_INSERT [dbo].[CuongDo] ON 

INSERT [dbo].[CuongDo] ([id], [MoTa]) VALUES (1, N'Ít hoạt động, chỉ ăn đi làm về ngủ')
INSERT [dbo].[CuongDo] ([id], [MoTa]) VALUES (2, N'Có tập nhẹ nhàng, tuần 1-3 buổi')
INSERT [dbo].[CuongDo] ([id], [MoTa]) VALUES (3, N'Có vận động vừa 4-5 buổi')
INSERT [dbo].[CuongDo] ([id], [MoTa]) VALUES (4, N'Vận động nhiều 6-7 buổi')
INSERT [dbo].[CuongDo] ([id], [MoTa]) VALUES (5, N'Vận động rất nhiều ngày tập 2 lần')
SET IDENTITY_INSERT [dbo].[CuongDo] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at], [comment_id]) VALUES (2, N'thanhtk', N'1234', N'ThanhCC', 0, NULL, NULL)
INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at], [comment_id]) VALUES (5, N'poro177', N'12355', N'Vinh', 1, NULL, NULL)
INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at], [comment_id]) VALUES (2011, N'elise', N'123', N'123', 0, NULL, NULL)
INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at], [comment_id]) VALUES (2012, N'vinh123', N'123', N'Vinh Lo', 0, NULL, NULL)
INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at], [comment_id]) VALUES (2014, N'VinhAdmin', N'123', N'VV', 1, NULL, NULL)
INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at], [comment_id]) VALUES (2015, N'Apo', N'123', N'NeoD', 0, NULL, NULL)
INSERT [dbo].[NguoiDung] ([id], [TaiKhoan], [MatKhau], [TenNguoiDung], [CapDo], [created_at], [comment_id]) VALUES (3014, N'Nhut111', N'123456', N'Nhut Nho', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[Table_GioiTinh] ON 

INSERT [dbo].[Table_GioiTinh] ([id], [ThuocGioiTinh]) VALUES (1, N'Nam')
INSERT [dbo].[Table_GioiTinh] ([id], [ThuocGioiTinh]) VALUES (2, N'Nữ')
SET IDENTITY_INSERT [dbo].[Table_GioiTinh] OFF
SET IDENTITY_INSERT [dbo].[ThucDon] ON 

INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa], [NguyenLieu], [Buoc], [Mota2]) VALUES (1, N'1a.jpg', N'Mì Spaghetti ', N'GÓI KHẨU PHẦN ĂN TĂNG CÂN', N'1200 Calories', N'Bắp cải tím
Bắp cải trắng
Xà lách
Hành tây - hành tím
Đậu hà lan - ngô mỹ
Bông cải xanh
Bò (tái)', N'Bắp cải tím
Bắp cải trắng
Xà lách
Hành tây - hành tím
Đậu hà lan - ngô mỹ
Bông cải xanh
Bò (tái)', N'giam can')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa], [NguyenLieu], [Buoc], [Mota2]) VALUES (2, N'1b.jpg', N'Salad Rau Bò', N'GÓI KHẨU PHẦN ĂN TĂNG CÂN', N'1200 Calories', N'Bắp cải tím
Bắp cải trắng
Xà lách
Hành tây - hành tím
Đậu hà lan - ngô mỹ
Bông cải xanh
Bò (tái)', N'Xào thịt bò trước (nên nêm nếm trước một ít) lúc ăn chung với sốt thì sẽ ngon hơn.Tất cả rau của quả rửa sạch sơ chế cho kỹ, cắt nhỏ cho dễ ăn và trộn.', N'Tăng cân')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa], [NguyenLieu], [Buoc], [Mota2]) VALUES (3, N'1c.jpg', N'Mì Xào Gà ', N'GÓI KHẨU PHẦN ĂN TĂNG CÂN', N'1000 Calories', N'2 cái ức gà 
300 g cải ngọt
2 gói mì xào hảo hảo
Gia vị nêm nếm, tiêu, tỏi. Hành lá', N'Ức gà đem rửa sạch với muối. Bỏ thịt gà vào nồi đổ nước ngập thịt. Nấu tới khi nước sôi thì tắt lửa, để đó ngâm khoảng 20''. Sau đó xé sợi. Rồi ướp thịt gà với nước sốt chua ngọt trong gói mì (ai k dùng mì này thì có thể ướp vs dầu hào, nước tương, đường)

  
Cải ngọt rửa sạch, cắt khúc vừa ăn.

  
Lấy nước luộc gà lúc nãy trụng mì cho chín, vớt ra để ráo.

  
Cho ít dầu vào chảo, tỏi vào phi thơm. Bỏ thịt gà xé vào đảo sơ cho thấm gia vị, cho cải ngọt vào xào chung, nêm thêm dầu hào vs 1 muỗng cà phê đường (ai đã nêm ở trên r thì k cần), thêm xíu nước luộc gà vào. Đun thêm xíu nữa rồi cho mì vào đảo đều r tắt bếp. Khi ăn rắc thêm tiêu nữa cho thơm.', N'Tăng cân')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa], [NguyenLieu], [Buoc], [Mota2]) VALUES (4, N'1e.jpg', N'Đùi Gà Nướng', N'GÓI KHẨU PHẦN ĂN GIẢM CÂN', N'700 Calories', N'đùi gà
1 thìa đường
1 thìa muối
2 thìa dầu hào
1 chút hạt tiêu
1 nhánh gừng
2 nhánh tỏi', N'Gà ước các gia vị đã chuẩn bị ở trên 1 tiếng trở lên.

  
Nướng gà 10 phút sau đó lật gà rồi nướng thêm 10 phút nữa là gà chín.', N'Giảm cân')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa], [NguyenLieu], [Buoc], [Mota2]) VALUES (5, N'11tp.jpg', N'Salad Trứng Cuộn', N'GÓI KHẨU PHẦN ĂN GIẢM CÂN', N'700 Calories', N'1 búp xà lách
1-2 quả trứng gà
Cà chua bi, hành tây tím, ngò, quả olive
Dầu olive vị tỏi,nước lọc,muối, dấm, đường, tiêu', N'Xà lách, cà chua bi rửa sạch sẽ ngâm muối loãng, rửa lại để ráo. Xếp xà lách lên dĩa, cắt làm hai trái cà chua bi cho vào luôn. Trứng gà luộc 10 phút cho chín. Hành tây tím cắt mỏng.Lấy 1/2 chén nước lọc pha với dấm, đường, muối, dầu olive vị tỏi, quậy lên tan đều nêm theo khẩu vị nha! Mình thấy chua chua ngọt ngọt mặn vừa là được, cho thêm hành tây tím và xíu tiêu vào', N'Giảm cân')
INSERT [dbo].[ThucDon] ([id], [HinhAnh], [TenMonAn], [Loai], [MoTa], [NguyenLieu], [Buoc], [Mota2]) VALUES (6, N'1d.jpg', N'Bún Xào Cay', N'GÓI KHẨU PHẦN ĂN GIẢM CÂN', N'700 Calories', N'1 gói bún khô Wai Wai
150 gr thịt diềm thăn bò
10 quả đỗ ván
5-6 nhánh tỏi
1 củ hành tây nhỏ/2-3 củ hành shallot
1 hộp corned beef
Dầu ăn, dầu hào, gia vị, tiêu bột', N'Hành tây thái khoanh. Cho dầu ăn vào chảo, cho hành tây vào đảo, cho corned beef vào đảo đến khi hành tây chín là được.

  
Thịt bò thái mỏng ướp với chút dầu ăn, tỏi bằm, 1 tbsp dầu hào, 1 tsp gia vị (muối/hạt nêm/bột canh), 1/2 tsp tiêu bột. Đậu ván tước xơ, thái chỉ. Bún khô ngâm nước lạnh cho mềm.

  
Bắc chảo chống dính, cho dầu, làm nóng chảo, xào thịt bò trên lửa lớn, thịt chín tái bỏ đậu ván vào xào tiếp cho chín. Trút thịt bò ra âu.

  
Cho dầu ăn vào chảo, trút bún khô vào, nêm nước tương, vừa xào vừa châm thêm chút nước cho bún nở. Đến khi cảm thấy bún mềm vừa độ thì dừng cho nước. Trút thịt bò xào vào, trộn đều, nêm nếm lại.

  
Khi ăn cho bún ra đĩa, xúc một thìa corned beef lên trên làm topping.', N'Giảm cân')
SET IDENTITY_INSERT [dbo].[ThucDon] OFF
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_NguoiDung] FOREIGN KEY([NguoiDung_id])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_NguoiDung]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThucDon] FOREIGN KEY([ThucDon_id])
REFERENCES [dbo].[ThucDon] ([id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThucDon]
GO
ALTER TABLE [dbo].[KetQuaTDEE]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaTDEE_ThucDon] FOREIGN KEY([ThucDon_ID])
REFERENCES [dbo].[ThucDon] ([id])
GO
ALTER TABLE [dbo].[KetQuaTDEE] CHECK CONSTRAINT [FK_KetQuaTDEE_ThucDon]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_BinhLuan] FOREIGN KEY([comment_id])
REFERENCES [dbo].[BinhLuan] ([id])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_BinhLuan]
GO
ALTER TABLE [dbo].[Table_Online]  WITH CHECK ADD  CONSTRAINT [FK_Table_Online_NguoiDung] FOREIGN KEY([NguoiDung_id])
REFERENCES [dbo].[NguoiDung] ([id])
GO
ALTER TABLE [dbo].[Table_Online] CHECK CONSTRAINT [FK_Table_Online_NguoiDung]
GO
ALTER TABLE [dbo].[TinhTDEE]  WITH CHECK ADD  CONSTRAINT [FK_TinhTDEE_CuongDo] FOREIGN KEY([CuongDoID])
REFERENCES [dbo].[CuongDo] ([id])
GO
ALTER TABLE [dbo].[TinhTDEE] CHECK CONSTRAINT [FK_TinhTDEE_CuongDo]
GO
ALTER TABLE [dbo].[TinhTDEE]  WITH CHECK ADD  CONSTRAINT [FK_TinhTDEE_Table_GioiTinh] FOREIGN KEY([GioiTinhID])
REFERENCES [dbo].[Table_GioiTinh] ([id])
GO
ALTER TABLE [dbo].[TinhTDEE] CHECK CONSTRAINT [FK_TinhTDEE_Table_GioiTinh]
GO
/****** Object:  StoredProcedure [dbo].[checksearch]    Script Date: 1/3/2020 3:24:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[checksearch]
AS
BEGIN
	SET NOCOUNT ON;
	select * from CuongDo cd where cd.MoTa like '%các%'
END

GO
USE [master]
GO
ALTER DATABASE [qlsk] SET  READ_WRITE 
GO
