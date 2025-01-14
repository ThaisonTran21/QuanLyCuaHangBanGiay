CREATE DATABASE [quanLyCuaHangGiay]
GO
USE [quanLyCuaHangGiay]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[congTy] [nvarchar](250) NOT NULL,
	[moTa] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chatLieu]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chatLieu](
	[chatLieu_id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[nguonGoc] [nvarchar](100) NULL,
	[moTa] [nvarchar](max) NULL,
	[ngayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[chatLieu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuongTrinhKhuyenMai]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuongTrinhKhuyenMai](
	[chuongTrinh_id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[moTa] [nvarchar](250) NOT NULL,
	[ngayBD] [datetime] NOT NULL,
	[ngayKT] [datetime] NOT NULL,
	[giamGia] [float] NOT NULL,
	[trangThai] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[chuongTrinh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDon]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDon](
	[hoaDon_id] [varchar](10) NOT NULL,
	[ngayTaoHD] [datetime] NULL,
	[nhanVien_id] [varchar](7) NOT NULL,
	[tongTien] [decimal](18, 2) NULL,
	[trangThai] [nvarchar](100) NULL,
	[khachHang_id] [varchar](10) NULL,
	[thanhToan_id] [int] NULL,
	[hanDoiTra] [datetime] NULL,
	[ghiChu] [nvarchar](max) NULL,
	[voucher_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hoaDon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDonChiTiet]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDonChiTiet](
	[hDCT_id] [varchar](10) NOT NULL,
	[hoaDon_id] [varchar](10) NOT NULL,
	[sPCT_id] [varchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[giaBan] [decimal](18, 2) NOT NULL,
	[thanhTien] [decimal](18, 2) NOT NULL,
	[trangThaiHDCT] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[hDCT_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachHang]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachHang](
	[khachHang_id] [varchar](10) NOT NULL,
	[hoTenKH] [nvarchar](100) NOT NULL,
	[gioiTinh] [bit] NULL,
	[diaChi] [nvarchar](200) NULL,
	[sdt] [varchar](10) NOT NULL,
	[email] [varchar](100) NULL,
	[ghiChu] [nvarchar](max) NULL,
	[ngayTaoKH] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[khachHang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenMaiVoucher]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenMaiVoucher](
	[voucher_id] [int] IDENTITY(1,1) NOT NULL,
	[tenVoucher] [nvarchar](100) NOT NULL,
	[moTa] [nvarchar](250) NOT NULL,
	[ngayBD] [datetime] NOT NULL,
	[ngayKT] [datetime] NOT NULL,
	[giamGia] [float] NOT NULL,
	[giaToiDa] [float] NOT NULL,
	[donToiThieu] [float] NOT NULL,
	[trangThai] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiDeGiay]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiDeGiay](
	[deGiay_id] [int] IDENTITY(1,1) NOT NULL,
	[tenDe] [nvarchar](100) NOT NULL,
	[chieuCao] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[deGiay_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mauSac]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mauSac](
	[mauSac_id] [int] IDENTITY(1,1) NOT NULL,
	[tenMau] [nvarchar](100) NOT NULL,
	[moTa] [nvarchar](100) NULL,
	[ngayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[mauSac_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhaCungCap]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhaCungCap](
	[nhaCC_id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[moTa] [nvarchar](max) NULL,
	[diaChi] [nvarchar](200) NULL,
	[ngayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[nhaCC_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanVien]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVien](
	[nhanVien_id] [varchar](7) NOT NULL,
	[hoTen] [nvarchar](100) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[diaChi] [nvarchar](max) NOT NULL,
	[sdt] [varchar](10) NOT NULL,
	[trangThai] [nvarchar](100) NOT NULL,
	[anh] [nvarchar](max) NULL,
	[matkhau] [varchar](max) NOT NULL,
	[vaiTro] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nhanVien_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanPham]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanPham](
	[sanPham_id] [varchar](10) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[moTa] [nvarchar](max) NULL,
	[trangThai] [nvarchar](100) NOT NULL,
	[ngayTao] [datetime] NULL,
	[brand_id] [int] NOT NULL,
	[deGiay_id] [int] NOT NULL,
	[chatLieu_id] [int] NOT NULL,
	[nhaCC_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sanPham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanPham_chuongTrinhKhuyenMai]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanPham_chuongTrinhKhuyenMai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[chuongTrinh_id] [int] NOT NULL,
	[sPCT_id] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanPhamChiTiet]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanPhamChiTiet](
	[sPCT_id] [varchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [decimal](18, 2) NOT NULL,
	[size_id] [int] NOT NULL,
	[anh] [nvarchar](max) NULL,
	[mauSac_id] [int] NOT NULL,
	[sanPham_id] [varchar](10) NOT NULL,
	[trangThai] [nvarchar](100) NOT NULL,
	[moTa] [nvarchar](max) NULL,
	[ngayTaoSPCT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[sPCT_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[giaTri] [float] NOT NULL,
	[ngayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thanhToan]    Script Date: 7/22/2024 12:33:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thanhToan](
	[thanhToan_id] [int] IDENTITY(1,1) NOT NULL,
	[hinhThucThanhToan] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[thanhToan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD  CONSTRAINT [FK_hoaDon_khachHang] FOREIGN KEY([khachHang_id])
REFERENCES [dbo].[khachHang] ([khachHang_id])
GO
ALTER TABLE [dbo].[hoaDon] CHECK CONSTRAINT [FK_hoaDon_khachHang]
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD  CONSTRAINT [FK_hoaDon_nhanVien] FOREIGN KEY([nhanVien_id])
REFERENCES [dbo].[nhanVien] ([nhanVien_id])
GO
ALTER TABLE [dbo].[hoaDon] CHECK CONSTRAINT [FK_hoaDon_nhanVien]
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD  CONSTRAINT [FK_hoaDon_thanhToan] FOREIGN KEY([thanhToan_id])
REFERENCES [dbo].[thanhToan] ([thanhToan_id])
GO
ALTER TABLE [dbo].[hoaDon] CHECK CONSTRAINT [FK_hoaDon_thanhToan]
GO
ALTER TABLE [dbo].[hoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_hoaDonChiTiet_hoaDon] FOREIGN KEY([hoaDon_id])
REFERENCES [dbo].[hoaDon] ([hoaDon_id])
GO
ALTER TABLE [dbo].[hoaDonChiTiet] CHECK CONSTRAINT [FK_hoaDonChiTiet_hoaDon]
GO
ALTER TABLE [dbo].[hoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_hoaDonChiTiet_sanPhamChiTiet] FOREIGN KEY([sPCT_id])
REFERENCES [dbo].[sanPhamChiTiet] ([sPCT_id])
GO
ALTER TABLE [dbo].[hoaDonChiTiet] CHECK CONSTRAINT [FK_hoaDonChiTiet_sanPhamChiTiet]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanPham_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([brand_id])
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [FK_sanPham_brand]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanPham_chatLieu] FOREIGN KEY([chatLieu_id])
REFERENCES [dbo].[chatLieu] ([chatLieu_id])
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [FK_sanPham_chatLieu]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanPham_loaiDeGiay] FOREIGN KEY([deGiay_id])
REFERENCES [dbo].[loaiDeGiay] ([deGiay_id])
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [FK_sanPham_loaiDeGiay]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanPham_nhaCungCap] FOREIGN KEY([nhaCC_id])
REFERENCES [dbo].[nhaCungCap] ([nhaCC_id])
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [FK_sanPham_nhaCungCap]
GO
ALTER TABLE [dbo].[sanPham_chuongTrinhKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_sanPham_chuongTrinhKhuyenMai_chuongTrinhKhuyenMai] FOREIGN KEY([chuongTrinh_id])
REFERENCES [dbo].[chuongTrinhKhuyenMai] ([chuongTrinh_id])
GO
ALTER TABLE [dbo].[sanPham_chuongTrinhKhuyenMai] CHECK CONSTRAINT [FK_sanPham_chuongTrinhKhuyenMai_chuongTrinhKhuyenMai]
GO
ALTER TABLE [dbo].[sanPham_chuongTrinhKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_sanPham_chuongTrinhKhuyenMai_sanPhamChiTiet] FOREIGN KEY([sPCT_id])
REFERENCES [dbo].[sanPhamChiTiet] ([sPCT_id])
GO
ALTER TABLE [dbo].[sanPham_chuongTrinhKhuyenMai] CHECK CONSTRAINT [FK_sanPham_chuongTrinhKhuyenMai_sanPhamChiTiet]
GO
ALTER TABLE [dbo].[sanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_sanPhamChiTiet_mauSac] FOREIGN KEY([mauSac_id])
REFERENCES [dbo].[mauSac] ([mauSac_id])
GO
ALTER TABLE [dbo].[sanPhamChiTiet] CHECK CONSTRAINT [FK_sanPhamChiTiet_mauSac]
GO
ALTER TABLE [dbo].[sanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_sanPhamChiTiet_sanPham] FOREIGN KEY([sanPham_id])
REFERENCES [dbo].[sanPham] ([sanPham_id])
GO
ALTER TABLE [dbo].[sanPhamChiTiet] CHECK CONSTRAINT [FK_sanPhamChiTiet_sanPham]
GO
ALTER TABLE [dbo].[sanPhamChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_sanPhamChiTiet_size] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([size_id])
GO
ALTER TABLE [dbo].[sanPhamChiTiet] CHECK CONSTRAINT [FK_sanPhamChiTiet_size]
GO

INSERT INTO size (giaTri) 
VALUES(38.0),
		(39.0),
		(40.0),
		(41.0),
		(42.0),
		(43.0),
		(44.0),
		(45.0);
go

INSERT INTO mauSac (tenMau, moTa) VALUES
(N'Màu Đỏ', N'Mô tả màu đỏ'),
(N'Màu Vàng', N'Mô tả màu vàng'),
(N'Màu Cam', N'Mô tả màu cam'),
(N'Màu Nâu', N'Mô tả màu nâu'),
(N'Màu Trắng', N'Mô tả màu trắng'),
(N'Màu Xám', N'Mô tả màu xám'),
(N'Màu Be', N'Mô tả màu be'),
(N'Màu xanh dương', N'Mô tả màu xanh dương'),
(N'Màu xanh lá', N'Mô tả màu xanh lá');

INSERT INTO chatLieu (ten, nguonGoc, moTa) VALUES
(N'Cotton Canvas', N'Chủ yếu từ cotton hoặc linen.', N'Nhẹ, thoáng khí, và phổ biến trong giày sneaker thoải mái'),
(N'Da lộn', N'Da nubuck hoặc da lộn', N'Cảm giác mềm mại, thường được sử dụng trong giày thể thao và thời trang.'),
(N'Vải lưới', N'Thường được làm từ sợi tổng hợp như polyester hoặc nylon.', N'Đàn hồi, thoáng khí, thích hợp cho giày chạy và thể thao.'),
(N'Da', N'Có thể từ da bò, da cá sấu, hoặc da cá.', N'Sang trọng, bền, và thường xuất hiện trong giày công sở và thời trang.'),
(N'Len', N'Thường là sợi tổng hợp hoặc sợi tự nhiên như len.', N'Co giãn, ôm chân, thích hợp cho giày thoải mái và thời trang.'),
(N'Da Nappa', N'Da bò được xử lý đặc biệt để đạt được độ mềm và bóng.', N'Cảm giác mịn, bền, thường xuất hiện trong giày thời trang và đôi khi được làm tay.'),
(N'Vải Dệt Đan', N' Sợi tổng hợp như polyester hoặc nylon.', N'Dệt chéo có độ đàn hồi, thoáng khí, thích hợp cho giày chạy và thể thao.'),
(N'Cao su Neoprene ', N'Chủ yếu là chất liệu tổng hợp.', N'Đàn hồi, chống nước, thường được sử dụng trong giày thể thao và sneaker hiện đại.');
go

INSERT INTO nhaCungCap (ten, moTa, diaChi)
VALUES 
(N'Công ty X', N'Cung cấp giày thể thao và phụ kiện thời trang', N'789 Đường KLM, TP. HCM'),
(N'Công ty Y', N'Cung cấp giày công sở và phụ kiện thời trang', N'101 Đường QRS, Hà Nội'),
(N'Công ty Z', N'Cung cấp giày thể thao và sneaker cao cấp', N'456 Đường TUV, Đà Nẵng'),
(N'Công ty W', N'Cung cấp giày thời trang nam nữ', N'222 Đường XYZ, TP. HCM'),
(N'Công ty V', N'Cung cấp giày thể thao dành cho các bạn trẻ', N'333 Đường DEF, Hà Nội');

INSERT INTO brand (ten, congTy, moTa)
VALUES 
(N'Puma', N'Puma SE', N'Thương hiệu giày thể thao và thời trang'),
(N'New Balance', N'New Balance Athletics, Inc.', N'Thương hiệu giày chạy và sneaker'),
(N'Converse', N'Converse Inc.', N'Thương hiệu giày sneaker nổi tiếng'),
(N'Reebok', N'Reebok International Ltd.', N'Thương hiệu giày thể thao và thời trang'),
(N'Under Armour', N'Under Armour, Inc.', N'Thương hiệu giày thể thao và trang phục thể thao');

INSERT INTO loaiDeGiay (tenDe, chieuCao)
VALUES
(N'Giày chạy bộ', 10),
(N'Giày búp bê', 5),
(N'Giày mọi', 8),
(N'Giày sandal', 7),
(N'Giày oxford', 12);

INSERT INTO chuongTrinhKhuyenMai(ten, moTa, ngayBD, ngayKT, giamGia, trangThai)
VALUES 
(N'Giảm giá cuối mùa', N'Giảm giá 30% các sản phẩm cuối mùa', '2024-09-01', '2024-09-30', 30, N'Hoạt động' ),
(N'Khuyến mãi tháng 7', N'Tặng voucher 200k cho mỗi đơn hàng từ 1 triệu đồng', '2024-07-01', '2024-07-31', 0, N'Tạm dừng'),
(N'Mua 1 tặng 1', N'Mua 1 sản phẩm nhận ngay 1 sản phẩm khác miễn phí', '2024-08-15', '2024-08-31', 100, N'Hoạt động'),
(N'Flash sale 24 giờ', N'Giảm giá 50% cho 24 giờ đầu tiên khi mở bán sản phẩm mới', '2024-10-01', '2024-10-01', 50, N'Tạm dừng'),
(N'Khuyến mãi Black Friday', N'Tất cả sản phẩm giảm giá lên đến 70%', '2024-11-23', '2024-11-23', 70, N'Hoạt động');

SELECT * FROM chuongTrinhKhuyenMai

INSERT INTO SanPham (sanPham_id, ten, moTa, trangThai, brand_id, deGiay_id, chatLieu_id, nhaCC_id) 
VALUES
		('SP001', N'Air Jordan 1 Low', N'Mô tả sản phẩm 1', N'Đang bán', 1, 1, 1, 1),
		('SP002', N'Jordan One Take 4 PF', N'Mô tả sản phẩm 2', N'Đang bán', 2, 2, 2, 2),
		('SP003', N'Air Jordan Legacy 312 Low', N'Mô tả sản phẩm 3', N'Đang bán', 3, 3, 3, 3),
		('SP004', N'Air Jordan 1 Low SE', N'Mô tả sản phẩm 4', N'Đang bán', 4, 4, 4, 4),
		('SP005', N'Nike Air Max', N'Mô tả sản phẩm 5', N'Ngừng bán', 5, 5, 5, 5),
		('SP006', N'Nike Dunk Low 2', N'Mô tả sản phẩm 6', N'Đang bán', 1, 2, 3, 4),
		('SP007', N'Jordan Nu Retro 1 Low', N'Mô tả sản phẩm 7', N'Đang bán', 1, 4, 3, 3),
		('SP008', N'Nike Dunk Low', N'Mô tả sản phẩm 8', N'Đang bán', 4, 5, 1, 2);
go

INSERT INTO sanPhamChiTiet (sPCT_id, soLuong, donGia, size_id, anh, mauSac_id, sanPham_id, trangThai, moTa) 
VALUES ('SPCT000001', 100, 250000, 1, N'duongdananh1.jpg', 1, 'SP001',N'Còn hàng',N'Mô tả'),
		('SPCT000002', 100, 250000, 2, N'duongdananh1.jpg', 2, 'SP001',N'Còn hàng',N'Mô tả'),
		('SPCT000003', 100, 250000, 3, N'duongdananh1.jpg', 3, 'SP001',N'Còn hàng',N'Mô tả'),
		('SPCT000004', 100, 250000, 4, N'duongdananh1.jpg', 4, 'SP001',N'Còn hàng',N'Mô tả'),
		('SPCT000005', 100, 250000, 5, N'duongdananh1.jpg', 5, 'SP001',N'Còn hàng',N'Mô tả'),


		('SPCT000006', 100, 300000, 1, N'duongdananh2.jpg', 1, 'SP002',N'Còn hàng',N'Mô tả'),
		('SPCT000007', 100, 300000, 2, N'duongdananh2.jpg', 2, 'SP002',N'Còn hàng',N'Mô tả'),
		('SPCT000008', 100, 300000, 3, N'duongdananh2.jpg', 3, 'SP002',N'Còn hàng',N'Mô tả'),
		('SPCT000009', 100, 300000, 4, N'duongdananh2.jpg', 4, 'SP002',N'Còn hàng',N'Mô tả'),
		('SPCT000010', 100, 300000, 5,N'duongdananh2.jpg', 5, 'SP002',N'Còn hàng',N'Mô tả'),

		('SPCT000011', 100, 200000, 1, N'duongdananh3.jpg', 1, 'SP003',N'Còn hàng',N'Mô tả'),
		('SPCT000012', 100, 200000, 2, N'duongdananh3.jpg', 2, 'SP003',N'Còn hàng',N'Mô tả'),
		('SPCT000013', 100, 200000, 3, N'duongdananh3.jpg', 3, 'SP003',N'Còn hàng',N'Mô tả'),
		('SPCT000014', 100, 200000, 4, N'duongdananh3.jpg', 4, 'SP003',N'Còn hàng',N'Mô tả'),


		('SPCT000015', 100, 350000, 1, N'duongdananh4.jpg', 1, 'SP004',N'Còn hàng',N'Mô tả'),
		('SPCT000016', 100, 350000, 2, N'duongdananh4.jpg', 2, 'SP004',N'Còn hàng',N'Mô tả'),
		('SPCT000017', 100, 350000, 3, N'duongdananh4.jpg', 3, 'SP004',N'Còn hàng',N'Mô tả'),
		('SPCT000018', 100, 350000, 4, N'duongdananh4.jpg', 4, 'SP004',N'Còn hàng',N'Mô tả'),


		('SPCT000019', 100, 180000, 1, N'duongdananh5.jpg', 1, 'SP005',N'Còn hàng',N'Mô tả'),
		('SPCT000020', 100, 180000, 2, N'duongdananh5.jpg', 2, 'SP005',N'Còn hàng',N'Mô tả'),
		('SPCT000021', 100, 180000, 3, N'duongdananh5.jpg', 3, 'SP005',N'Còn hàng',N'Mô tả'),
		('SPCT000022', 100, 180000, 4, N'duongdananh5.jpg', 4, 'SP005',N'Còn hàng',N'Mô tả'),

		('SPCT000023', 100, 320000, 1, N'duongdananh6.jpg', 1, 'SP006',N'Còn hàng',N'Mô tả'),
		('SPCT000024', 100, 320000, 2, N'duongdananh6.jpg', 2, 'SP006',N'Còn hàng',N'Mô tả'),
		('SPCT000025', 100, 320000, 3, N'duongdananh6.jpg', 3, 'SP006',N'Còn hàng',N'Mô tả'),


		('SPCT000026', 100, 270000, 1, N'duongdananh7.jpg', 1, 'SP007',N'Còn hàng',N'Mô tả'),
		('SPCT000027', 100, 270000, 2, N'duongdananh7.jpg', 2, 'SP007',N'Còn hàng',N'Mô tả'),
		('SPCT000028', 100, 270000, 3, N'duongdananh7.jpg', 3, 'SP007',N'Còn hàng',N'Mô tả'),

		('SPCT000029', 100, 290000, 1, N'duongdananh8.jpg', 1, 'SP008',N'Còn hàng',N'Mô tả'),
		('SPCT000030', 100, 290000, 2, N'duongdananh8.jpg', 2, 'SP008',N'Còn hàng',N'Mô tả'),
		('SPCT000031', 100, 290000, 3, N'duongdananh8.jpg', 3, 'SP008',N'Còn hàng',N'Mô tả');

SELECT * FROM sanPhamChiTiet

INSERT INTO sanPham_chuongTrinhKhuyenMai(chuongTrinh_id, sPCT_id)
VALUES (1, 'SPCT000001'),
		(2, 'SPCT000002'),
		(3, 'SPCT000003'),
		(4, 'SPCT000004'),
		(1, 'SPCT000005'),
		(1, 'SPCT000006'),
		(2, 'SPCT000007'),
		(3, 'SPCT000008'),
		(4, 'SPCT000009'),
		(1, 'SPCT000010'),
		(1, 'SPCT000011'),
		(2, 'SPCT000012'),
		(3, 'SPCT000013'),
		(4, 'SPCT000014'),
		(1, 'SPCT000015'),
		(1, 'SPCT000016'),
		(2, 'SPCT000017'),
		(3, 'SPCT000018'),
		(4, 'SPCT000019'),
		(1, 'SPCT000020'),
		(1, 'SPCT000021'),
		(2, 'SPCT000022'),
		(3, 'SPCT000023'),
		(4, 'SPCT000024'),
		(1, 'SPCT000025'),
		(1, 'SPCT000026'),
		(2, 'SPCT000027'),
		(3, 'SPCT000028'),
		(4, 'SPCT000029'),
		(1, 'SPCT000030'),
		(2, 'SPCT000031');

INSERT INTO nhanVien (nhanVien_id, hoTen, gioiTinh, ngaySinh, diaChi, sdt, trangThai, anh, matkhau, vaiTro) VALUES
('NV001', N'Nguyễn Trọng Phú', 1, '2004-09-13', N'123 Đường ABC, Huyện HL, TP.Lạng Sơn', '0123456789', N'Hoạt động', N'duongdananh1.jpg', 'matkhau1', N'Quản lý'),
('NV002', N'Vũ Quang Minh', 1, '1995-03-20', N'Hà Nội', '0987654321', N'Hoạt động', N'duongdananh2.jpg', 'matkhau2', N'Quản lý'),
('NV003', N'Lê Xuân Tiến', 1, '1985-08-10', N'789 Đường DEF, Hà Nội', '0123456780', N'Nghỉ việc', N'duongdananh3.jpg', 'matkhau3', N'Quản lý'),
('NV004', N'Dương Doãn Tuân', 1, '1992-12-05', N'101 Đường GHI, Hà Nội', '0909090909', N'Hoạt động', N'duongdananh4.jpg', 'matkhau4', N'Quản lý'),
('NV005', N'Hoàng Văn E', 1, '1980-04-25', N'321 Đường KLM, Hà Nội', '0888888888', N'Hoạt động', N'duongdananh5.jpg', 'matkhau5', N'Nhân viên'),
('NV006', N'Trịnh Thị F', 0, '1997-06-15', N'555 Đường NOP, Hà Nội', '0777777777', N'Hoạt động', N'duongdananh6.jpg', 'matkhau6', N'Nhân viên'),
('NV007', N'Đỗ Văn G', 1, '1988-10-30', N'888 Đường QRS, Hà Nội', '0666666666', N'Hoạt động', N'duongdananh7.jpg', 'matkhau7', N'Nhân viên'),
('NV008', N'Mai Thị H', 0, '1993-02-12', N'666 Đường TUV, Hà Nội', '0555555555', N'Hoạt động', N'duongdananh8.jpg', 'matkhau8', N'Nhân viên');
go

INSERT INTO khachHang (khachHang_id, hoTenKH, gioiTinh, diaChi, sdt, email, ghiChu) VALUES
('KH000', N'Khách bán lẻ', 1, N'', '', '', N'Mô tả Khách bán lẻ'),
('KH001', N'Nguyễn Thị M', 0, N'321 Đường ABC, Hà Nội', '0123456789', 'nguyen.thi.m@example.com', N'Ghi chú 1'),
('KH002', N'Trần Văn N', 1, N'456 Đường XYZ, Hà Nội', '0987654321', 'tran.van.n@example.com', N'Ghi chú 2'),
('KH003', N'Lê Thị O', 0, N'789 Đường DEF, Hà Nội', '0123456780', 'le.thi.o@example.com', N'Ghi chú 3'),
('KH004', N'Phạm Văn P', 1, N'101 Đường GHI, Hà Nội', '0909090909', 'pham.van.p@example.com', N'Ghi chú 4'),
('KH005', N'Hoàng Thị Q', 0, N'123 Đường KLM, Hà Nội', '0888888888', 'hoang.thi.q@example.com', N'Ghi chú 5'),
('KH006', N'Trịnh Văn R', 1, N'555 Đường NOP, Hà Nội', '0777777777', 'trinh.van.r@example.com', N'Ghi chú 6'),
('KH007', N'Đỗ Thị S', 0, N'666 Đường QRS, Hà Nội', '0666666666', 'do.thi.s@example.com', N'Ghi chú 7'),
('KH008', N'Mai Văn T', 1, N'888 Đường TUV, Hà Nội', '0555555555', 'mai.van.t@example.com', N'Ghi chú 8');


INSERT INTO thanhToan (hinhThucThanhToan) 
VALUES ( N'Tiền mặt'),
		( N'Chuyển khoản');

INSERT INTO khuyenMaiVoucher (tenVoucher, moTa, ngayBD, ngayKT, giamGia, giaToiDa, donToiThieu, trangThai)
VALUES 
    ('SUMMER2024', N'Giảm giá mùa hè 2024', '2024-07-01', '2024-08-31', 20, 50000, 100000, N'Hoạt động'),
    ('FALL2024', N'Khuyến mãi mùa thu 2024', '2024-09-01', '2024-10-31', 15 , 30000, 110000, N'Hoạt động'),
    ('WINTER2024', N'Giảm giá mùa đông 2024', '2024-12-01', '2025-01-31', 25 , 20000, 120000, N'Tạm dừng'),
    ('SPRING2025', N'Khuyến mãi mùa xuân 2025', '2025-03-01', '2025-04-30', 18 , 60000, 130000, N'Hoạt động'),
    ('BACKTOSCHOOL2025', N'Khuyến mãi trở lại trường 2025', '2025-08-01', '2025-09-30', 30 , 70000, 140000, N'Tạm dừng');

INSERT INTO hoaDon (hoaDon_id, ngayTaoHD, nhanVien_id, tongTien, trangThai, khachHang_id, thanhToan_id, ghiChu,hanDoiTra) 
VALUES
('HD000001', '2023-9-01 10:30:00', 'NV001', 800000.0, N'Hoàn thành', 'KH001', 1,N'Ghi chú HD1','2023-9-08 10:30:00'),
('HD000002', '2023-10-02 11:15:00', 'NV002', 1300000.0, N'Hoàn thành', 'KH002', 1,N'Ghi chú HD1','2023-10-9 10:30:00'),
('HD000003', '2023-11-03 12:20:00', 'NV003', 820000.0, N'Hoàn thành', 'KH000', 2,N'Ghi chú HD1','2023-11-10 10:30:00'),
('HD000004', '2023-11-04 14:00:00', 'NV004', 1080000.0, N'Hoàn thành', 'KH001', 2,N'Ghi chú HD1','2023-11-11 10:30:00');

INSERT INTO hoaDonChiTiet (hDCT_id, hoaDon_id, sPCT_id, soLuong, giaBan, thanhTien, trangThaiHDCT) VALUES
('HDCT000001', 'HD000001', 'SPCT000001', 2, 250000.0, 500000.0, N'Hoàn thành'),
('HDCT000002', 'HD000001', 'SPCT000006', 1, 300000.0, 300000.0, N'Hoàn thành'),
('HDCT000003', 'HD000002', 'SPCT000011', 3, 200000.0, 600000.0, N'Hoàn thành'),
('HDCT000004', 'HD000002', 'SPCT000015', 2, 350000.0, 700000.0, N'Hoàn thành'),
('HDCT000005', 'HD000003', 'SPCT000019', 1, 180000.0, 180000.0, N'Hoàn thành'),
('HDCT000006', 'HD000003', 'SPCT000023', 2, 320000.0, 640000.0, N'Hoàn thành'),
('HDCT000007', 'HD000004', 'SPCT000026', 4, 270000.0, 1080000.0, N'Hoàn thành'),
('HDCT000008', 'HD000004', 'SPCT000029', 3, 290000.0, 870000.0, N'Xoá');
GO

--TẤT CẢ CÁC THỦ TỤC PROC Ở ĐÂY

-- Thủ tục xóa Voucher
CREATE OR ALTER PROCEDURE sp_DeleteVoucher
    @voucherId INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;
        -- Xóa bản ghi trong bảng khuyenMaiVoucher
        DELETE FROM khuyenMaiVoucher
        WHERE voucher_id = @voucherId;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Ném ra lỗi
        THROW;
    END CATCH;
END
GO

-- Thủ tục xóa chương trình khuyến mãi

CREATE OR ALTER PROCEDURE sp_DeleteChuongTrinhKhuyenMai
    @chuongTrinhId INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;
        
        -- Xóa các bản ghi liên quan trong bảng sanPham_chuongTrinhKhuyenMai
        DELETE FROM sanPham_chuongTrinhKhuyenMai
        WHERE chuongTrinh_id = @chuongTrinhId;

        -- Xóa bản ghi trong bảng chuongTrinhKhuyenMai
        DELETE FROM chuongTrinhKhuyenMai
        WHERE chuongTrinh_id = @chuongTrinhId;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END
GO

-- Thủ tục THANHTOANHOADON
CREATE OR ALTER PROCEDURE THANHTOANHOADON
    @MAHOADON VARCHAR(10),
    @TONGTIEN DECIMAL(18,2),
    @MATHANHTOAN INT,
    @MAKH VARCHAR(7),
    @GHICHU NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Cập nhật thông tin trong bảng hoaDon
        UPDATE hoaDon 
        SET
            tongTien = @TONGTIEN,
            trangThai = N'Hoàn thành',
            thanhToan_id = @MATHANHTOAN,
            khachHang_id = @MAKH,
            hanDoiTra = DATEADD(DAY, 2, GETDATE()),
            ghiChu = @GHICHU
        WHERE hoaDon_id = @MAHOADON;

        -- Cập nhật trạng thái cho các chi tiết hóa đơn
        UPDATE hoaDonChiTiet 
        SET
            trangThaiHDCT = N'Hoàn thành'
        WHERE trangThaiHDCT = N'Chờ thanh toán' AND hoaDon_id = @MAHOADON;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END
GO

-- Thủ tục CHINHSUASOLUONGSP
CREATE OR ALTER PROCEDURE CHINHSUASOLUONGSP
    @MAHOADON VARCHAR(10),
    @MAHDCT VARCHAR(10),
    @MASPCT VARCHAR(10),
    @SOLUONGSPTHAYDOI INT,
    @SOLUONGSPTRONGGIO INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SOLUONGSP INT;
    DECLARE @DONGIA DECIMAL(18,2);
    DECLARE @THANHTIEN DECIMAL(18,2);

    -- Lấy đơn giá từ sản phẩm chi tiết
    SELECT @DONGIA = donGia, @SOLUONGSP = soLuong
    FROM sanPhamChiTiet
    WHERE sPCT_id = @MASPCT;

    PRINT 'DonGia: ' + CAST(@DONGIA AS VARCHAR(20));
    
    -- Cập nhật số lượng sản phẩm chi tiết và trạng thái
    UPDATE sanPhamChiTiet
    SET 
        soLuong = (@SOLUONGSP + @SOLUONGSPTRONGGIO) - @SOLUONGSPTHAYDOI,
        trangThai = CASE
                        WHEN ((@SOLUONGSP + @SOLUONGSPTRONGGIO) - @SOLUONGSPTHAYDOI) > 0 THEN N'Còn hàng'
                        ELSE N'Hết hàng'
                    END
    WHERE sPCT_id = @MASPCT;

    PRINT 'Updated soLuong for sPCT_id ' + @MASPCT + ': ' + CAST((@SOLUONGSP + @SOLUONGSPTRONGGIO - @SOLUONGSPTHAYDOI) AS VARCHAR(20));

    -- Tính toán và cập nhật thành tiền cho chi tiết hóa đơn
    SET @THANHTIEN = @DONGIA * @SOLUONGSPTHAYDOI;

    PRINT 'ThanhTien: ' + CAST(@THANHTIEN AS VARCHAR(20));

    -- Cập nhật số lượng và thành tiền trong chi tiết hóa đơn
    UPDATE hoaDonChiTiet
    SET 
        soLuong = @SOLUONGSPTHAYDOI,
        thanhTien = @THANHTIEN
    WHERE hoaDon_id = @MAHOADON
        AND hDCT_id = @MAHDCT
        AND sPCT_id = @MASPCT;

    -- Cập nhật lại tổng tiền của hóa đơn
    DECLARE @tongTien DECIMAL(18,2);
    SELECT @tongTien = SUM(thanhTien)
    FROM hoaDonChiTiet
    WHERE hoaDon_id = @MAHOADON
        AND trangThaiHDCT = N'Chờ thanh toán';

    PRINT 'TongTien: ' + CAST(@tongTien AS VARCHAR(20));

    UPDATE hoaDon
    SET tongTien = @tongTien
    WHERE hoaDon_id = @MAHOADON;

    PRINT 'Updated hoaDon with hoaDon_id: ' + @MAHOADON;
END;
GO



-- Thủ tục HUYHOADON
CREATE OR ALTER PROCEDURE HUYHOADON
    @MAHOADON VARCHAR(10),
    @MAHDCT VARCHAR(10),
    @MASPCT VARCHAR(10),
    @ghiChu NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SOLUONG INT;

    -- Lấy số lượng sản phẩm từ chi tiết hóa đơn để cập nhật lại kho hàng
    SELECT @SOLUONG = soLuong
    FROM hoaDonChiTiet
    WHERE hoaDon_id = @MAHOADON
        AND hDCT_id = @MAHDCT
        AND sPCT_id = @MASPCT
        AND trangThaiHDCT = N'Chờ thanh toán';

    -- Cập nhật lại số lượng sản phẩm trong kho và trạng thái của sản phẩm
    UPDATE sanPhamChiTiet
    SET 
        soLuong = soLuong + @SOLUONG,
        trangThai = CASE
                        WHEN soLuong + @SOLUONG > 0 THEN N'Còn hàng'
                        ELSE trangThai
                    END
    WHERE sPCT_id = @MASPCT;

    -- Đánh dấu hóa đơn đã huỷ và cập nhật ghi chú
    UPDATE hoaDon
    SET 
        trangThai = N'Đã huỷ',
        ghiChu = @ghiChu
    WHERE hoaDon_id = @MAHOADON;

    -- Đánh dấu chi tiết hóa đơn đã huỷ
    UPDATE hoaDonChiTiet
    SET trangThaiHDCT = N'Đã huỷ'
    WHERE hDCT_id = @MAHDCT;
END;
GO

-- Thủ tục PROC duaHDCTVeTrangThaiHuy

CREATE OR ALTER PROC duaHDCTVeTrangThaiHuy
    @MaHDCT NVARCHAR(10),
    @MaHoaDon NVARCHAR(10),
    @MaSanPhamChiTiet NVARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SoLuongXoa INT;

    -- Lấy số lượng sản phẩm từ hóa đơn chi tiết cần xoá
    SELECT @SoLuongXoa = soLuong
    FROM hoaDonChiTiet
    WHERE sPCT_id = @MaSanPhamChiTiet AND hDCT_id = @MaHDCT;

    -- Đánh dấu hóa đơn chi tiết đã bị xoá
    UPDATE hoaDonChiTiet
    SET trangThaiHDCT = N'Xoá'
    WHERE sPCT_id = @MaSanPhamChiTiet AND hoaDon_id = @MaHoaDon AND hDCT_id = @MaHDCT;

    -- Cập nhật tổng tiền của hóa đơn sau khi xoá
    DECLARE @tongTien DECIMAL(18,2);
    SET @tongTien = (
        SELECT SUM(giaBan * soLuong)
        FROM hoaDonChiTiet
        WHERE trangThaiHDCT LIKE N'Chờ thanh toán' AND hoaDon_id = @MaHoaDon
    );
    UPDATE hoaDon
    SET tongTien = @tongTien
    WHERE hoaDon_id = @MaHoaDon;

    -- Cập nhật số lượng sản phẩm trong bảng sanPhamChiTiet
    UPDATE sanPhamChiTiet
    SET 
        soLuong = soLuong + @SoLuongXoa,
        trangThai = CASE
                        WHEN soLuong + @SoLuongXoa > 0 THEN N'Còn hàng'
                        ELSE N'Hết hàng'
                    END
    WHERE sPCT_id = @MaSanPhamChiTiet;
END;




GO 

-- Thủ tục PROC ThemSanPhamVaoHoaDonChiTiet

CREATE OR ALTER PROCEDURE ThemSanPhamVaoHoaDonChiTiet
    @MaHoaDonChiTiet VARCHAR(10),
    @MaHoaDon VARCHAR(10),
    @MaSanPhamChiTiet NVARCHAR(50),
    @SoLuong INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @GiaBan DECIMAL(18,2);
    DECLARE @ThanhTien DECIMAL(18,2);
    DECLARE @TrangThaiHDCT NVARCHAR(100);

    -- Lấy giá bán của sản phẩm
    SELECT @GiaBan = donGia FROM sanPhamChiTiet WHERE sPCT_id = @MaSanPhamChiTiet;

    -- Thiết lập trạng thái mặc định cho hóa đơn chi tiết
    SET @TrangThaiHDCT = N'Chờ thanh toán';

    -- Tính thành tiền = số lượng * giá bán
    SET @ThanhTien = @SoLuong * @GiaBan;

    -- Thêm sản phẩm vào hóa đơn chi tiết
    IF EXISTS (SELECT 1 FROM hoaDonChiTiet WHERE hoaDon_id = @MaHoaDon AND sPCT_id = @MaSanPhamChiTiet AND trangThaiHDCT LIKE N'Chờ thanh toán')
    BEGIN
        -- Nếu sản phẩm đã tồn tại trong hóa đơn chi tiết, thực hiện update lại số lượng và thành tiền
        UPDATE hoaDonChiTiet
        SET soLuong = soLuong + @SoLuong,
            giaBan = @GiaBan,
            thanhTien = thanhTien + @ThanhTien
        WHERE hoaDon_id = @MaHoaDon AND sPCT_id = @MaSanPhamChiTiet;
    END
    ELSE
    BEGIN
        -- Nếu sản phẩm chưa tồn tại trong hóa đơn chi tiết, thêm mới vào
        INSERT INTO hoaDonChiTiet (hDCT_id, hoaDon_id, sPCT_id, soLuong, giaBan, thanhTien, trangThaiHDCT)
        VALUES (@MaHoaDonChiTiet, @MaHoaDon, @MaSanPhamChiTiet, @SoLuong, @GiaBan, @ThanhTien, @TrangThaiHDCT);
    END;

    -- Cập nhật tổng tiền của hóa đơn
    UPDATE hoaDon 
    SET tongTien = tongTien + @ThanhTien 
    WHERE hoaDon_id = @MaHoaDon;

    -- Cập nhật số lượng sản phẩm trong bảng sanPhamChiTiet
    UPDATE sanPhamChiTiet
    SET soLuong = soLuong - @SoLuong,
        trangThai = CASE WHEN soLuong - @SoLuong = 0 THEN N'Hết hàng' ELSE trangThai END
    WHERE sPCT_id = @MaSanPhamChiTiet;
END;
GO

-- Thủ tục PROC XoaSanPhamKhoiHoaDonChiTiet

CREATE OR ALTER PROCEDURE XoaSanPhamKhoiHoaDonChiTiet
    @MaHoaDon VARCHAR(10),
    @MaHDCT VARCHAR(10),
    @MaSanPhamChiTiet NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SoLuong INT;

    -- Lấy số lượng sản phẩm trong hóa đơn chi tiết cần xoá
    SELECT @SoLuong = SoLuong
    FROM HoaDonChiTiet
    WHERE hoaDon_id = @MaHoaDon AND hDCT_id = @MaHDCT AND sPCT_id = @MaSanPhamChiTiet;

    -- Cập nhật số lượng sản phẩm trong bảng SanPhamChiTiet
    UPDATE sanPhamChiTiet
    SET SoLuong = SoLuong + @SoLuong,
        trangThai = CASE WHEN SoLuong + @SoLuong > 0 THEN N'Còn hàng' ELSE N'Hết hàng' END
    WHERE sPCT_id = @MaSanPhamChiTiet;

    -- Xoá sản phẩm khỏi hóa đơn chi tiết
    DELETE FROM HoaDonChiTiet
    WHERE hoaDon_id = @MaHoaDon AND hDCT_id = @MaHDCT AND sPCT_id = @MaSanPhamChiTiet;

    -- Cập nhật lại tổng tiền của hóa đơn
    DECLARE @TongTien DECIMAL(18,2);
    SELECT @TongTien = SUM(giaBan * soLuong)
    FROM HoaDonChiTiet
    WHERE trangThaiHDCT = N'Chờ thanh toán' AND hoaDon_id = @MaHoaDon;

    UPDATE hoaDon
    SET tongTien = ISNULL(@TongTien, 0)
    WHERE hoaDon_id = @MaHoaDon;
END;
GO
