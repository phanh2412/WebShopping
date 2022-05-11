create database TinaFlowers
USE [TinaFlowers]
GO
/****** Object:  Table [dbo].[anh_san_pham]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[anh_san_pham](
	[AnhSanPhamId] [bigint] IDENTITY(1,1) NOT NULL,
	[SanPhamId] [varchar](36) NULL,
	[TenFileAnh] [varchar](200) NULL,
 CONSTRAINT [PK_anh_san_pham] PRIMARY KEY CLUSTERED 
(
	[AnhSanPhamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chi_tiet_don_dat_hang]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chi_tiet_don_dat_hang](
	[ChiTietDonDatHangId] [bigint] IDENTITY(1,1) NOT NULL,
	[SanPhamId] [varchar](36) NULL,
	[DonDatHangId] [varchar](36) NULL,
	[SoLuongMua] [int] NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_chi_tiet_don_dat_hang] PRIMARY KEY CLUSTERED 
(
	[ChiTietDonDatHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chi_tiet_gio_hang]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chi_tiet_gio_hang](
	[ChiTietGioHangId] [int] IDENTITY(1,1) NOT NULL,
	[GioHangId] [int] NULL,
	[SanPhamId] [varchar](36) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_chi_tiet_gio_hang] PRIMARY KEY CLUSTERED 
(
	[ChiTietGioHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chi_tiet_trang_thai_don_dat_hang]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chi_tiet_trang_thai_don_dat_hang](
	[ChiTietTrangThaiDonDatHangId] [bigint] IDENTITY(1,1) NOT NULL,
	[DonDatHangId] [varchar](36) NULL,
	[TrangThai] [varchar](20) NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_chi_tiet_trang_thai_don_dat_hang] PRIMARY KEY CLUSTERED 
(
	[ChiTietTrangThaiDonDatHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[danh_muc_san_pham]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_muc_san_pham](
	[DanhMucSanPhamId] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMucSanPham] [nvarchar](100) NULL,
	[SoLuongSanPham] [int] NULL,
 CONSTRAINT [PK_danh_muc_san_pham] PRIMARY KEY CLUSTERED 
(
	[DanhMucSanPhamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[don_dat_hang]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[don_dat_hang](
	[DonDatHangId] [varchar](36) NOT NULL,
	[KhachId] [int] NULL,
	[TongTien] [bigint] NULL,
	[TrangThai] [varchar](20) NULL,
	[NguoiDuyetDonId] [int] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_don_dat_hang] PRIMARY KEY CLUSTERED 
(
	[DonDatHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gio_hang]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gio_hang](
	[GioHangId] [int] IDENTITY(1,1) NOT NULL,
	[KhachId] [int] NULL,
	[TongSanPham] [int] NULL,
	[TongTien] [bigint] NULL,
 CONSTRAINT [PK_gio_hang] PRIMARY KEY CLUSTERED 
(
	[GioHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khach]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khach](
	[KhachId] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[Email] [varchar](200) NULL,
	[Phone] [varchar](20) NULL,
	[NgaySinh] [date] NULL,
	[NgayTao] [datetime] NULL,
	[MatKhau] [varchar](100) NULL,
	[DangHoatDong] [bit] NULL,
 CONSTRAINT [PK_khach] PRIMARY KEY CLUSTERED 
(
	[KhachId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[quan_tri_vien]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quan_tri_vien](
	[QuanTriVienId] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](200) NULL,
	[MatKhau] [varchar](200) NULL,
 CONSTRAINT [PK_quan_tri_vien] PRIMARY KEY CLUSTERED 
(
	[QuanTriVienId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 22/05/11 5:13:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[san_pham](
	[SanPhamId] [varchar](36) NOT NULL,
	[TenSanPham] [nvarchar](200) NULL,
	[DanhMucSanPhamId] [int] NULL,
	[Gia] [int] NULL,
	[AnhDaiDien] [varchar](200) NULL,
	[MoTa] [nvarchar](max) NULL,
	[DangKichHoat] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[Tag] [varchar](200) NULL,
 CONSTRAINT [PK_san_pham] PRIMARY KEY CLUSTERED 
(
	[SanPhamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[anh_san_pham] ON 

INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (214, N'107dceeb-3bdc-448f-8faf-6079f4ad318b', N'/files/product/2e587f1d-55c7-46e1-9194-b2ec2b2f9ed2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (215, N'107dceeb-3bdc-448f-8faf-6079f4ad318b', N'/files/product/ee2f4c7f-8b16-4008-af7a-ddaefd4c99a4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (216, N'107dceeb-3bdc-448f-8faf-6079f4ad318b', N'/files/product/c7cf0e92-e1b5-451b-adc0-917b1a5a080b.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (217, N'4a99d4a9-b0f0-45b4-ab4a-251ddef282d5', N'/files/product/fd05032f-5733-4098-aab0-f15fedfb5d28.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (218, N'4a99d4a9-b0f0-45b4-ab4a-251ddef282d5', N'/files/product/b2f14a83-3a94-4615-893e-4650172e1f1b.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (219, N'4a99d4a9-b0f0-45b4-ab4a-251ddef282d5', N'/files/product/0fb376b8-65eb-4319-af1a-29c080935d46.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (220, N'4a99d4a9-b0f0-45b4-ab4a-251ddef282d5', N'/files/product/8e758789-3fac-4556-8d10-a6f38505d90c.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (221, N'5aae2bc5-4959-4388-9a33-4bbf4dca0906', N'/files/product/a081c29e-d2fd-4904-a555-f0137b6e1b2d.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (222, N'5aae2bc5-4959-4388-9a33-4bbf4dca0906', N'/files/product/0a670169-0e50-4b07-badf-4caef58eb08f.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (223, N'5aae2bc5-4959-4388-9a33-4bbf4dca0906', N'/files/product/86a58009-9e12-4777-b2a5-8a10284241c0.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (224, N'5aae2bc5-4959-4388-9a33-4bbf4dca0906', N'/files/product/d0648a55-9dcd-4398-8afc-92e478212bc4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (225, N'18e48eff-37fa-4d90-b948-abe876c5fd40', N'/files/product/b9fe1f01-0663-45e2-b98d-65d7fbfeea8c.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (226, N'18e48eff-37fa-4d90-b948-abe876c5fd40', N'/files/product/10a33351-ed5d-498e-bb54-2f8a9ba3ebb8.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (227, N'18e48eff-37fa-4d90-b948-abe876c5fd40', N'/files/product/2726b0fe-395d-4776-8c4b-85c070748d81.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (228, N'18e48eff-37fa-4d90-b948-abe876c5fd40', N'/files/product/01d94931-7a28-4fec-a0c2-0bc1375dcde4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (229, N'810b4916-a458-497c-8ab9-f27327fa4d46', N'/files/product/35930bf0-6c80-4456-9088-b0a9f0b6301f.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (230, N'810b4916-a458-497c-8ab9-f27327fa4d46', N'/files/product/ccb7bc87-d74e-4b60-a1fd-f7268a6db220.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (231, N'810b4916-a458-497c-8ab9-f27327fa4d46', N'/files/product/b289b811-2fbb-45af-808c-af2d52ca5b5a.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (232, N'b4cff33a-373a-40ad-8e5c-a801987e0730', N'/files/product/8078eeaf-8c71-4660-a62d-7136cce56f96.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (233, N'b4cff33a-373a-40ad-8e5c-a801987e0730', N'/files/product/1b7328fc-f31d-41d6-9d80-c34f01bca207.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (234, N'b4cff33a-373a-40ad-8e5c-a801987e0730', N'/files/product/8b0635c7-af67-4c91-a8a0-bb68b505c3e5.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (235, N'b4cff33a-373a-40ad-8e5c-a801987e0730', N'/files/product/4f26ba9c-2ff8-4044-add4-93d5165daa81.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (236, N'66ace86e-0b3d-4fd5-b735-a917116529f8', N'/files/product/1675a35c-4abe-4c23-addc-f2f57ea45c2c.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (237, N'66ace86e-0b3d-4fd5-b735-a917116529f8', N'/files/product/3a10cd5e-a356-40a2-9b0c-1aeca5ca7805.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (238, N'66ace86e-0b3d-4fd5-b735-a917116529f8', N'/files/product/29b93438-a5ac-48e7-9f24-6a1dba830285.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (239, N'66ace86e-0b3d-4fd5-b735-a917116529f8', N'/files/product/e98a5416-2ecd-4371-90af-f3ecd89cf61d.jpg')
SET IDENTITY_INSERT [dbo].[anh_san_pham] OFF
SET IDENTITY_INSERT [dbo].[chi_tiet_gio_hang] ON 

INSERT [dbo].[chi_tiet_gio_hang] ([ChiTietGioHangId], [GioHangId], [SanPhamId], [SoLuong]) VALUES (1, 1, N'4a99d4a9-b0f0-45b4-ab4a-251ddef282d5', 1)
INSERT [dbo].[chi_tiet_gio_hang] ([ChiTietGioHangId], [GioHangId], [SanPhamId], [SoLuong]) VALUES (2, 1, N'b4cff33a-373a-40ad-8e5c-a801987e0730', 1)
INSERT [dbo].[chi_tiet_gio_hang] ([ChiTietGioHangId], [GioHangId], [SanPhamId], [SoLuong]) VALUES (3, 1, N'4a99d4a9-b0f0-45b4-ab4a-251ddef282d5', 1)
INSERT [dbo].[chi_tiet_gio_hang] ([ChiTietGioHangId], [GioHangId], [SanPhamId], [SoLuong]) VALUES (4, 1, N'b4cff33a-373a-40ad-8e5c-a801987e0730', 1)
INSERT [dbo].[chi_tiet_gio_hang] ([ChiTietGioHangId], [GioHangId], [SanPhamId], [SoLuong]) VALUES (5, 1, N'66ace86e-0b3d-4fd5-b735-a917116529f8', 1)
SET IDENTITY_INSERT [dbo].[chi_tiet_gio_hang] OFF
SET IDENTITY_INSERT [dbo].[danh_muc_san_pham] ON 

INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (1, N'Hoa hồng sáp cao cấp', 26)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (2, N'Hoa hồng sáp sinh nhật', 8)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (3, N'Hoa hồng sáp tình yêu', 6)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (4, N'Hoa nhũ cao cấp', 10)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (5, N'Hoa sáp hộp ', 9)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (6, N'Giỏ hoa sáp', 8)
SET IDENTITY_INSERT [dbo].[danh_muc_san_pham] OFF
SET IDENTITY_INSERT [dbo].[gio_hang] ON 

INSERT [dbo].[gio_hang] ([GioHangId], [KhachId], [TongSanPham], [TongTien]) VALUES (1, 1, 5, 4560000)
SET IDENTITY_INSERT [dbo].[gio_hang] OFF
SET IDENTITY_INSERT [dbo].[khach] ON 

INSERT [dbo].[khach] ([KhachId], [HoVaTen], [Email], [Phone], [NgaySinh], [NgayTao], [MatKhau], [DangHoatDong]) VALUES (1, N'Người dùng', N'qwe@qwe.qwe', NULL, NULL, CAST(N'2022-05-11 03:35:23.743' AS DateTime), N'd9b1d7db4cd6e70935368a1efb10e377', 1)
SET IDENTITY_INSERT [dbo].[khach] OFF
SET IDENTITY_INSERT [dbo].[quan_tri_vien] ON 

INSERT [dbo].[quan_tri_vien] ([QuanTriVienId], [HoVaTen], [TaiKhoan], [MatKhau]) VALUES (1, N'Admin', N'admin', N'123')
SET IDENTITY_INSERT [dbo].[quan_tri_vien] OFF
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (N'107dceeb-3bdc-448f-8faf-6079f4ad318b', N'Giỏ hoa hồng sáp cao cấp Hàn Quốc', 6, 500000, N'/files/product/thumbnail/44746a84-4c40-4cdb-8c89-487e6bea02a4.jpg', N'Giỏ hoa hồng sáp cao cấp Hàn Quốc', 1, CAST(N'2022-05-11 03:55:59.807' AS DateTime), N'Gio hoa hong sap cao cap Han Quoc')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (N'18e48eff-37fa-4d90-b948-abe876c5fd40', N'Hoa hồng 99 bông baby', 1, 700000, N'/files/product/thumbnail/5b714d68-1345-4eba-bd35-f62a3fa4b422.jpg', N'Hoa hồng 99 bông baby', 1, CAST(N'2022-05-11 03:59:09.717' AS DateTime), N'Hoa hong 99 bong baby')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (N'4a99d4a9-b0f0-45b4-ab4a-251ddef282d5', N'Giỏ hoa sáp yêu thương', 6, 300000, N'/files/product/thumbnail/6fba6780-663e-45ed-a087-be8f61aa1a57.jpg', N'Giỏ hoa sáp yêu thương', 1, CAST(N'2022-05-11 03:57:46.867' AS DateTime), N'Gio hoa sap yeu thuong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (N'5aae2bc5-4959-4388-9a33-4bbf4dca0906', N'Hoa sáp giỏ mây siêu xinh', 6, 200000, N'/files/product/thumbnail/47c2423f-22f4-48a2-a103-2c72db1918ef.jpg', N'Hoa sáp giỏ mây siêu xinh', 1, CAST(N'2022-05-11 03:58:25.383' AS DateTime), N'Hoa sap gio may sieu xinh')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (N'66ace86e-0b3d-4fd5-b735-a917116529f8', N'Bó hoa hồng sáp cao cấp bọc pha', 1, 1120000, N'/files/product/thumbnail/ca56d772-71fc-4a4b-9ec8-4403800324ef.jpg', N'Bó hoa hồng sáp cao cấp bọc pha', 1, CAST(N'2022-05-11 04:02:13.620' AS DateTime), N'Bo hoa hong sap cao cap boc pha')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (N'810b4916-a458-497c-8ab9-f27327fa4d46', N'Bó hoa hồng nhũ cao cấp bọc đen', 1, 1350000, N'/files/product/thumbnail/a41473ce-f789-4e6d-b1f7-d1e4f5e8bdba.jpg', N'Bó hoa hồng nhũ cao cấp bọc đen', 1, CAST(N'2022-05-11 04:00:06.767' AS DateTime), N'Bo hoa hong nhu cao cap boc den')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (N'b4cff33a-373a-40ad-8e5c-a801987e0730', N'Bó hoa hồng nhũ cao cấp bọc trắng', 1, 1420000, N'/files/product/thumbnail/8aff19a9-ec47-4dbc-8fea-1353613d8099.jpg', N'Bó hoa hồng nhũ cao cấp bọc trắng', 1, CAST(N'2022-05-11 04:01:03.423' AS DateTime), N'Bo hoa hong nhu cao cap boc trang')
ALTER TABLE [dbo].[anh_san_pham]  WITH CHECK ADD  CONSTRAINT [FK_anh_san_pham_san_pham] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[san_pham] ([SanPhamId])
GO
ALTER TABLE [dbo].[anh_san_pham] CHECK CONSTRAINT [FK_anh_san_pham_san_pham]
GO
ALTER TABLE [dbo].[chi_tiet_don_dat_hang]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_don_dat_hang_don_dat_hang] FOREIGN KEY([DonDatHangId])
REFERENCES [dbo].[don_dat_hang] ([DonDatHangId])
GO
ALTER TABLE [dbo].[chi_tiet_don_dat_hang] CHECK CONSTRAINT [FK_chi_tiet_don_dat_hang_don_dat_hang]
GO
ALTER TABLE [dbo].[chi_tiet_don_dat_hang]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_don_dat_hang_san_pham] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[san_pham] ([SanPhamId])
GO
ALTER TABLE [dbo].[chi_tiet_don_dat_hang] CHECK CONSTRAINT [FK_chi_tiet_don_dat_hang_san_pham]
GO
ALTER TABLE [dbo].[chi_tiet_gio_hang]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_gio_hang_gio_hang] FOREIGN KEY([GioHangId])
REFERENCES [dbo].[gio_hang] ([GioHangId])
GO
ALTER TABLE [dbo].[chi_tiet_gio_hang] CHECK CONSTRAINT [FK_chi_tiet_gio_hang_gio_hang]
GO
ALTER TABLE [dbo].[chi_tiet_gio_hang]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_gio_hang_san_pham] FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[san_pham] ([SanPhamId])
GO
ALTER TABLE [dbo].[chi_tiet_gio_hang] CHECK CONSTRAINT [FK_chi_tiet_gio_hang_san_pham]
GO
ALTER TABLE [dbo].[chi_tiet_trang_thai_don_dat_hang]  WITH CHECK ADD  CONSTRAINT [FK_chi_tiet_trang_thai_don_dat_hang_don_dat_hang] FOREIGN KEY([DonDatHangId])
REFERENCES [dbo].[don_dat_hang] ([DonDatHangId])
GO
ALTER TABLE [dbo].[chi_tiet_trang_thai_don_dat_hang] CHECK CONSTRAINT [FK_chi_tiet_trang_thai_don_dat_hang_don_dat_hang]
GO
ALTER TABLE [dbo].[don_dat_hang]  WITH CHECK ADD  CONSTRAINT [FK_don_dat_hang_khach] FOREIGN KEY([KhachId])
REFERENCES [dbo].[khach] ([KhachId])
GO
ALTER TABLE [dbo].[don_dat_hang] CHECK CONSTRAINT [FK_don_dat_hang_khach]
GO
ALTER TABLE [dbo].[don_dat_hang]  WITH CHECK ADD  CONSTRAINT [FK_don_dat_hang_quan_tri_vien] FOREIGN KEY([NguoiDuyetDonId])
REFERENCES [dbo].[quan_tri_vien] ([QuanTriVienId])
GO
ALTER TABLE [dbo].[don_dat_hang] CHECK CONSTRAINT [FK_don_dat_hang_quan_tri_vien]
GO
ALTER TABLE [dbo].[gio_hang]  WITH CHECK ADD  CONSTRAINT [FK_gio_hang_khach] FOREIGN KEY([KhachId])
REFERENCES [dbo].[khach] ([KhachId])
GO
ALTER TABLE [dbo].[gio_hang] CHECK CONSTRAINT [FK_gio_hang_khach]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK_san_pham_danh_muc_san_pham] FOREIGN KEY([DanhMucSanPhamId])
REFERENCES [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK_san_pham_danh_muc_san_pham]
GO
