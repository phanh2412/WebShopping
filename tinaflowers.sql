USE [TinaFlowers]
GO
/****** Object:  Table [dbo].[anh_san_pham]    Script Date: 08/05/2022 2:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anh_san_pham](
	[AnhSanPhamId] [bigint] IDENTITY(1,1) NOT NULL,
	[SanPhamId] [int] NULL,
	[TenFileAnh] [varchar](200) NULL,
 CONSTRAINT [PK_anh_san_pham] PRIMARY KEY CLUSTERED 
(
	[AnhSanPhamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_don_dat_hang]    Script Date: 08/05/2022 2:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_don_dat_hang](
	[ChiTietDonDatHangId] [bigint] IDENTITY(1,1) NOT NULL,
	[SanPhamId] [int] NULL,
	[DonDatHangId] [bigint] NULL,
	[SoLuongMua] [int] NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_chi_tiet_don_dat_hang] PRIMARY KEY CLUSTERED 
(
	[ChiTietDonDatHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_gio_hang]    Script Date: 08/05/2022 2:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_gio_hang](
	[ChiTietGioHangId] [int] IDENTITY(1,1) NOT NULL,
	[GioHangId] [int] NULL,
	[SanPhamId] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_chi_tiet_gio_hang] PRIMARY KEY CLUSTERED 
(
	[ChiTietGioHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_trang_thai_don_dat_hang]    Script Date: 08/05/2022 2:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_trang_thai_don_dat_hang](
	[ChiTietTrangThaiDonDatHangId] [bigint] IDENTITY(1,1) NOT NULL,
	[DonDatHangId] [bigint] NULL,
	[TrangThai] [varchar](20) NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_chi_tiet_trang_thai_don_dat_hang] PRIMARY KEY CLUSTERED 
(
	[ChiTietTrangThaiDonDatHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danh_muc_san_pham]    Script Date: 08/05/2022 2:56:38 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[don_dat_hang]    Script Date: 08/05/2022 2:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[don_dat_hang](
	[DonDatHangId] [bigint] IDENTITY(1,1) NOT NULL,
	[KhachId] [int] NULL,
	[TongTien] [bigint] NULL,
	[TrangThai] [varchar](20) NULL,
	[NguoiDuyetDonId] [int] NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_don_dat_hang] PRIMARY KEY CLUSTERED 
(
	[DonDatHangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gio_hang]    Script Date: 08/05/2022 2:56:38 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach]    Script Date: 08/05/2022 2:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach](
	[KhachId] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[Email] [varchar](200) NULL,
	[Phone] [varchar](20) NULL,
	[NgaySinh] [date] NULL,
	[NgayTao] [datetime] NULL,
	[DangHoatDong] [bit] NULL,
 CONSTRAINT [PK_khach] PRIMARY KEY CLUSTERED 
(
	[KhachId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quan_tri_vien]    Script Date: 08/05/2022 2:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quan_tri_vien](
	[QuanTriVienId] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](200) NULL,
	[MatKhau] [varchar](200) NULL,
 CONSTRAINT [PK_quan_tri_vien] PRIMARY KEY CLUSTERED 
(
	[QuanTriVienId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 08/05/2022 2:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[SanPhamId] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[anh_san_pham] ON 

INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (1, 1, N'\sanpham\hoa_hong_sap_cao_cap\hoa_hong_sap_50_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (2, 1, N'\sanpham\hoa_hong_sap_cao_cap\hoa_hong_sap_50_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (3, 1, N'\sanpham\hoa_hong_sap_cao_cap\hoa_hong_sap_50_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (4, 1, N'\sanpham\hoa_hong_sap_cao_cap\hoa_hong_sap_50_bong\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (5, 2, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_99bong_baby\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (6, 2, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_99bong_baby\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (7, 2, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_99bong_baby\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (8, 2, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_99bong_baby\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (9, 3, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (10, 3, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (11, 3, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (12, 3, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (13, 4, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (14, 4, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (15, 4, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (16, 4, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (17, 5, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_den\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (18, 5, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_den\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (19, 5, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_den\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (20, 5, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_den\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (21, 6, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_sap_cao_cap_trai_tim_dai\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (22, 6, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_sap_cao_cap_trai_tim_dai\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (23, 6, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_sap_cao_cap_trai_tim_dai\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (24, 6, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_sap_cao_cap_trai_tim_dai\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (25, 7, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_luoi_nhu_va_sap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (26, 7, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_luoi_nhu_va_sap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (27, 7, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_luoi_nhu_va_sap\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (28, 7, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_luoi_nhu_va_sap\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (29, 8, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_nhu_tron_cao_cap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (30, 8, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_nhu_tron_cao_cap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (31, 9, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_25bong_tui_xach\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (32, 9, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_25bong_tui_xach\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (33, 9, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_25bong_tui_xach\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (34, 9, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_25bong_tui_xach\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (35, 10, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_50bong_cao_cap_vuong_mien\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (36, 10, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_50bong_cao_cap_vuong_mien\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (37, 10, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_50bong_cao_cap_vuong_mien\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (38, 10, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_50bong_cao_cap_vuong_mien\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (39, 11, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_do\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (40, 11, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_do\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (41, 11, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_do\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (42, 11, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_do\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (43, 12, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_trang\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (44, 12, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_trang\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (45, 12, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_trang\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (46, 12, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_trang\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (47, 13, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cap_cap_nhu_boc_bac\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (48, 13, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cap_cap_nhu_boc_bac\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (49, 13, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cap_cap_nhu_boc_bac\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (50, 13, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cap_cap_nhu_boc_bac\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (51, 14, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_nhu_boc_ghi\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (52, 14, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_nhu_boc_ghi\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (53, 15, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_xep_chu\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (54, 15, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_xep_chu\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (55, 15, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_xep_chu\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (56, 15, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_xep_chu\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (57, 16, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_phu_voan_tron\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (58, 17, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_nhu_25bong_cao_cap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (59, 17, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_nhu_25bong_cao_cap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (60, 17, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_nhu_25bong_cao_cap\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (61, 17, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_nhu_25bong_cao_cap\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (62, 18, N'\sanpham\hoa_hong_sap_cao_cap\gau_hoa_hong_xop_size_70cm\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (63, 18, N'\sanpham\hoa_hong_sap_cao_cap\gau_hoa_hong_xop_size_70cm\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (64, 18, N'\sanpham\hoa_hong_sap_cao_cap\gau_hoa_hong_xop_size_70cm\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (65, 18, N'\sanpham\hoa_hong_sap_cao_cap\gau_hoa_hong_xop_size_70cm\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (66, 19, N'\sanpham\hoa_hong_sap_cao_cap\gau_om_trai_tim_hoa_hong_xop_cao_cap_size_70\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (67, 19, N'\sanpham\hoa_hong_sap_cao_cap\gau_om_trai_tim_hoa_hong_xop_cao_cap_size_70\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (68, 19, N'\sanpham\hoa_hong_sap_cao_cap\gau_om_trai_tim_hoa_hong_xop_cao_cap_size_70\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (69, 19, N'\sanpham\hoa_hong_sap_cao_cap\gau_om_trai_tim_hoa_hong_xop_cao_cap_size_70\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (70, 20, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_21bong_mix_cac_loai\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (71, 20, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_21bong_mix_cac_loai\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (72, 20, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_21bong_mix_cac_loai\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (73, 20, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_21bong_mix_cac_loai\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (74, 21, N'\sanpham\hoa_hong_sap_sinh_nhat\bo_hoa_hong_sap_33_bong_kem_tui_ke_den_nhay\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (75, 21, N'\sanpham\hoa_hong_sap_sinh_nhat\bo_hoa_hong_sap_33_bong_kem_tui_ke_den_nhay\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (76, 21, N'\sanpham\hoa_hong_sap_sinh_nhat\bo_hoa_hong_sap_33_bong_kem_tui_ke_den_nhay\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (77, 22, N'\sanpham\hoa_nhu_cao_cap\bo_hoa_nhu_3_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (78, 22, N'\sanpham\hoa_nhu_cao_cap\bo_hoa_nhu_3_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (79, 22, N'\sanpham\hoa_nhu_cao_cap\bo_hoa_nhu_3_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (80, 22, N'\sanpham\hoa_nhu_cao_cap\bo_hoa_nhu_3_bong\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (81, 23, N'\sanpham\hoa_hong_sap_tinh_yeu\bo_hoa_tim_hinh_chu_theo_yeu_cau\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (82, 23, N'\sanpham\hoa_hong_sap_tinh_yeu\bo_hoa_tim_hinh_chu_theo_yeu_cau\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (83, 23, N'\sanpham\hoa_hong_sap_tinh_yeu\bo_hoa_tim_hinh_chu_theo_yeu_cau\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (84, 23, N'\sanpham\hoa_hong_sap_tinh_yeu\bo_hoa_tim_hinh_chu_theo_yeu_cau\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (85, 24, N'\sanpham\hoa_nhu_cao_cap\bo_hoa_tim_nhu_55_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (86, 25, N'\sanpham\hoa_sap_hop\hop_hoa_dung_son\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (87, 25, N'\sanpham\hoa_sap_hop\hop_hoa_dung_son\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (88, 25, N'\sanpham\hoa_sap_hop\hop_hoa_dung_son\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (89, 25, N'\sanpham\hoa_sap_hop\hop_hoa_dung_son\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (90, 26, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_1_bong_xinh_xan\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (91, 26, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_1_bong_xinh_xan\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (92, 26, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_1_bong_xinh_xan\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (93, 26, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_1_bong_xinh_xan\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (94, 26, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_1_bong_xinh_xan\5.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (95, 26, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_1_bong_xinh_xan\6.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (96, 27, N'\sanpham\hoa_nhu_cao_cap\hoa_hong_sap_nhu_1_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (97, 27, N'\sanpham\hoa_nhu_cao_cap\hoa_hong_sap_nhu_1_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (98, 27, N'\sanpham\hoa_nhu_cao_cap\hoa_hong_sap_nhu_1_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (99, 27, N'\sanpham\hoa_nhu_cao_cap\hoa_hong_sap_nhu_1_bong\4.jpg')
GO
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (100, 27, N'\sanpham\hoa_nhu_cao_cap\hoa_hong_sap_nhu_1_bong\5.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (101, 27, N'\sanpham\hoa_nhu_cao_cap\hoa_hong_sap_nhu_1_bong\6.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (102, 28, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_hong_sap_hop_1_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (103, 28, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_hong_sap_hop_1_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (104, 28, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_hong_sap_hop_1_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (105, 28, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_hong_sap_hop_1_bong\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (106, 28, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_hong_sap_hop_1_bong\5.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (107, 29, N'\sanpham\hoa_nhu_cao_cap\hoa_nhu_11_bong_phu_voan\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (108, 29, N'\sanpham\hoa_nhu_cao_cap\hoa_nhu_11_bong_phu_voan\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (109, 29, N'\sanpham\hoa_nhu_cao_cap\hoa_nhu_11_bong_phu_voan\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (110, 29, N'\sanpham\hoa_nhu_cao_cap\hoa_nhu_11_bong_phu_voan\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (111, 30, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_bo_21_bong_tim\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (112, 30, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_bo_21_bong_tim\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (113, 30, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_bo_21_bong_tim\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (114, 31, N'\sanpham\hoa_sap_hop\hoa_sap_hop_mika_20_bong_cao_cap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (115, 31, N'\sanpham\hoa_sap_hop\hoa_sap_hop_mika_20_bong_cao_cap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (116, 31, N'\sanpham\hoa_sap_hop\hoa_sap_hop_mika_20_bong_cao_cap\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (117, 31, N'\sanpham\hoa_sap_hop\hoa_sap_hop_mika_20_bong_cao_cap\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (118, 32, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_nhu_20_bong_love\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (119, 32, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_nhu_20_bong_love\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (120, 32, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_nhu_20_bong_love\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (121, 32, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_nhu_20_bong_love\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (122, 33, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_sap_3_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (123, 33, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_sap_3_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (124, 33, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_sap_3_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (125, 33, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_sap_3_bong\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (126, 34, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_33_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (127, 34, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_33_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (128, 34, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_33_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (129, 34, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_33_bong\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (130, 35, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_sap_tim_voan_cao_cap_topper\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (131, 35, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_sap_tim_voan_cao_cap_topper\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (132, 35, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_sap_tim_voan_cao_cap_topper\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (133, 35, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_sap_tim_voan_cao_cap_topper\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (134, 36, N'\sanpham\hoa_nhu_cao_cap\hoa_nhu_bo_tron\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (135, 36, N'\sanpham\hoa_nhu_cao_cap\hoa_nhu_bo_tron\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (136, 37, N'\sanpham\hoa_hong_sap_cao_cap\hoa_sap_bo_50_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (137, 37, N'\sanpham\hoa_hong_sap_cao_cap\hoa_sap_bo_50_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (138, 38, N'\sanpham\hoa_nhu_cao_cap\tim_luoi_30_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (139, 38, N'\sanpham\hoa_nhu_cao_cap\tim_luoi_30_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (140, 38, N'\sanpham\hoa_nhu_cao_cap\tim_luoi_30_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (141, 38, N'\sanpham\hoa_nhu_cao_cap\tim_luoi_30_bong\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (142, 38, N'\sanpham\hoa_nhu_cao_cap\tim_luoi_30_bong\5.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (143, 39, N'\sanpham\hoa_nhu_cao_cap\tui_hoa_nhu_7_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (144, 40, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_7_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (145, 40, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_7_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (146, 40, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_7_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (147, 41, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_sap_9_bong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (148, 41, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_sap_9_bong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (149, 41, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_sap_9_bong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (150, 41, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_sap_9_bong\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (151, 42, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_99_bong_boc_giay_kim_tuyen_cao_cap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (152, 42, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_99_bong_boc_giay_kim_tuyen_cao_cap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (153, 42, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_99_bong_boc_giay_kim_tuyen_cao_cap\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (154, 43, N'\sanpham\hoa_hong_sap_tinh_yeu\tim_voan_kinh_99_bong_sap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (155, 43, N'\sanpham\hoa_hong_sap_tinh_yeu\tim_voan_kinh_99_bong_sap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (156, 43, N'\sanpham\hoa_hong_sap_tinh_yeu\tim_voan_kinh_99_bong_sap\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (157, 44, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_voan_cao_cap_55bong_den_thiep_vuong_mien_topper\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (158, 44, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_voan_cao_cap_55bong_den_thiep_vuong_mien_topper\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (159, 44, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_voan_cao_cap_55bong_den_thiep_vuong_mien_topper\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (160, 44, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_voan_cao_cap_55bong_den_thiep_vuong_mien_topper\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (161, 45, N'\sanpham\hoa_sap_hop\hoa_sap_hop_tron_mo\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (162, 45, N'\sanpham\hoa_sap_hop\hoa_sap_hop_tron_mo\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (163, 45, N'\sanpham\hoa_sap_hop\hoa_sap_hop_tron_mo\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (164, 46, N'\sanpham\hoa_sap_hop\hoa_sap_hop_trai_tim_keo_tron\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (165, 46, N'\sanpham\hoa_sap_hop\hoa_sap_hop_trai_tim_keo_tron\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (166, 46, N'\sanpham\hoa_sap_hop\hoa_sap_hop_trai_tim_keo_tron\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (167, 46, N'\sanpham\hoa_sap_hop\hoa_sap_hop_trai_tim_keo_tron\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (168, 47, N'\sanpham\hoa_sap_hop\hoa_sap_hop_diamon\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (169, 47, N'\sanpham\hoa_sap_hop\hoa_sap_hop_diamon\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (170, 47, N'\sanpham\hoa_sap_hop\hoa_sap_hop_diamon\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (171, 47, N'\sanpham\hoa_sap_hop\hoa_sap_hop_diamon\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (172, 48, N'\sanpham\hoa_sap_hop\hop_tru_tron_cao_cap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (173, 48, N'\sanpham\hoa_sap_hop\hop_tru_tron_cao_cap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (174, 48, N'\sanpham\hoa_sap_hop\hop_tru_tron_cao_cap\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (175, 48, N'\sanpham\hoa_sap_hop\hop_tru_tron_cao_cap\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (176, 49, N'\sanpham\hoa_sap_hop\hop_tim_day_hoa_sap_kinh_trong_den_thiep\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (177, 49, N'\sanpham\hoa_sap_hop\hop_tim_day_hoa_sap_kinh_trong_den_thiep\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (178, 49, N'\sanpham\hoa_sap_hop\hop_tim_day_hoa_sap_kinh_trong_den_thiep\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (179, 50, N'\sanpham\hoa_sap_hop\hop_tim_nhu_kinh_trong_cao_cap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (180, 50, N'\sanpham\hoa_sap_hop\hop_tim_nhu_kinh_trong_cao_cap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (181, 50, N'\sanpham\hoa_sap_hop\hop_tim_nhu_kinh_trong_cao_cap\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (182, 50, N'\sanpham\hoa_sap_hop\hop_tim_nhu_kinh_trong_cao_cap\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (183, 51, N'\sanpham\hoa_sap_hop\hoa_hop_de_ban_cao_cap\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (184, 51, N'\sanpham\hoa_sap_hop\hoa_hop_de_ban_cao_cap\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (185, 51, N'\sanpham\hoa_sap_hop\hoa_hop_de_ban_cao_cap\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (186, 52, N'\sanpham\gio_hoa_sap\hoa_sap_gio_may_sieu_xinh\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (187, 52, N'\sanpham\gio_hoa_sap\hoa_sap_gio_may_sieu_xinh\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (188, 52, N'\sanpham\gio_hoa_sap\hoa_sap_gio_may_sieu_xinh\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (189, 52, N'\sanpham\gio_hoa_sap\hoa_sap_gio_may_sieu_xinh\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (190, 53, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (191, 53, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (192, 53, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (193, 53, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\4.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (194, 54, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (195, 54, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\2.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (196, 54, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\3.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (197, 55, N'\sanpham\hoa_hong_sap_cao_cap\gau_40cm_cao_cap_den_vuong_mien_topper\1.jpg')
INSERT [dbo].[anh_san_pham] ([AnhSanPhamId], [SanPhamId], [TenFileAnh]) VALUES (198, 55, N'\sanpham\hoa_hong_sap_cao_cap\gau_40cm_cao_cap_den_vuong_mien_topper\2.jpg')
SET IDENTITY_INSERT [dbo].[anh_san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[danh_muc_san_pham] ON 

INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (1, N'Hoa hồng sáp cao cấp', 21)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (2, N'Hoa hồng sáp sinh nhật', 8)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (3, N'Hoa hồng sáp tình yêu', 5)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (4, N'Hoa nhũ cao cấp', 9)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (5, N'Hoa sáp hộp ', 9)
INSERT [dbo].[danh_muc_san_pham] ([DanhMucSanPhamId], [TenDanhMucSanPham], [SoLuongSanPham]) VALUES (6, N'Giỏ hoa sáp', 3)
SET IDENTITY_INSERT [dbo].[danh_muc_san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON 

INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (1, N'Hoa hồng sáp 50 bông', 1, 450000, N'\sanpham\hoa_hong_sap_cao_cap\hoa_hong_sap_50_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa hong sap 50 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (2, N'Bó hoa hồng 99 bông baby', 1, 800000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_99bong_baby\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa hong 99 bong baby')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (3, N'Bó hoa hồng sáp cao cấp bọc pha', 1, 800000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa hong sap cao cap boc pha')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (4, N'Bó hoa hồng nhũ cao cấp nhũ bọc trắng', 1, 900000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_trang\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa hong nhu cao cap nhu boc trang')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (5, N'Bó hoa hồng nhũ cao cấp nhũ bọc đen', 1, 900000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_nhu_cao_cap_boc_den\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa hong nhu cao cap nhu boc den')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (6, N'Bó hoa hồng sáp cao cấp trái tim dài', 1, 900000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_hong_sap_cao_cap_trai_tim_dai\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa hong sap cao cap trai tim dai')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (7, N'Bó hoa lưới nhũ và sáp', 1, 450000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_luoi_nhu_va_sap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa luoi nhu va sap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (8, N'Bó hoa nhũ tròn cao cấp
', 1, 550000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_nhu_tron_cao_cap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa nhu tron cao cap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (9, N'Bó hoa sáp 25 bông + túi xách', 1, 350000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_25bong_tui_xach\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa sap 25 bong tui xach')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (10, N'Bó hoa sáp 50 bông cao cấp + vương miện', 1, 500000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_50bong_cao_cap_vuong_mien\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa sap 50 bong cao cap vuong mien')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (11, N'Bó hoa sáp cao cấp bọc đỏ', 1, 800000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_do\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa sap cao cap boc do')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (12, N'Bó hoa sáp cao cấp bọc trắng', 1, 800000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_boc_trang\1.jpg', NULL, 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa sap cao cap boc trang')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (13, N'Bó hoa sáp cao cấp nhũ bọc bạc', 1, 1200000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cap_cap_nhu_boc_bac\1.jpg', NULL, 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa sap cao cap nhu boc bac')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (14, N'Bó hoa sáp cao cấp nhũ bọc ghi', 1, 900000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_nhu_boc_ghi\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa sap cao cap nhu boc ghi')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (15, N'Bó hoa sáp cao cấp XẾP CHỮ', 1, 800000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_cao_cap_xep_chu\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa sap cao cap xep chu')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (16, N'Bó hoa sáp phủ voan tròn', 1, 300000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_phu_voan_tron\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa sap phu voan tron')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (17, N'Bó sáp nhũ 25 bông cao cấp', 1, 500000, N'\sanpham\hoa_hong_sap_cao_cap\bo_hoa_sap_nhu_25bong_cao_cap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo sap nhu 25 bong cao cap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (18, N'Gấu hoa hồng xốp size 70cm', 1, 1750000, N'\sanpham\hoa_hong_sap_cao_cap\gau_hoa_hong_xop_size_70cm\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'gau hoa hong xop size 70cm')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (19, N'Gấu ôm trái tim hoa hồng xốp cao cấp size 70', 1, 2000000, N'\sanpham\hoa_hong_sap_cao_cap\gau_om_trai_tim_hoa_hong_xop_cao_cap_size_70\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'gau om trai tim hoa hong xop cao cap size 70')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (20, N'Hoa 21 bông mix các loại', 2, 400000, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_21bong_mix_cac_loai\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa 21 bong mix cac loai')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (21, N'Bó hoa hồng sáp 33 bông kèm túi kèm đèn nháy', 2, 400000, N'\sanpham\hoa_hong_sap_sinh_nhat\bo_hoa_hong_sap_33_bong_kem_tui_ke_den_nhay\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa hong sap 33 bong kem tui kem den nhay')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (22, N'Bó hoa nhũ 3 bông', 4, 150000, N'\sanpham\hoa_nhu_cao_cap\bo_hoa_nhu_3_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa nhu 3 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (23, N'Bó hoa tim HÌNH CHỮ THEO YÊU CẦU', 3, 900000, N'\sanpham\hoa_hong_sap_tinh_yeu\bo_hoa_tim_hinh_chu_theo_yeu_cau\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa tim hinh chu theo yeu cau')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (24, N'Bó hoa tim nhũ 55 bông', 4, 900000, N'\sanpham\hoa_nhu_cao_cap\bo_hoa_tim_nhu_55_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'bo hoa tim nhu 55 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (25, N'Hộp hoa đựng son', 5, 120000, N'\sanpham\hoa_sap_hop\hop_hoa_dung_son\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hop hoa dung son')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (26, N'Túi hoa 1 bông xinh xắn', 2, 40000, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_1_bong_xinh_xan\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'tui hoa 1 bong xinh xan')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (27, N'Hoa hồng sáp nhũ 1 bông', 4, 30000, N'\sanpham\hoa_nhu_cao_cap\hoa_hong_sap_nhu_1_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa hong sap nhu 1 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (28, N'Hoa hồng sáp hộp 1 bông', 2, 20000, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_hong_sap_hop_1_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa hong sap hop 1 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (29, N'Hoa nhũ 11 bông phủ voan', 4, 300000, N'\sanpham\hoa_nhu_cao_cap\hoa_nhu_11_bong_phu_voan\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa nhu 11 bong phu voan')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (30, N'Hoa bó 21 bông tim', 3, 400000, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_bo_21_bong_tim\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa bo 21 bong tim')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (31, N'Hoa sáp hộp mika 20 bông cao cấp', 5, 450000, N'\sanpham\hoa_sap_hop\hoa_sap_hop_mika_20_bong_cao_cap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa sap hop mika 20 bong cao cap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (32, N'HOA NHŨ 20 BÔNG LOVE', 3, 400000, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_nhu_20_bong_love\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa nhu 20 bong love')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (33, N'Hoa sáp 3 bông', 2, 50000, N'\sanpham\hoa_hong_sap_sinh_nhat\hoa_sap_3_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa sap 3 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (34, N'HỘP Hoa hồng sáp 33 bông', 2, 550000, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_33_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hop hoa hong sap 33 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (35, N'Hoa sáp tim voan cao cấp+ topper', 3, 450000, N'\sanpham\hoa_hong_sap_tinh_yeu\hoa_sap_tim_voan_cao_cap_topper\1.jpg', N'HOA BÊN MINH CÓ RẤT NHIỀU LOẠI BỌC

QUÝ KHÁCH CHỌN MÀU HOA CÒN BỌC SẼ NGẪU NHIÊN Ạ

CÁM ƠN QUÝ KHÁCH', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa sap tim voan cao cap topper')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (36, N'Hoa nhũ bó tròn', 4, 800000, N'\sanpham\hoa_nhu_cao_cap\hoa_nhu_bo_tron\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa nhu bo tron')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (37, N'Hoa sáp bó 50 bông', 1, 500000, N'\sanpham\hoa_hong_sap_cao_cap\hoa_sap_bo_50_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa sap bo 50 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (38, N'TIM LƯỚI 30 BÔNG', 4, 450000, N'\sanpham\hoa_nhu_cao_cap\tim_luoi_30_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'tim luoi 30 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (39, N'Túi hoa nhũ 7 bông', 4, 220000, N'\sanpham\hoa_nhu_cao_cap\tui_hoa_nhu_7_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'tui hoa nhu 7 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (40, N'Hộp hoa hồng sáp 7 bông', 2, 250000, N'\sanpham\hoa_hong_sap_sinh_nhat\hop_hoa_hong_sap_7_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hop hoa hong sap 7 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (41, N'TÚI HOA SÁP 9 BÔNG', 2, 150000, N'\sanpham\hoa_hong_sap_sinh_nhat\tui_hoa_sap_9_bong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-07T00:00:00.000' AS DateTime), N'tui hoa sap 9 bong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (42, N'TIM NHŨ 99 BÔNG BỌC GIẤY KIM TUYẾN CAO CẤP', 4, 1500000, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_99_bong_boc_giay_kim_tuyen_cao_cap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-07T00:00:00.000' AS DateTime), N'tim nhu 99 bong boc giay kim tuyen cao cap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (43, N'TIM VOAN KÍNH 99 BÔNG SÁP', 3, 900000, N'\sanpham\hoa_hong_sap_tinh_yeu\tim_voan_kinh_99_bong_sap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-07T00:00:00.000' AS DateTime), N'tim voan kinh 99 bong sap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (44, N'Tim nhũ voan cao cấp 55bông+ đèn+ thiệp+vương miện + topper', 4, 1500000, N'\sanpham\hoa_nhu_cao_cap\tim_nhu_voan_cao_cap_55bong_den_thiep_vuong_mien_topper\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-07T00:00:00.000' AS DateTime), N'tim nhu vaon cao cap 99 bong nhu den thiep vuong mien topper')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (45, N'Hoa sáp hộp tròn mở', 5, 350000, N'\sanpham\hoa_sap_hop\hoa_sap_hop_tron_mo\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-07T00:00:00.000' AS DateTime), N'hoa sap hop tron mo')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (46, N'Hoa sáp hộp trái tim kéo trơn', 5, 550000, N'\sanpham\hoa_sap_hop\hoa_sap_hop_trai_tim_keo_tron\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-07T00:00:00.000' AS DateTime), N'hoa sap hop trai tim keo tron')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (47, N'Hoa sáp hộp Diamon', 5, 300000, N'\sanpham\hoa_sap_hop\hoa_sap_hop_diamon\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-03T00:00:00.000' AS DateTime), N'hoa sap hop diamon')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (48, N'HỘP TRỤ TRÒN CAO CẤP', 5, 550000, N'\sanpham\hoa_sap_hop\hop_tru_tron_cao_cap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-03T00:00:00.000' AS DateTime), N'hop tru tron cao cap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (49, N'Hộp tim đẩy hoa sáp kính trong + đèn + thiệp', 5, 550000, N'\sanpham\hoa_sap_hop\hop_tim_day_hoa_sap_kinh_trong_den_thiep\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-08T00:00:00.000' AS DateTime), N'hop tim day hoa sap kinh trong den thiep')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (50, N'Hộp tim nhũ kính trong cao cấp', 5, 500000, N'\sanpham\hoa_sap_hop\hop_tim_nhu_kinh_trong_cao_cap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-08T00:00:00.000' AS DateTime), N'hop tim nhu kinh trong cao cap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (51, N'Hoa hộp để bàn cao cấp', 5, 400000, N'\sanpham\hoa_sap_hop\hoa_hop_de_ban_cao_cap\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'hoa hop de ban cao cap')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (52, N'
Hoa sáp giỏ mây siêu xinh', 6, 400000, N'\sanpham\gio_hoa_sap\hoa_sap_gio_may_sieu_xinh\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-04-26T00:00:00.000' AS DateTime), N'hoa sap gio may sieu xinh')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (53, N'Giỏ hoa sáp yêu thương', 6, 350000, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-03T00:00:00.000' AS DateTime), N'gio hoa sap yeu thuong')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (54, N'Giỏ hoa hồng sáp cao cấp Hàn Quốc', 6, 300000, N'\sanpham\gio_hoa_sap\gio_hoa_sap_yeu_thuong\1.jpg', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 1, CAST(N'2022-05-08T00:00:00.000' AS DateTime), N'gio hoa hong sap cao cap han quoc')
INSERT [dbo].[san_pham] ([SanPhamId], [TenSanPham], [DanhMucSanPhamId], [Gia], [AnhDaiDien], [MoTa], [DangKichHoat], [NgayTao], [Tag]) VALUES (55, N'GẤU 40CM CAO CẤP + đèn + vương miện + topper', 1, 650000, N'\sanpham\hoa_hong_sap_cao_cap\gau_40cm_cao_cap_den_vuong_mien_topper\1.jpg', NULL, 1, CAST(N'2022-05-04T00:00:00.000' AS DateTime), N'gau 40cm cao cap den vuong mien topper')
SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO
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
