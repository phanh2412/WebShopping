USE [Shopping]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](6) NULL,
	[Active] [bit] NOT NULL,
	[FullName] [nvarchar](150) NULL,
	[RoleID] [int] NULL,
	[LastLogin] [datetime] NULL,
	[CreateLogin] [datetime] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributesPrice]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributesPrice](
	[AttributesPricesID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_AttributesPrice] PRIMARY KEY CLUSTERED 
(
	[AttributesPricesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[ParentID] [int] NULL,
	[Levels] [int] NULL,
	[Ordering] [int] NULL,
	[Published] [bit] NOT NULL,
	[Thumb] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[MetaDesc] [nvarchar](250) NULL,
	[MetaKey] [nvarchar](250) NULL,
	[Cover] [nvarchar](250) NULL,
	[SchemaMarkup] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](250) NULL,
	[Birthday] [datetime] NULL,
	[Avatar] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Email] [nchar](150) NULL,
	[Phone] [varchar](12) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](8) NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Type] [nvarchar](20) NULL,
	[Slug] [nvarchar](100) NULL,
	[NameWithType] [nvarchar](250) NULL,
	[PathWithType] [nvarchar](250) NULL,
	[ParentCode] [int] NULL,
	[Levels] [int] NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Quantity] [int] NULL,
	[Discount] [int] NULL,
	[Total] [int] NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[TransactStatusID] [int] NULL,
	[Deleted] [bit] NULL,
	[Paid] [bit] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentID] [int] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](250) NULL,
	[Contents] [nvarchar](50) NULL,
	[Thumb] [nvarchar](250) NULL,
	[Published] [bit] NOT NULL,
	[Title] [nvarchar](250) NULL,
	[MetaDesc] [nvarchar](250) NULL,
	[MetaKey] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Ordering] [int] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[SContents] [nvarchar](250) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](250) NULL,
	[Published] [bit] NOT NULL,
	[Alias] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Author] [nvarchar](250) NULL,
	[AccountID] [int] NULL,
	[Tags] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[isHot] [bit] NULL,
	[isNewfeed] [bit] NULL,
	[MetaKey] [nvarchar](250) NULL,
	[MetaDesc] [nvarchar](250) NULL,
	[Views] [int] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NULL,
	[ShortDesc] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[Thumb] [nvarchar](250) NULL,
	[Video] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[BestSellers] [bit] NULL,
	[HomeFlag] [bit] NULL,
	[Active] [bit] NULL,
	[Tags] [nvarchar](max) NULL,
	[Title] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[MetaDesc] [nvarchar](250) NULL,
	[MetaKey] [nvarchar](250) NULL,
	[UnitslnStock] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[ShipperName] [nvarchar](150) NULL,
	[Phone] [nchar](10) NULL,
	[Company] [nvarchar](150) NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 07/05/2022 10:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactStatus](
	[TransactStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [FullName], [RoleID], [LastLogin], [CreateLogin]) VALUES (1, N'0967854374', N'abc@gmail.com', N'12345678', NULL, 1, N'Nguyễn Văn An', 1, CAST(N'2022-03-02T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (5, N'Hoa hồng sáp cao cấp', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (6, N'Hoa hồng sáp sinh nhật', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (8, N'Hoa hồng sáp tình yêu', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (10, N'Hoa nhũ cao cấp', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (12, N'Hoa sáp hộp ', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (22, N'Hoa hồng sáp 1 bông', NULL, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (24, N'Hoa hồng sáp 11 bông', NULL, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (26, N'Hoa hồng sáp 21 bông', NULL, 5, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (27, N'Hoa hồng sáp 25 bông', NULL, 5, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (28, N'Hoa hồng sáp 3 bông', NULL, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (29, N'Hoa hồng sáp 33 bông', NULL, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (30, N'Hoa hồng sáp 50 bông', NULL, 5, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (31, N'Hoa hồng sáp 7 bông', NULL, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (32, N'Hoa hồng sáp 9 bông', NULL, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (33, N'Hoa hồng sáp 99 bông', NULL, 5, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (35, N'Gấu hoa hồng ', NULL, 5, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (37, N'Giỏ hoa sáp', NULL, 6, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (39, N'Hoa sáp hộp hình trái tim', NULL, 12, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (40, N'Hoa sáp hộp hình vuông', NULL, 12, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (42, N'Hoa sáp hộp hình trụ', NULL, 12, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (44, N'Hoa hồng sáp hình trái tim 50 bông', NULL, 8, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (46, N'Hoa hồng sáp hình trái tim 99 bông', NULL, 8, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (48, N'Hoa hồng nhũ 50 bông', NULL, 8, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (49, N'Hoa hồng nhũ 99 bông', NULL, 8, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (50, N'Hoa hồng nhũ 25 bông', NULL, 8, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([PaymentID], [PaymentName]) VALUES (1, N'Thanh toán khi nhận hàng')
INSERT [dbo].[Payments] ([PaymentID], [PaymentName]) VALUES (2, N'Thanh toán trực tiếp tại cửa hàng')
INSERT [dbo].[Payments] ([PaymentID], [PaymentName]) VALUES (3, N'Thanh toán chuyển khoản qua ngân hàng')
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (4, N'Hoa hồng sáp 50 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…', 30, 500000, 400000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (5, N'Bó hoa hồng 99 bông baby', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 33, 1000000, 800000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (6, N'Bó hoa hồng sáp cao cấp bọc pha', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 33, 1000000, 800000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (7, N'Bó hoa hồng nhũ cao cấp nhũ bọc trắng', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 48, 1200000, 900000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (8, N'Bó hoa hồng nhũ cao cấp nhũ giấy gấm đen', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 48, 1200000, 900000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (9, N'Bó hoa hồng sáp cao cấp trái tim dài', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 46, 1900000, 900000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (10, N'Bó hoa lưới nhũ và sáp', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 5, 750000, 450000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (11, N'Bó hoa nhũ tròn cao cấp
', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 5, 800000, 550000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (12, N'Bó hoa sáp 25 bông + túi xách', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 5, NULL, 350000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (13, N'Bó hoa sáp 50 bông cao cấp + vương miện', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 5, 700000, 500000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (14, N'Bó hoa sáp cao cấp bọc đỏ', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 33, 1500000, 800000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (15, N'Bó hoa sáp cao cấp bọc trắng', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 33, 1500000, 800000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (16, N'Bó hoa sáp cao cấp nhũ bọc bạc', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 48, NULL, 1200000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (18, N'Bó hoa sáp cao cấp nhũ bọc ghi', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 48, 1200000, 900000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (19, N'Bó hoa sáp cao cấp XẾP CHỮ', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 33, 1500000, 800000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (20, N'Bó hoa sáp phủ voan tròn', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 27, 500000, 300000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (21, N'Bó sáp nhũ 25 bông cao cấp', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 50, 700000, 500000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (22, N'Gấu hoa hồng xốp size 70cm', NULL, NULL, 35, 1900000, 1750000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (23, N'Gấu ôm trái tim hoa hồng xốp cao cấp size 70', N'Phụ kiện mua ngoài topper + vương miện', NULL, 35, 2800000, 2000000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (24, N'Hoa 21 bông mix các loại', NULL, NULL, 26, 450000, 400000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (25, N'Bó hoa hồng sáp 33 bông kèm túi kèm đèn nháy', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 29, 600000, 400000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (26, N'Bó hoa nhũ 3 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 28, NULL, 150000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (27, N'Bó hoa tim HÌNH CHỮ THEO YÊU CẦU', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 5, NULL, 900000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (28, N'Bó hoa tim nhũ 55 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 8, NULL, 900000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (29, N'Hộp hoa đựng son', NULL, N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 12, 200000, 120000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (30, N'Túi hoa 1 bông xinh xắn', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 22, 70000, 40000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (31, N'Hoa hồng sáp nhũ 1 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 22, 60000, 30000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (32, N'Hoa hồng sáp hộp 1 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 22, 40000, 20000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (33, N'Hoa nhũ 11 bông phủ voan', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 24, NULL, 300000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (34, N'Hoa bó 21 bông tim', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 26, 480000, 400000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (35, N'Hoa sáp hộp mika 21 bông cao cấp', NULL, N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (36, N'HOA NHŨ 25 BÔNG LOVE', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 27, NULL, 400000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (37, N'Hoa sáp 3 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 28, NULL, 50000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (38, N'HỘP Hoa hồng sáp 33 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 29, 850000, 550000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (39, N'Hoa sáp tim voan cao cấp+ topper', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 44, 750000, 450000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (40, N'Hoa nhũ bó tròn', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 48, NULL, 800000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (41, N'Hoa sáp bó 50 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 44, 650000, 500000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (42, N'Bó hoa trái tim nhũ cao cấp lưới', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 48, 1700000, 900000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (43, N'Túi hoa nhũ 7 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 31, 390000, 220000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (44, N'Hộp hoa hồng sáp 7 bông', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 31, 350000, 250000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (45, N'TÚI HOA SÁP 9 BÔNG', N'HOA BÊN MINH CÓ RẤT NHIỀU LOẠI BỌC

QUÝ KHÁCH CHỌN MÀU HOA CÒN BỌC SẼ NGẪU NHIÊN Ạ

CÁM ƠN QUÝ KHÁCH', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 32, 250000, 150000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (46, N'TIM NHŨ 99 BÔNG BỌC GIẤY KIM TUYẾN CAO CẤP', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 49, NULL, 1500000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (47, N'TIM VOAN KÍNH 99 BÔNG SÁP', N'MÀU HOA: ĐỎ- XANH- HỒNG- VÀNG – TÍM', N'Tina Flowers tự hào là đơn vị cung cấp Hoa sáp thơm số 1 trên thị trường hiện nay dựa trên 2 tiêu chí: Chất lượng và Giá thành cạnh tranh.
HOA SÁP THƠM tinh tế – mang hương thơm nhẹ nhàng – kiểu cách sang trọng – Món quà đẹp mãi thời gian là món quà tặng sinh nhật độc đáo, hoa cưới, các ngày 20/10, 20/11 ngày của mẹ và 8/3, Ngày lễ tình nhân và các hội nghị. Hoa sáp đẹp,thơm và có thể dùng mãi mãi, màu sắc lên đẹp và chuẩn hơn nhiều so với các loại hoa giả khác…

? Những ưu điểm của Hoa Sáp Thơm:
– ❤ ️Hoa chất lượng cao, sáng tạo hơn, cánh hoa đầy đủ hơn
– ❤ màu sắc sống động hơn,
– ❤ hộp quà tặng sử dụng nhiều hình dáng đẹp như trái tim, hình hộp dài
– ❤ hộp quà tặng là cao cấp giấy đặc biệt, chất lượng cao,
– ❤ hộp quà tặng bốn màu sáng bắt mắt,
– ❤ quy trình sản xuất đặc biệt các vật liệu làm từ giấy sáp diệt khuẩn
– ❤ Có thể dùng trong nhiều dịp: Ngày của Mẹ, ngày của giáo viên, quà tặng Giáng sinh, quà tặng năm mới, quà tặng đám cưới, người yêu, quà tặng sinh nhật, ngày 20/10, ngày 8/3…<3
Tina Flowers mang tới cho khách hang các tuy chọn khác nhau cho TF005 như : xanh lá mạ , xanh nõn chuối , xanh neon , tím , đỏ , cam..', 46, NULL, 900000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitslnStock]) VALUES (48, NULL, NULL, N'Tim nhũ voan cao cấp 99 bông nhũ + đèn + thiep + vuong mien + topper', 49, NULL, 1500000, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (1, N'Admin', N'Quản trị viên')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (2, N'Staff', N'Nhân viên')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (4, N'', NULL)
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
GO
ALTER TABLE [dbo].[AttributesPrice]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrice_Attributes] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attributes] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributesPrice] CHECK CONSTRAINT [FK_AttributesPrice_Attributes]
GO
ALTER TABLE [dbo].[AttributesPrice]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrice_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[AttributesPrice] CHECK CONSTRAINT [FK_AttributesPrice_Products]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Locations]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payments] ([PaymentID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_TransactStatus] FOREIGN KEY([TransactStatusID])
REFERENCES [dbo].[TransactStatus] ([TransactStatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_TransactStatus]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[Categories] ([CatID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
