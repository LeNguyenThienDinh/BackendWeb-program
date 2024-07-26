create database PhoneShop
go
use PhoneShop
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 11/24/2019 1:21:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaDT] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDienThoai]    Script Date: 11/24/2019 1:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDienThoai](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiDienThoai] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/24/2019 1:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [int] NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/24/2019 1:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](11) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 11/24/2019 1:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 11/24/2019 1:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[MaDT] [int] IDENTITY(1,1) NOT NULL,
	[TenDienThoai] [nvarchar](50) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](max) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaNSX] [int] NOT NULL,
	[MaSP] [int] NULL,
	[Moi] [int] NULL,
 CONSTRAINT [PK_DienThoai] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongtySX]    Script Date: 11/24/2019 1:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongtySX](
	[MaCongtySX] [int] IDENTITY(1,1) NOT NULL,
	[TenCongtySX] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TieuSu] [nvarchar](max) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_CongtySX] PRIMARY KEY CLUSTERED 
(
	[MaCongtySX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 11/24/2019 1:21:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGia](
	[MaDT] [int] NOT NULL,
	[MaCongtySX] [int] NOT NULL,
	[VaiTro] [nvarchar](50) NULL,
	[ViTri] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThamGia] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC,
	[MaCongtySX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[LoaiDienThoai] ON 

INSERT [dbo].[LoaiDienThoai] ([MaSP], [TenSP]) VALUES (1, N'IPHONE')
INSERT [dbo].[LoaiDienThoai] ([MaSP], [TenSP]) VALUES (2, N'XIAOMI')
INSERT [dbo].[LoaiDienThoai] ([MaSP], [TenSP]) VALUES (3, N'OPPO')
INSERT [dbo].[LoaiDienThoai] ([MaSP], [TenSP]) VALUES (4, N'VIVO')
INSERT [dbo].[LoaiDienThoai] ([MaSP], [TenSP]) VALUES (5, N'Red Magic')
INSERT [dbo].[LoaiDienThoai] ([MaSP], [TenSP]) VALUES (6, N'Sony')
INSERT [dbo].[LoaiDienThoai] ([MaSP], [TenSP]) VALUES (7, N'LG')
SET IDENTITY_INSERT [dbo].[LoaiDienThoai] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (1, N'LGG', N'124 Nguyễn Văn Cừ Q.1 Tp.HCM', N'1900156045')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (2, N'APPLE', N'Biên Hòa-Đồng Nai', N'1900151112')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (3, N'XIAOMII', N'Tp.HCM', N'1900157090')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (4, N'OPPOO', N'Tp.HCM', N'0908419981')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (5, N'VIVOO', N'Đà Nẵng', N'0903118833')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (6, N'RM', N'Bình Dương', N'0913336677')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [DienThoai]) VALUES (7, N'SONYY', N'Tp.HCM', N'0989888888')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[DienThoai] ON 

INSERT [dbo].[DienThoai] ([MaDT], [TenDienThoai], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaSP], [Moi]) VALUES (74, N'Iphone 15 pro max', CAST(85000 AS Decimal(18, 0)), N'nội dung gồm 2 phần - 17 tập', N'000001.jpg', CAST(0x0000A75500000000 AS DateTime), 100, 1, 1, 0)
INSERT [dbo].[DienThoai] ([MaDT], [TenDienThoai], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaSP], [Moi]) VALUES (84, N'Xiaomi redmi note 12', CAST(85000 AS Decimal(18, 0)), N'Cuốn sách 3DS Max giới thiệu đến các bạn những kỹ năng sử dụng phần mềm hỗ trợ V-ray mới nhất đang được nhiều người trên thế giới quan tâm. ', N'000002.jpg', CAST(0x0000A70E00000000 AS DateTime), 45, 1, 1, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDienThoai], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaSP], [Moi]) VALUES (86, N'Oppo Find X5 Pro', CAST(55000 AS Decimal(18, 0)), N'InDesign CS3 là chương trình dàn trang rất hiện đại và tiện dụng dành cho việc trình bày sách, báo, tạp chí...', N'000003.jpg', CAST(0x0000A6AA00000000 AS DateTime), 10, 1, 1, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDienThoai], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaSP], [Moi]) VALUES (90, N'Vivo V9', CAST(60000 AS Decimal(18, 0)), N'Đắc nhân tâm – How to win friends and Influence People của Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. ', N'000004.jpg', CAST(0x0000A71800000000 AS DateTime), 10, 2, 4, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDienThoai], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaSP], [Moi]) VALUES (91, N'LG G7', CAST(62000 AS Decimal(18, 0)), N'Nhằm đáp ứng nhu cầu tự học Photoshop, một phần mềm xử lý ảnh ngày càng nhiều. Sách " Tự Học Photoshop CS5 Qua Hình Ảnh Minh Họa" được chia thành 11 chương kèm với hình ảnh minh họa và CD bài tập được kèm theo sách. ', N'000005.jpg', CAST(0x0000A70600000000 AS DateTime), 10, 2, 1, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDienThoai], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaSP], [Moi]) VALUES (92, N'Sony Ultra', CAST(71000 AS Decimal(18, 0)), N'Adobe Flash Professional CS4 là phiên bản mới nhất của công cụ thiết kế Web đang rất thịnh hành hiện nay. ', N'000006.jpg', CAST(0x0000A72500000000 AS DateTime), 20, 2, 1, 1)
INSERT [dbo].[DienThoai] ([MaDT], [TenDienThoai], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSX], [MaSP], [Moi]) VALUES (93, N'Red Magic 7', CAST(18000 AS Decimal(18, 0)), N'Trong lĩnh vực tin học văn phòng, Microsoft Word, Excel, PowerPoint, Visio là những chương trình thuộc bộ Microsoft Office đã và đang được ứng dụng rộng rãi trong nhiều lĩnh vực: kinh tế, kế toán, thương mại, quản lý, vẽ kỹ thuật và nhiều hơn nữa. Với Office 2010, bạn có trong tay đầy đủ các công cụ và lệnh để thực hiện các tiện ích trong diện toán văn phòng .', N'000007.jpg', CAST(0x0000A74100000000 AS DateTime), 15, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[DienThoai] OFF
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DienThoai] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DienThoai] ([MaDT])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DienThoai]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_DienThoai_LoaiDienThoai] FOREIGN KEY([MaSP])
REFERENCES [dbo].[LoaiDienThoai] ([MaSP])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK_DienThoai_LoaiDienThoai]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_DienThoai_NhaXuatBan] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK_DienThoai_NhaXuatBan]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_DienThoai] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DienThoai] ([MaDT])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_DienThoai]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_CongtySX] FOREIGN KEY([MaCongtySX])
REFERENCES [dbo].[CongtySX] ([MaCongtySX])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_CongtySX]
GO

-- Create the Account table
CREATE TABLE [dbo].[Account] (
    [MaTK] NVARCHAR(50) NOT NULL,
    [TenTK] NVARCHAR(50) NULL,
    [Username] NVARCHAR(50) NULL,
    [Password] NVARCHAR(50) NULL,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED ([MaTK] ASC)
) ON [PRIMARY];

-- Insert data into the Account table
INSERT INTO [dbo].[Account] ([MaTK], [TenTK], [Username], [Password])
VALUES ('AD1', 'Tai1', 'TK1', '123');
INSERT INTO [dbo].[Accounts] ([TenTK], [Username], [Password])
VALUES ('Tai2', 'TK2', '123');

select * from Accounts



