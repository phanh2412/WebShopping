USE [TinaFlowers]
GO
/****** Object:  Table [dbo].[anh_san_pham]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[chi_tiet_don_dat_hang]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[chi_tiet_gio_hang]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[chi_tiet_trang_thai_don_dat_hang]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[danh_muc_san_pham]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[don_dat_hang]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[gio_hang]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[khach]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[quan_tri_vien]    Script Date: 08/05/2022 2:26:24 AM ******/
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
/****** Object:  Table [dbo].[san_pham]    Script Date: 08/05/2022 2:26:24 AM ******/
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
