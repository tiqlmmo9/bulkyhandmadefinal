USE [BulkyHandMadeFinal]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[CompanyId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Companies]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[IsAuthorizedCompany] [bit] NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[TrackingNumber] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentDueDate] [datetime2](7) NOT NULL,
	[TransactionId] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SKU] [nvarchar](max) NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Price50] [float] NOT NULL,
	[Price100] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210429193139_createDatabase', N'3.1.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210429195336_AddStoredProcForSupplier', N'3.1.12')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3423c07b-3b93-437a-9d5e-dc53a71ce994', N'Individual Customer', N'INDIVIDUAL CUSTOMER', N'e308af2c-b143-4d5f-bedc-0cb9b1b40d0d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6ab51a27-1117-43d3-838b-f988477bf966', N'Employee', N'EMPLOYEE', N'35f9246c-0d41-4f54-9bb3-d778a3d7c1e9')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'76c3516e-7a13-4459-9066-3337f315df94', N'Company Customer', N'COMPANY CUSTOMER', N'0b7e45e0-b8f5-406e-a940-4d3949670186')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'bcb5c1a7-1c10-432b-b0bd-88dec87a072c', N'Admin', N'ADMIN', N'e4736fc3-5bce-40f8-8d70-1a1ec52d7b36')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'104025619910521836540', N'Google', N'f27df93a-3cbe-4d45-9d92-b49202ea94ec')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'26932c0a-9e53-4d78-855e-798abe0dec26', N'3423c07b-3b93-437a-9d5e-dc53a71ce994')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'43abd582-5300-485d-bf5a-10b670181239', N'3423c07b-3b93-437a-9d5e-dc53a71ce994')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4e986231-515c-4318-9451-e721fdec1d90', N'3423c07b-3b93-437a-9d5e-dc53a71ce994')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c119c8ff-c217-43b9-8776-6f0b0715c636', N'3423c07b-3b93-437a-9d5e-dc53a71ce994')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f27df93a-3cbe-4d45-9d92-b49202ea94ec', N'3423c07b-3b93-437a-9d5e-dc53a71ce994')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dd9865c4-fa23-42f6-8794-db9638e37054', N'6ab51a27-1117-43d3-838b-f988477bf966')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'92b0d95e-a5a1-4196-84d7-bfe659f3dcfc', N'76c3516e-7a13-4459-9066-3337f315df94')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3cb88b1f-fe8e-4091-873d-f9e5efe931ad', N'bcb5c1a7-1c10-432b-b0bd-88dec87a072c')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId]) VALUES (N'26932c0a-9e53-4d78-855e-798abe0dec26', N'raulgenovesi.publisher@gmail.com', N'RAULGENOVESI.PUBLISHER@GMAIL.COM', N'raulgenovesi.publisher@gmail.com', N'RAULGENOVESI.PUBLISHER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGeX7sa+hAObY+23TTyi0AZ4hAJ8mvayH9cMo98X5OMmrNYPtyQL7troehE8jwX90w==', N'7FRINTELOFN3ZTEQ3C26EZADQSLWK5F2', N'47085d08-097a-4943-bc1c-a12b9d7de9cf', N'1230009995', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Raul', N'123 Main Ave', N'Chicago', N'IL', N'38433', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId]) VALUES (N'3cb88b1f-fe8e-4091-873d-f9e5efe931ad', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENzIDtpQd3GShWAo1VBSzzs24RG/5XLeUcCf59qo2426B8joOlM1zTjIgXvjU9yLqQ==', N'LSOK2NF53JUTSCZ4CDDFLZLCPU425TS7', N'f105b017-577d-48aa-af8a-9451eec36bb0', N'1110009999', 0, 1, CAST(N'2021-03-15T09:46:23.6394642+07:00' AS DateTimeOffset), 1, 0, N'ApplicationUser', N'Admin Larry', N'123 Main Ave', N'Chicago', N'IL', N'38433', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId]) VALUES (N'43abd582-5300-485d-bf5a-10b670181239', N'ben@gmail.com', N'BEN@GMAIL.COM', N'ben@gmail.com', N'BEN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAED/q36yDpbbg3eka3z+EJqctFtWFmiOsXikQxRxTDJQIxQsXiJRop2tbYCWo9xYmbQ==', N'X7VXK2GR3MFWV3YROQLWAMIQNF3HSEXG', N'553b31f9-1f1a-4076-8c30-2324e1b86fd0', N'1110009992', 0, 0, CAST(N'2021-05-01T22:07:53.8399034+07:00' AS DateTimeOffset), 1, 0, N'ApplicationUser', N'Ben', N'112 Main Street', N'Chicago', N'IL', N'38433', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId]) VALUES (N'4e986231-515c-4318-9451-e721fdec1d90', N'customer@gmail.com', N'CUSTOMER@GMAIL.COM', N'customer@gmail.com', N'CUSTOMER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAKi5IUeAtlarRW94imqdPEfsF7USzYivUgx8zCPLLzCb+clcxScEMHy5o9dPXGEGw==', N'XADGFM4ZELXTAYZVNTVY6R3BADKRVKPA', N'2cfbc1b0-06fa-456d-8a68-da7c43a10265', N'1110009988', 0, 0, CAST(N'2021-03-11T10:12:11.2079474+07:00' AS DateTimeOffset), 1, 0, N'ApplicationUser', N'Customer Jill', N'125 Cross St', N'Chicago', N'IL', N'38449', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId]) VALUES (N'92b0d95e-a5a1-4196-84d7-bfe659f3dcfc', N'authcomp@gmail.com', N'AUTHCOMP@GMAIL.COM', N'authcomp@gmail.com', N'AUTHCOMP@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC1eTnDva9wB3grz54Vwgpo/IPWUIDFI+OlEVwNAscbwu+1F1r46VB83FoPJYP7UNQ==', N'YAI6ESIZV3KIB4TUSC2VKCDPGT3HVT4X', N'c058f056-036a-4134-b1f3-8a828cf3cb6e', N'1230009999', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Authorized Sprak LLC', N'123 Main Ave', N'Chicago', N'IL', N'38433', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId]) VALUES (N'c119c8ff-c217-43b9-8776-6f0b0715c636', N'a@gmail.com', N'A@GMAIL.COM', N'a@gmail.com', N'A@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECekrVbbcvHms9qCnTdOhRld6oN5A727xmK10SZMHLS68nEmHUMNfABl5LFpJaadZA==', N'ROFJZGICC24ZV7QRGM3QSPUOYE5VBLJ5', N'8019fa2f-bc70-423c-b1c2-7b07bce10f82', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Nguyen A', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId]) VALUES (N'dd9865c4-fa23-42f6-8794-db9638e37054', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKKHodReqjVxrKVUWKIthqMzMt4bVdzD8ie2CTF+Z3qMrM4DA8r/5jyoo4qjgEuSng==', N'XGMBSS46HEQQYFOBNMLUTFBNWXV536IW', N'be1c84d8-ac43-45cb-8b40-b793a10df692', N'1110009995', 0, 0, CAST(N'2021-03-11T10:46:38.9286317+07:00' AS DateTimeOffset), 1, 0, N'ApplicationUser', N'Employee Laura', N'111 Main Street', N'Chicago', N'IL', N'38433', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId]) VALUES (N'f27df93a-3cbe-4d45-9d92-b49202ea94ec', N'tiqlmmo9@gmail.com', N'TIQLMMO9@GMAIL.COM', N'tiqlmmo9@gmail.com', N'TIQLMMO9@GMAIL.COM', 0, NULL, N'NB4F4W4XO6D52L3LFCFUQFIKLFUXUURB', N'839fdc54-75e7-4548-86e3-bae69db58550', N'44343464546', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Phuoc Nguyen', N'Blk-gp, Plot-a3, Salt Lake, Sech Bhawan', N'Kolkata', N'West Bengal', N'700091', NULL)
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'3cb88b1f-fe8e-4091-873d-f9e5efe931ad', N'[AspNetUserStore]', N'AuthenticatorKey', N'2EPRPLY7TKBCVPE52JWRMD3O5ZXVJF52')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'3cb88b1f-fe8e-4091-873d-f9e5efe931ad', N'[AspNetUserStore]', N'RecoveryCodes', N'a67d15cb;234e34f8;054e4108;93b39f45;808b0ce4;3ff29b24;1659c8f3;188c2d22;99eab89f;c1f96dc6')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'43abd582-5300-485d-bf5a-10b670181239', N'[AspNetUserStore]', N'AuthenticatorKey', N'FKUIO5QM4GI5YRKT3KI4GGHW3NJZBDQZ')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Face masks')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Wall Decor')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Vases')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Hats')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Clocks')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (1, N'Authorized Sprak LLC', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1230009998', 1)
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (2, N'Non Authorized Chicago Library', N'123 Cross St', N'Chicago', N'IL', N'38449', N'1230009999', 0)
SET IDENTITY_INSERT [dbo].[Companies] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (1, 1, 1, 60, 32.36)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2, 2, 1, 2, 35.62)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3, 3, 1, 10, 35.62)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4, 4, 1, 1, 35.62)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (5, 5, 1, 1, 35.62)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (6, 5, 2, 1, 18.24)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (7, 6, 2, 2, 18.24)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (8, 6, 1, 2, 35.62)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (9, 7, 1, 2, 35.62)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (10, 7, 2, 1, 18.24)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (11, 8, 7, 10, 36.99)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (12, 9, 1, 1, 35.62)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (13, 9, 4, 9, 15)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (14, 10, 7, 11, 36.99)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (15, 10, 5, 1, 11.49)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (16, 11, 7, 2, 36.99)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (17, 11, 5, 1, 11.49)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (18, 13, 7, 2, 36.99)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (19, 13, 5, 1, 11.49)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (20, 14, 7, 10, 36.99)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (21, 14, 5, 10, 11.49)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (22, 15, 7, 10, 36.99)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (1, N'3cb88b1f-fe8e-4091-873d-f9e5efe931ad', CAST(N'2021-05-01 15:41:24.3917454' AS DateTime2), CAST(N'2021-05-01 15:43:56.1964281' AS DateTime2), 1941.6, N'111323233132', N'UPS', N'Shipped', N'Approved', CAST(N'2021-05-01 15:41:28.7019919' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'txn_1ImENYEyH0xPtHz9zewdAUF7', N'Admin Larry', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1110009999')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (2, N'3cb88b1f-fe8e-4091-873d-f9e5efe931ad', CAST(N'2021-05-01 17:41:38.7533833' AS DateTime2), CAST(N'2021-05-01 17:42:02.6457499' AS DateTime2), 71.24, N'111323233132', N'UPS', N'Refunded', N'Refunded', CAST(N'2021-05-01 17:41:40.0834594' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1ImGFsEyH0xPtHz9EZNaePXO', N'Admin Larry', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1110009999')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (3, N'43abd582-5300-485d-bf5a-10b670181239', CAST(N'2021-05-01 23:03:45.3065964' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 356.2, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-05-01 23:03:49.7378498' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1ImLHcEyH0xPtHz9SrPleflC', N'Ben', N'112 Main Street', N'Chicago', N'IL', N'38433', N'1110009994')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (4, N'f27df93a-3cbe-4d45-9d92-b49202ea94ec', CAST(N'2021-05-01 23:21:44.5533258' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 35.62, NULL, NULL, N'Processing', N'Approved', CAST(N'2021-05-01 23:21:46.1384164' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1ImLYyEyH0xPtHz9Wf5c8w3x', N'Phuoc Nguyen', N'Blk-gp, Plot-a3, Salt Lake, Sech Bhawan', N'Kolkata', N'West Bengal', N'700091', N'44343464546')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (5, N'f27df93a-3cbe-4d45-9d92-b49202ea94ec', CAST(N'2021-05-01 23:44:15.0905721' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 18.24, NULL, NULL, N'Processing', N'Approved', CAST(N'2021-05-01 23:44:16.5616562' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1ImLulEyH0xPtHz9RZid7nks', N'Phuoc Nguyen', N'Blk-gp, Plot-a3, Salt Lake, Sech Bhawan', N'Kolkata', N'West Bengal', N'700091', N'44343464546')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (6, N'f27df93a-3cbe-4d45-9d92-b49202ea94ec', CAST(N'2021-05-02 00:02:06.1478330' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 71.24, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-05-02 00:02:07.9399355' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1ImMC2EyH0xPtHz9gyUD3IPP', N'Phuoc Nguyen', N'Blk-gp, Plot-a3, Salt Lake, Sech Bhawan', N'Kolkata', N'West Bengal', N'700091', N'44343464546')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (7, N'f27df93a-3cbe-4d45-9d92-b49202ea94ec', CAST(N'2021-05-02 00:08:22.9473847' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 18.24, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-05-02 00:08:24.5014736' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1ImMI7EyH0xPtHz9f7HpMnog', N'Phuoc Nguyen', N'Blk-gp, Plot-a3, Salt Lake, Sech Bhawan', N'Kolkata', N'West Bengal', N'700091', N'44343464546')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (8, N'92b0d95e-a5a1-4196-84d7-bfe659f3dcfc', CAST(N'2021-05-03 16:42:26.8971791' AS DateTime2), CAST(N'2021-05-03 16:45:24.3413283' AS DateTime2), 369.90000000000003, N'11132323313', N'UPS', N'Shipped', N'Approved', CAST(N'2021-05-03 16:57:19.0762088' AS DateTime2), CAST(N'2021-06-02 16:42:26.9811839' AS DateTime2), N'ch_1ImyVzEyH0xPtHz9Rk8CgmoH', N'Authorized Sprak LLC', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1230009999')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (9, N'43abd582-5300-485d-bf5a-10b670181239', CAST(N'2021-05-06 09:00:30.5518030' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 135, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-05-06 09:00:35.5210872' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1InwVEEyH0xPtHz90fHNC4os', N'Ben', N'112 Main Street', N'Chicago', N'IL', N'38433', N'1110009992')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (10, N'43abd582-5300-485d-bf5a-10b670181239', CAST(N'2021-05-06 09:31:44.9880146' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 11.49, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-05-06 09:31:49.0592474' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1InwzSEyH0xPtHz9uUPzW2L1', N'Ben', N'112 Main Street', N'Chicago', N'IL', N'38433', N'1110009992')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (11, N'26932c0a-9e53-4d78-855e-798abe0dec26', CAST(N'2021-05-07 17:18:16.0390257' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 11.49, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-05-07 17:18:20.0972578' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1IoQkSEyH0xPtHz9b5wDmQKj', N'Raul', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1230009995')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (12, N'26932c0a-9e53-4d78-855e-798abe0dec26', CAST(N'2021-05-07 17:40:43.6841066' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, NULL, NULL, N'Pending', N'Pending', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, N'Raul', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1230009995')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (13, N'26932c0a-9e53-4d78-855e-798abe0dec26', CAST(N'2021-05-07 17:45:03.7349806' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 85.47, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-05-07 17:45:08.0272261' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1IoRAOEyH0xPtHz9duYgIgtO', N'Raul', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1230009995')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (14, N'26932c0a-9e53-4d78-855e-798abe0dec26', CAST(N'2021-05-07 17:51:53.3434089' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 484.80000000000007, NULL, NULL, N'Approved', N'Approved', CAST(N'2021-05-07 17:51:57.3266367' AS DateTime2), CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'ch_1IoRGzEyH0xPtHz9t4Rrlcwq', N'Raul', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1230009995')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (15, N'92b0d95e-a5a1-4196-84d7-bfe659f3dcfc', CAST(N'2021-05-07 18:24:42.5040384' AS DateTime2), CAST(N'2021-05-07 19:04:21.6861199' AS DateTime2), 369.90000000000003, N'111323233135', N'UPS', N'Shipped', N'Approved', CAST(N'2021-05-07 19:15:06.2289856' AS DateTime2), CAST(N'2021-06-06 18:24:42.5180392' AS DateTime2), N'ch_1IoSZSEyH0xPtHz9mzx4iPfM', N'Authorized Sprak LLC', N'123 Main Ave', N'Chicago', N'IL', N'38433', N'1230009999')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (1, N'\images\products\3b39164c-0c9b-45fb-ae1e-ba13ab6ad5cd.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (2, N'\images\products\93d0506c-1b52-4979-a17b-37446ad081dd.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (3, N'\images\products\148231d5-8708-49ed-bc50-ad618979039e.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (4, N'\images\products\931fb0ea-b27e-416e-8e62-b9fd983f1e1a.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (5, N'\images\products\f7a3672a-1e5d-4096-bee1-426dfdf02f0d.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (6, N'\images\products\fe7e830f-bbbe-476a-9c00-dbc710c5792d.jpg', 1)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (16, N'\images\products\e521ffae-02f3-4eee-be8a-827a560e73c3.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (17, N'\images\products\5f44a857-3483-4dff-846b-32d291832ea9.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (18, N'\images\products\b3a06426-50dc-4912-99d8-64121e65c5c9.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (19, N'\images\products\c7377465-f564-4cf0-91cb-dd67967df468.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (24, N'\images\products\caa95d40-2acb-4cda-979d-711a3a919ffb.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (25, N'\images\products\fc3282c6-1602-46f0-b564-7f1f55e60b0a.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (26, N'\images\products\b79ac7f1-a35a-46b8-87ec-ba87b8e2bcdc.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (27, N'\images\products\015038c5-62fc-4483-9aba-4d13147ebb49.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (28, N'\images\products\4b838b7d-0226-4da0-b5cd-439415464de9.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (52, N'\images\products\17abae23-8bcb-4a9c-aaea-5c81dd29b1ad.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (53, N'\images\products\a4ca388a-db11-4448-b62f-50b972afea41.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (54, N'\images\products\6129b14f-42a9-44d8-8ced-3fe7450ef684.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (55, N'\images\products\cba87210-1a1e-4b1f-b5c9-c36e3857498c.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (56, N'\images\products\c861d3cc-3653-49ee-bfb3-95ab75212f5f.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (57, N'\images\products\1926aa63-34fb-452f-95a3-f29f52c85c1c.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (58, N'\images\products\8b52d8ee-5e2f-4afc-8712-15c9fe2ef8b2.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (59, N'\images\products\a3142536-10be-4f06-bf15-43bbd3e429b3.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (60, N'\images\products\acb086ec-8b74-4ac7-b532-68f8c8c8917f.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (61, N'\images\products\d1fb4998-32ed-41a2-8fcd-8a2ef3244075.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (62, N'\images\products\872f367c-037b-4f17-913e-7b26d7344002.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (63, N'\images\products\0537407d-f3f7-48f7-97c9-bae76b7f1e5b.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (64, N'\images\products\3412ea34-0027-4031-97c5-79ca5d68a506.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (65, N'\images\products\7116dbe8-397c-4d5f-9ab7-0d1380d19834.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (66, N'\images\products\82c71800-f5c0-4ba1-abf0-4af8f91ce36c.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (67, N'\images\products\caea6ca4-cf7f-40f5-aa17-41b66142add0.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (68, N'\images\products\e9fdee65-a6f6-474a-b815-4933ba2e36e3.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (69, N'\images\products\ba6b5223-ccfc-4b94-b648-01a19b73b458.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (70, N'\images\products\0027b226-c287-46db-858f-ff4ab8c1bdf3.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (71, N'\images\products\10e6bc86-b304-4e81-bb3e-e610b5c80523.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (72, N'\images\products\67b8af8a-6327-41bf-9873-f6f7b0a6c14c.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (73, N'\images\products\1c8e0af8-cd27-4307-b9f2-549fbe00493c.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (74, N'\images\products\1d36a02b-1dd6-49b3-ad09-b14cddfcc3c0.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (75, N'\images\products\3c7c52f2-3514-4c37-950e-d0f65eaa47b7.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (76, N'\images\products\470d7b89-df05-432a-9960-efaf1a716e40.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (77, N'\images\products\5a384e12-9f06-41a2-ba3e-38a6692c3fa8.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (78, N'\images\products\6d0c243a-9a01-4827-9b1c-344c7258ba91.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (79, N'\images\products\60c08f69-750f-45d6-9265-0c645d013631.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (80, N'\images\products\bb54beda-7189-401b-b4b5-6d8fe53bf2e9.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (81, N'\images\products\7c04297a-9cb7-47f2-8c29-56cc0f6b6f9e.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (82, N'\images\products\035ed29b-0f14-4c17-9a93-8552fc445e0f.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (83, N'\images\products\fe7f95aa-9e5a-4758-84fe-fd95d203064e.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (84, N'\images\products\cd465ade-4cb0-46b9-8c52-5429978b2c67.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (85, N'\images\products\b0387f52-68a5-47b8-9ecb-336d6e966cba.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (86, N'\images\products\9bbdca2d-a01b-40d8-995a-bb3d7e806155.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (87, N'\images\products\c5c22309-7009-424c-8da9-6ed94d1aaa5b.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (88, N'\images\products\bfc0a4ad-101e-44fc-9bf8-b226197127a3.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (89, N'\images\products\859ecb50-b7f8-4c93-8d18-fae0181dc67d.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (90, N'\images\products\ac209bdf-b914-4d43-ae7d-a146ea25e33a.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (91, N'\images\products\962cd948-427c-4b4b-bd1c-ee2b7e63b953.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (92, N'\images\products\806aa702-f121-4c38-8ea4-4fc7fa50713d.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (93, N'\images\products\e55007af-f0d3-4a1a-97de-28f737b19ee8.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (94, N'\images\products\ad2eaeb5-23e3-40ff-87ea-ca88d9bcbd89.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (95, N'\images\products\83538bd3-2c85-40fc-9cf7-2330860cb311.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (96, N'\images\products\f674d328-b38b-4420-bdc6-c9349d3383e1.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (97, N'\images\products\8fa3c2eb-ea0b-42ff-8762-69279965c91a.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (98, N'\images\products\a0ff479c-d6a0-453b-9914-ff8ca6fe70a5.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (99, N'\images\products\6ee1e022-93ea-4280-981c-aef394f14e8c.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (100, N'\images\products\8e1f87f2-ff84-40c8-871c-b1e0a6d62b55.jpg', 13)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (101, N'\images\products\8a1da4be-25a3-4aac-b518-08b08dbf0610.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (102, N'\images\products\21672084-77eb-4615-9e44-37e6f8e6fd5c.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (103, N'\images\products\5de188c8-badf-4ebb-b0ea-f5717c8ac6d6.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (104, N'\images\products\602dd9cb-7d45-404a-9a1a-6bd4a667c3f8.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (105, N'\images\products\15255ae7-b44f-40c5-961e-21e8869070cc.jpg', 14)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (106, N'\images\products\b25eb788-41b8-4fad-9056-d63631b2da7d.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (107, N'\images\products\6aaada25-6e23-4558-a5fa-fa2744cd5287.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (108, N'\images\products\1b54f75d-6bdc-43bb-be0e-dfcfb1a1d4ea.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (109, N'\images\products\05df913b-e8e5-4c12-ad9c-7afddd003168.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (110, N'\images\products\86229f8b-65a7-4aee-918b-c2b1c0c1b31b.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (111, N'\images\products\ee07b994-5cc4-4f35-be9e-1e3a55ea86c3.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (112, N'\images\products\e989e256-db12-495e-b559-305f264d8f4e.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (113, N'\images\products\7325c781-f709-45e5-965d-27c3499ead69.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (114, N'\images\products\1278df06-9d03-4c31-9a30-7aa9e9fb134b.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (115, N'\images\products\9fb30411-03d2-48e1-ba56-82a90de70bb1.jpg', 17)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (116, N'\images\products\896a639a-0301-4dd9-a1ff-35787ab9671f.jpg', 17)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (117, N'\images\products\69a44b94-f715-483d-baa5-1a4e0ecae643.jpg', 17)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (118, N'\images\products\ccfe228c-3a9b-45a0-8a71-28e07ad1d6f7.jpg', 17)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (119, N'\images\products\a5468947-6797-41c7-890b-37ae1469a8f0.jpg', 18)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (120, N'\images\products\7b25da88-7eca-40f0-b878-8e2cd6dcf09a.jpg', 18)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (121, N'\images\products\d793682d-fb1c-4452-a1ad-387553da7719.jpg', 18)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (122, N'\images\products\89426026-51c7-45d4-8024-96d3d2760191.jpg', 18)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (123, N'\images\products\3c166016-5269-4c16-b785-61622769ad2b.jpg', 19)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (124, N'\images\products\eadadb90-b52f-49a2-a464-02c0cde46574.jpg', 19)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (125, N'\images\products\0636b2b0-96ea-46c3-843f-f1bc4b8c5da9.jpg', 19)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (126, N'\images\products\673ee2a3-119a-4f6e-b997-237960f7b310.jpg', 19)
INSERT [dbo].[ProductImages] ([Id], [ImageUrl], [ProductId]) VALUES (127, N'\images\products\abea0d50-d2b2-47e5-b51b-5124ca91a8a0.jpg', 20)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (1, N'Snowflake face mask || Winter face covering Reversible adjustable 2 layer washable fitted mask', NULL, N'123456789', 40.63, 35.62, 32.36, 28.32, 1, 15)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (2, N'Custom Face Mask - (with your choice of 2,3,4 Layers) personalized, customized Face masks, embroidery face masks, with filter pocket', NULL, N'13243437545', 20.12, 18.24, 15.34, 12.31, 1, 11)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (3, N'Reusable Face Mask w/ Filters | Nose Guard | Adjustable Straps', NULL, N'13243437545', 30.33, 28.26, 25.16, 22.56, 1, 12)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (4, N'Cool Face Mask, Face Mask Washable, Large Mask with Ear Loops, Breathable Blue Cotton Mask, Green Mens'' Mask, Face Mask with Nose Wire', NULL, N'13243437546', 18, 15, 12, 10, 1, 23)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (5, N'Beautiful blue and white silk face mask that is designed to be protective, reusable, and add a pop of color for a trendy accessory', NULL, N'13243437547', 22.99, 11.49, 9.45, 7.36, 1, 25)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (6, N'Luxe Face Mask 2.0 - Madras Love', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Take our awesome, artist-created patterns, luxury fabrics and meticulous workmanship. Add everything we&rsquo;ve learned over many months of mask making and you&rsquo;ve got our Luxe Face Mask 2.0 &ndash; truly the Cadillac of face masks.</span></p>', N'13243437548', 30.21, 23.44, 20.45, 18.54, 1, 22)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (7, N'3+ Cotton Flannel Adult Mix-&-Match Sets + Filters, Face masks with Filter pocket, Reusable and washable, Made in USA, best seller', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Holiday Special!!</span><br style="margin: 0px; box-sizing: border-box; color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;" /><br style="margin: 0px; box-sizing: border-box; color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;" /><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Mix-&amp;-match sets are perfect for couples, friend groups, or colleagues, not to mention for individuals who like to keep it fresh on the daily. Just select the total quantity and then tell us what patterns/colors/size you want in the "Personalization" field!</span><br style="margin: 0px; box-sizing: border-box; color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;" /><br style="margin: 0px; box-sizing: border-box; color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;" /><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Please write:</span><br style="margin: 0px; box-sizing: border-box; color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;" /><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">1. Mask size (Original or Small)</span><br style="margin: 0px; box-sizing: border-box; color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;" /><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">2. Masks you want</span><br style="margin: 0px; box-sizing: border-box; color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;" /><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">3. filters</span></p>', N'13243437549', 59.64, 36.99, 31.52, 28.31, 1, 13)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (8, N'Set Of 2 Prints,Wall Decor,Coastal Print,Beach Print,Ocean Print,Beach Decor,Beach Wall Art,Sea Prints,Wall Art,Art Prints,Home Decor,Waves', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Ocean Shores Set Of 2 Printable Art #189</span></p>', N'13243437550', 25.41, 20.79, 18.75, 16.54, 2, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (9, N'Nana Gifts - Christmas Gifts for Nana, Nana Birthday Gift from Kids, PRINTABLE , Personalized Nana Handprint Art, Sign, From Grandkids', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">A wonderful gift for Nana. She''ll love this piece of DIY handprint art.</span></p>', N'13243437551', 26.5, 23.51, 20.64, 18.14, 2, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (10, N'Abstract Art Blue Wall Art Coastal Landscape Giclee Large PRINT on Canvas Large Gift for Friend Modern Home Decor Wall Art Painting', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">This is a FINE ART GICLEE PRINT</span></p>', N'13243437552', 28, 25.44, 22.46, 20.47, 2, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (11, N'Sailor Illustration Giclee Print Fisherman Portrait Drawing Sailor Beard Poster Fishermen Wall Art Decor Portrait Drawing Bedroom Wall Decor', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Sailor Giclee Print Fisherman Portrait Illustration Drawing Sailor Beard Pipe Poster Wall Art Decor Sailor Portrait</span></p>', N'13243437553', 24.5, 21.42, 18.47, 15.59, 2, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (12, N'Pineapple Print, Pineapple Wall Art Prints, Printable Kitchen Decor, Botanical Print, Tropical Watercolor Print, Printable Wall Art, Posters', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Pineapple print is a high quality instantly downloadable printable wall art. Decor your home, nursery or office in an affordable way! Print it and frame it - it''s really that easy!</span></p>', N'13243437555', 26.99, 24.89, 22.1, 20.2, 2, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (13, N'READY TO SHIP : White + Gold Minimalist Bud Vases // Set of Three', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">These small bud vases have been glazed with a glossy clear glaze to allow the properties of the white clay to shine through and then finished with handpainted gold leaf.</span></p>', N'13243437556', 40, 35.47, 32.45, 28.45, 3, 11)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (14, N'Mini Icosahedron Geometric Terrarium / Handmade Glass Succulent Planter / Rings Holder / Wedding Ring Box / Ring Bearer / Rings Glass Box', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Icosahedron is one of the most popular classic geometric solid forms because of it''s simplicity.</span><br style="margin: 0px; box-sizing: border-box; color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;" /><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Mini-Icosahedron minimalistic solid can be used for indoor succulent cultivation, wedding decor or as a candle holder.</span></p>', N'13243437558', 33, 28.47, 25.67, 22.41, 3, 13)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (15, N'Copper Pot for Plants / Ring Pot / Trinket Pot', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">A little solid 100% copper pot perfect for succulents or use to keep your rings or other trinkets. These pots come carefully packaged.</span></p>', N'13243437559', 15.96, 13.79, 10.46, 8.64, 3, 22)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (16, N'Beach fedora hat, straw hat, sun hats, hats for women, summer hats, womens hats, hat store, ladies hats, cool hats, straw hats,sun hat', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Hats for women, fedora hat, beach hat, straw hat, sun hat, buy online women fedora hats, sun hats, summer hats, beach hats, custom hats &amp; personalized hats for women.&nbsp;</span></p>', N'13243437560', 28, 22.4, 20.46, 17.63, 4, 15)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (17, N'Vintage Hat,summer Straw cap,Vacation lady hat,women hat,Honeymoon sun hat', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">- Natural Papyrus</span></p>', N'13243437561', 32, 27.2, 23.64, 21.56, 4, 23)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (18, N'STRAW HAT, Traditional hat, Summer Hat, Hats, Beach Hat, Sombreros, Straw hat women, handmade hats, strohhut, chapeau paille, stråhat', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">- The wide brim provides ample sun protection; perfect for any summer activity - beach, traveling, vacation;</span></p>', N'13243437563', 19.49, 15.63, 13.65, 10.54, 4, 12)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (19, N'Star Wars wall clock, Vinyl record clock with bright LED lights, Death Star clock, Star wars room decoration, Gift for fan', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Star Wars wall clock, Vinyl record clock with bright LED lights, Death Star clock, Star wars room decoration, Gift for fan</span></p>', N'13243437564', 60, 48, 41, 32, 5, 11)
INSERT [dbo].[Products] ([Id], [Title], [Description], [SKU], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [SupplierId]) VALUES (20, N'Funny wall clock funny clock wood clock', N'<p><span style="color: #222222; font-family: ''Graphik Webfont'', -apple-system, BlinkMacSystemFont, Roboto, ''Droid Sans'', ''Segoe UI'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Super fanny clock with John Cleese.</span></p>', N'13243437566', 24.99, 20.54, 18.35, 15.35, 5, 25)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (15, N'3cb88b1f-fe8e-4091-873d-f9e5efe931ad', 4, 3)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (16, N'3cb88b1f-fe8e-4091-873d-f9e5efe931ad', 1, 1)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (21, N'43abd582-5300-485d-bf5a-10b670181239', 7, 2)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (22, N'c119c8ff-c217-43b9-8776-6f0b0715c636', 7, 1)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (23, N'43abd582-5300-485d-bf5a-10b670181239', 5, 1)
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (2, N'CoastalStylePrints', N'83 Superior Lane', N'Mafra', N'Lisboa', N'2640-394', N'796-108-8883')
INSERT [dbo].[Suppliers] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (11, N'SunnuBunnu', N'6 Thackeray Crossing', N'São Roque', N'Ilha de São Miguel', N'9500-701', N'135-216-3108')
INSERT [dbo].[Suppliers] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (12, N'SidneyShanaeCompany', N'0 Kipling Street', N'Areeiro', N'Portalegre', N'7300-440', N'677-774-5549')
INSERT [dbo].[Suppliers] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (13, N'HanukDesign', N'3 Mallard Plaza', N'Roscoff', N'Bretagne', N'29688 CEDEX', N'656-603-6289')
INSERT [dbo].[Suppliers] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (15, N'ModernMasquerade', N'07754 Bluestem Alley', N'Munkfors', N'Värmland', N'684 91', N'626-399-2232')
INSERT [dbo].[Suppliers] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (22, N'RobotBunniesLLC', N'643 Utah Center', N'Kiel', N'Schleswig-Holstein', N'24118', N'401-655-2688')
INSERT [dbo].[Suppliers] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (23, N'ChloeandCoStudio', N'0346 Londonderry Junction', N'Nantes', N'Pays de la Loire', N'44933 CEDEX 9', N'350-742-1583')
INSERT [dbo].[Suppliers] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (25, N'SmartCarebyFran', N'5889 Sommers Park', N'Funchalinho', N'Setúbal', N'2825-106', N'723-152-1643')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Companies_CompanyId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Products_ProductId]
GO
/****** Object:  StoredProcedure [dbo].[usp_CreateSupplier]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CreateSupplier]
									@Name	nvarchar(MAX),
                                    @StreetAddress	nvarchar(MAX),
                                    @City	nvarchar(MAX),
                                    @State	nvarchar(MAX),
                                    @PostalCode	nvarchar(MAX),
                                    @PhoneNumber	nvarchar(MAX)
                                   AS 
                                   BEGIN 
                                    INSERT INTO dbo.Suppliers(Name, StreetAddress, City, State, PostalCode, PhoneNumber)
                                    VALUES (@Name, @StreetAddress, @City, @State, @PostalCode, @PhoneNumber)
                                   END

GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteSupplier]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_DeleteSupplier]
	                                @Id int
                                    AS 
                                    BEGIN 
                                     DELETE FROM dbo.Suppliers
                                     WHERE  Id = @Id
                                    END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetSupplier]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetSupplier] 
                                    @Id int 
                                    AS 
                                    BEGIN 
                                     SELECT * FROM   dbo.Suppliers  WHERE  (Id = @Id) 
                                    END 

GO
/****** Object:  StoredProcedure [dbo].[usp_GetSuppliers]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetSuppliers] 
                                    AS 
                                    BEGIN 
                                     SELECT * FROM   dbo.Suppliers 
                                    END

GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateSupplier]    Script Date: 5/9/2021 5:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UpdateSupplier]
	                                @Id int,
	                                @Name	nvarchar(MAX),
                                    @StreetAddress	nvarchar(MAX),
                                    @City	nvarchar(MAX),
                                    @State	nvarchar(MAX),
                                    @PostalCode	nvarchar(MAX),
                                    @PhoneNumber	nvarchar(MAX)
                                    AS 
                                    BEGIN 
                                     UPDATE dbo.Suppliers
                                     SET	Name = @Name,
                                            StreetAddress = @StreetAddress,
                                            City = @City,
                                            State = @State,
                                            PostalCode = @PostalCode,
                                            PhoneNumber = @PhoneNumber
                                     WHERE  Id = @Id
                                    END

GO
