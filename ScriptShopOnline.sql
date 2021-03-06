USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 09/17/2020 18:08:05 ******/
CREATE DATABASE [ShopOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShopOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShopOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShopOnline] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopOnline] SET QUERY_STORE = OFF
GO
USE [ShopOnline]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/17/2020 18:08:05 ******/
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
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[generalityName] [nvarchar](max) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chats]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chats](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[content] [nvarchar](max) NULL,
	[senderId] [uniqueidentifier] NOT NULL,
	[receiverId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_chats] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evaluations]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evaluations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rating] [int] NOT NULL,
	[title] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[productId] [int] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_evaluations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[images]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[urlImage] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
	[productId] [int] NULL,
 CONSTRAINT [PK_images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderDetails]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[unitPrice] [int] NOT NULL,
	[sale] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_orderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NOT NULL,
	[total] [int] NOT NULL,
	[note] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[street] [nvarchar](max) NULL,
	[feeShip] [int] NOT NULL,
	[deliveryDate] [datetime2](7) NOT NULL,
	[guess] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[createDate] [datetime2](7) NOT NULL,
	[userId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[importPrice] [int] NOT NULL,
	[price] [int] NOT NULL,
	[sale] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[rating] [int] NULL,
	[status] [int] NOT NULL,
	[size] [int] NULL,
	[color] [int] NULL,
	[amount] [int] NOT NULL,
	[viewCount] [int] NOT NULL,
	[categoryId] [int] NULL,
	[providerId] [int] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[providers]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[providers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_providers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[replies]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[replies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[evaluationId] [int] NOT NULL,
 CONSTRAINT [PK_replies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/17/2020 18:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
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
	[displayname] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[avatar] [nvarchar](max) NULL,
	[gender] [bit] NOT NULL,
	[birthDay] [datetime2](7) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200810040834_init', N'3.1.3')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'02cdf130-638b-48a0-713e-08d83ce6613a', N'6d9186ba-2cd6-4b6c-b729-4e605de1019f')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'ce081103-0400-4575-bb92-08d83cf4381f', N'6d9186ba-2cd6-4b6c-b729-4e605de1019f')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'a08b625d-3287-4537-69ff-08d83cfc2cd2', N'6d9186ba-2cd6-4b6c-b729-4e605de1019f')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'078269d8-1a12-4592-b92e-7ff1a876a5f2')
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (1, N'Quần áo', N'Áo Sơ Mi Nam', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (2, N'Quần áo', N'Quần Tây', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (3, N'Quần áo', N'Áo Thun Nam ', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (4, N'Quần áo', N'Quần Kaki', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (5, N'Quần áo', N'Váy', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (6, N'Quần áo', N'Đồ Thể Thao', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (7, N'Giày dép', N'Giày Thể Thao', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (8, N'Giày dép', N'Giày Tây', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (9, N'Giày dép', N'Giày Cao Gót', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (10, N'Giày dép', N'Sandal', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (11, N'Mũ nón', N'Nón Nam', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (12, N'Mũ nón', N'Nón Nữ', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (13, N'Phụ kiện thời trang', N'Thắt Lưng', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (14, N'Quần áo', N'Áo Khoát', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (15, N'Quần áo', N'Đồ Vest', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (16, N'Quần áo', N'Áo Sơ Mi Nữ', 0)
INSERT [dbo].[categories] ([id], [generalityName], [name], [status]) VALUES (17, N'Quần áo', N'Áo Thun Nữ', 0)
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[chats] ON 

INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (1, CAST(N'2020-08-10T11:33:10.9274276' AS DateTime2), N'admin oi', N'02cdf130-638b-48a0-713e-08d83ce6613a', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (2, CAST(N'2020-08-10T11:33:17.8061716' AS DateTime2), N'chao ban', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (3, CAST(N'2020-08-10T11:33:42.6783678' AS DateTime2), N'chao ban ne', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (4, CAST(N'2020-08-10T11:33:59.1940573' AS DateTime2), N'hihi', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (5, CAST(N'2020-08-10T11:34:20.2941001' AS DateTime2), N'c^^ậu e', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (6, CAST(N'2020-08-10T11:34:39.1661630' AS DateTime2), N'n``ay', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (7, CAST(N'2020-08-10T11:35:07.0268303' AS DateTime2), N'chat lai ne', N'02cdf130-638b-48a0-713e-08d83ce6613a', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (8, CAST(N'2020-08-10T11:35:27.1457435' AS DateTime2), N'chat', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (9, CAST(N'2020-08-10T11:35:52.6149345' AS DateTime2), N'hi', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (10, CAST(N'2020-08-10T11:42:23.6627201' AS DateTime2), N'thiên ơi', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[chats] ([id], [createDate], [content], [senderId], [receiverId]) VALUES (11, CAST(N'2020-08-10T11:42:45.7746069' AS DateTime2), N'có gì ko', N'02cdf130-638b-48a0-713e-08d83ce6613a', N'4557893f-1f56-4b6f-bb3b-caefd62c8c49')
SET IDENTITY_INSERT [dbo].[chats] OFF
SET IDENTITY_INSERT [dbo].[evaluations] ON 

INSERT [dbo].[evaluations] ([id], [rating], [title], [content], [status], [createDate], [productId], [userId]) VALUES (2, 1, N'Sản phẩm chất lượng tốt.', N'Mình đã mua và mặc thấy sản phẩm chất lượng, thoáng mát', 2, CAST(N'2020-08-10T15:13:01.2443410' AS DateTime2), 1, N'ce081103-0400-4575-bb92-08d83cf4381f')
INSERT [dbo].[evaluations] ([id], [rating], [title], [content], [status], [createDate], [productId], [userId]) VALUES (3, 5, N'Sản phẩm chất lượng tốt.', N'Minh đã sử dụng và thấy sản phẩm rất tốt', 0, CAST(N'2020-08-10T15:16:44.8269948' AS DateTime2), 1, N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[evaluations] ([id], [rating], [title], [content], [status], [createDate], [productId], [userId]) VALUES (4, 4, N'Hàng tốt', N'Hang', 1, CAST(N'2020-08-10T16:07:48.5403983' AS DateTime2), 1, N'02cdf130-638b-48a0-713e-08d83ce6613a')
SET IDENTITY_INSERT [dbo].[evaluations] OFF
SET IDENTITY_INSERT [dbo].[images] ON 

INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (1, N'https://localhost:5001/MyImages/b2cc1b37-98ed-42a2-95e8-df2648dc101d.jpg', 1, 1)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (2, N'https://localhost:5001/MyImages/08088c80-5053-4cb7-9cd0-1d881b0066cb.jpg', 1, 1)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (3, N'https://localhost:5001/MyImages/48edf40f-c44c-44d6-ac07-351622c8abcd.jpg', 1, 1)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (4, N'https://localhost:5001/MyImages/1a2823e7-616f-428e-80b1-c8e54fc8a28e.png', 1, 2)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (5, N'https://localhost:5001/MyImages/2f42eb01-381d-444c-a6c8-5cb4aab998a5.jpg', 1, 2)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (6, N'https://localhost:5001/MyImages/8d479310-9e63-41e2-9916-e413394b69e1.jpg', 1, 3)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (7, N'https://localhost:5001/MyImages/5118e519-7f73-4934-8456-d8939768a56c.jpg', 1, 3)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (8, N'https://localhost:5001/MyImages/fb8d6951-2ff6-4a22-a3d3-eba44be0227b.jpg', 1, 4)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (9, N'https://localhost:5001/MyImages/6591e726-cc25-40a8-b497-d79778852275.jpg', 1, 4)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (10, N'https://localhost:5001/MyImages/29078829-ce10-402b-9e7b-8504dc1dd736.jpg', 1, 5)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (11, N'https://localhost:5001/MyImages/03190a7f-b989-484e-9cec-72fcbccf2899.jpg', 1, 5)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (12, N'https://localhost:5001/MyImages/472a1249-73ec-4ac9-a6a7-ebfef81d10ca.jpg', 0, 6)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (13, N'https://localhost:5001/MyImages/fae01ff4-ba76-4e1f-8ead-0c45d90c85cd.jpg', 0, 6)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (14, N'https://localhost:5001/MyImages/fe0bb158-94cd-4bef-8e5c-caa6aa729ccc.jpg', 0, 6)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (15, N'https://localhost:5001/MyImages/ebc09e1e-c295-47b5-ba57-b8e3a3ce93cc.jpg', 0, 7)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (16, N'https://localhost:5001/MyImages/f5b7e5e2-e0f0-47cd-b9d5-66785863bbfb.jpg', 0, 7)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (17, N'https://localhost:5001/MyImages/a44dbfb0-eaf6-4256-8b00-f032439bde92.jpg', 0, 7)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (18, N'https://localhost:5001/MyImages/8da7d9ee-b57e-4ae9-ba31-3f4083039f34.jpg', 0, 8)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (19, N'https://localhost:5001/MyImages/bc94f89f-af4c-4cf8-a0d6-20f6a7056c6f.jpg', 0, 8)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (20, N'https://localhost:5001/MyImages/f5210957-87a4-416d-bbc7-bc29ab077f05.png', 0, 8)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (21, N'https://localhost:5001/MyImages/f21febbc-7b4b-4d44-bc35-89211c6f8578.jpg', 0, 9)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (22, N'https://localhost:5001/MyImages/6a30063c-a84d-4bfc-a5f6-379e32be042f.jpg', 0, 9)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (23, N'https://localhost:5001/MyImages/cfb97cad-0a09-45a6-a5e0-46b32c911ca7.jpg', 0, 9)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (24, N'https://localhost:5001/MyImages/8ff31531-4805-49de-b2d3-507a7b22239e.png', 0, 2)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (25, N'https://localhost:5001/MyImages/d82abf8c-b124-441c-a395-5fbb2862e67d.jpg', 1, 2)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (26, N'https://localhost:5001/MyImages/fa9aa5e9-ad30-46ed-8612-516df606d127.jpg', 0, 1)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (27, N'https://localhost:5001/MyImages/bf7b5ba5-8a3f-4a90-9dc1-b4255ea410c5.jpg', 0, 1)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (28, N'https://localhost:5001/MyImages/4408fa8f-73d3-41b6-a1f4-e5950b1e1597.jpg', 0, 1)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (29, N'https://localhost:5001/MyImages/330bbc3e-5d39-47d8-a597-e8f60adc220b.jpg', 0, 3)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (30, N'https://localhost:5001/MyImages/d4e9a465-37af-47b0-97a9-1e97c7859ef4.jpg', 0, 3)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (31, N'https://localhost:5001/MyImages/146ba552-502c-4648-b4d3-1c75e1f4b5b7.jpg', 0, 4)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (32, N'https://localhost:5001/MyImages/13b9508a-d403-4f23-aa74-f2dc31e58ab0.jpg', 1, 4)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (33, N'https://localhost:5001/MyImages/5fe2260d-e3b7-4ccd-a5b1-904d05c7bf13.jpg', 0, 5)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (34, N'https://localhost:5001/MyImages/a805f0f4-477e-4d61-9db0-2f0596a0b973.jpg', 0, 5)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (35, N'https://localhost:5001/MyImages/e24fb92d-9ab7-4573-a216-55c45baac855.jpg', 0, 10)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (36, N'https://localhost:5001/MyImages/423e9df0-b455-4240-a841-b3e4707ae0ed.jpg', 0, 10)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (37, N'https://localhost:5001/MyImages/8be92d23-ae15-4147-9b65-a89113bfdf11.jpg', 0, 10)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (38, N'https://localhost:5001/MyImages/f2bd1b13-e466-4326-92df-0a28033da2fa.jpg', 0, 11)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (39, N'https://localhost:5001/MyImages/49444bb7-ba55-4972-9826-34ce767e2eb3.jpg', 0, 11)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (40, N'https://localhost:5001/MyImages/a2e4739e-c40a-49a3-a8cb-a9e73f799671.jpg', 0, 11)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (41, N'https://localhost:5001/MyImages/78697049-f499-462a-9b16-ada4def61416.jpg', 0, 12)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (42, N'https://localhost:5001/MyImages/883038e4-1979-417b-a8c3-6481001bc4b1.jpg', 0, 12)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (43, N'https://localhost:5001/MyImages/4c536e03-c292-4bd0-aed4-52903a803b03.jpg', 0, 12)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (44, N'https://localhost:5001/MyImages/da677dbf-1ae0-444f-bcc3-b7b386d1f3e8.jpg', 0, 13)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (45, N'https://localhost:5001/MyImages/acb41833-04e0-4cab-9f1a-0109d4899bb1.jpg', 0, 13)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (46, N'https://localhost:5001/MyImages/9be4a287-1408-44c8-a96c-6b984be7b936.jpg', 0, 13)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (47, N'https://localhost:5001/MyImages/bba33f79-2e59-4bbf-86f0-dc5374932722.jpg', 0, 14)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (48, N'https://localhost:5001/MyImages/737f8a5b-fc36-4d3e-aa6f-b34c85d213a2.jpg', 0, 14)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (49, N'https://localhost:5001/MyImages/c46c0a63-0902-44e3-b923-3fbd2ed0a989.jpg', 0, 15)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (50, N'https://localhost:5001/MyImages/f403154e-3e6e-41e4-b6cc-912bfc32ab0a.jpg', 0, 15)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (51, N'https://localhost:5001/MyImages/1d4ea095-ebd0-4ab2-94dc-1d7250594147.jpg', 0, 15)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (52, N'https://localhost:5001/MyImages/84b26f9f-64a6-4082-a63e-d12a3b98a69e.jpg', 0, 16)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (53, N'https://localhost:5001/MyImages/d9a7a887-8bb8-4879-ad0f-b31672f6f698.jpg', 0, 16)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (54, N'https://localhost:5001/MyImages/e00dc58a-1805-41bd-8637-67eb18f33ffc.jpg', 0, 16)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (55, N'https://localhost:5001/MyImages/ea536992-665b-4ba7-a4c9-782208b85865.jpg', 0, 17)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (56, N'https://localhost:5001/MyImages/a6097acf-047f-42ed-9437-ffac95a09ce3.jpg', 0, 17)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (57, N'https://localhost:5001/MyImages/6072518f-377c-4fe7-8ef7-e7f8f2b92986.jpg', 0, 17)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (58, N'https://localhost:5001/MyImages/3b431a42-efbc-4f4e-91b5-0d458c48d22b.jpg', 0, 18)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (59, N'https://localhost:5001/MyImages/be91dd5e-f993-4514-83d3-66cf400529b7.png', 0, 18)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (60, N'https://localhost:5001/MyImages/4fb8a086-734a-40c1-9911-aa0cb7fe8547.jpg', 0, 18)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (61, N'https://localhost:5001/MyImages/a3ad8341-a66f-47ff-b6c2-dbe5b7021e6c.jpg', 0, 19)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (62, N'https://localhost:5001/MyImages/e6e885bf-7f32-4417-87a2-0871f4631c94.jpg', 0, 19)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (63, N'https://localhost:5001/MyImages/a19850a5-940e-4173-bddd-33fd0ef305db.jpg', 0, 19)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (64, N'https://localhost:5001/MyImages/634b1d45-b182-4410-a829-cba946133653.jpg', 0, 20)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (65, N'https://localhost:5001/MyImages/690369bc-02cf-4319-a090-d8f7ddd7f382.jpg', 0, 20)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (66, N'https://localhost:5001/MyImages/4bba5154-a5fb-4d2e-ba2f-542d83dd5a5c.jpg', 0, 21)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (67, N'https://localhost:5001/MyImages/e8f73fde-fabb-4ecb-b096-bb68190db212.jpg', 0, 21)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (68, N'https://localhost:5001/MyImages/038448b3-1174-4d29-a72b-862c37155889.jpg', 0, 22)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (69, N'https://localhost:5001/MyImages/24f80ad4-dd7a-406a-94e8-c8b1fbaec22a.jpg', 0, 22)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (70, N'https://localhost:5001/MyImages/ac3eebbe-f0bc-421f-83da-f9d26129ea60.jpg', 0, 23)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (71, N'https://localhost:5001/MyImages/d47acee6-0029-47cd-b958-88226d712365.jpg', 0, 23)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (72, N'https://localhost:5001/MyImages/dc9be8ba-329d-439b-94a5-4369d2dc7b18.jpg', 0, 23)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (73, N'https://localhost:5001/MyImages/cd25e897-2ce1-4b44-a9f8-ae9c52da4da2.jpg', 0, 24)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (74, N'https://localhost:5001/MyImages/c7fab65f-f858-4e46-93e3-6e913aaace4f.jpg', 0, 24)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (75, N'https://localhost:5001/MyImages/b09715dd-6a43-42b1-b683-75c0dce42109.jpg', 0, 25)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (76, N'https://localhost:5001/MyImages/eaeabcee-7aee-467e-89bc-d00872724617.jpg', 0, 25)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (77, N'https://localhost:5001/MyImages/d57d3788-1417-44dd-9523-1108d9975146.jpg', 0, 26)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (78, N'https://localhost:5001/MyImages/39f52a94-5f05-49b7-b1c5-d58705ff735a.jpg', 0, 26)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (79, N'https://localhost:5001/MyImages/91ea1f23-e435-4343-8bd3-262b3c40dc35.jpg', 0, 1)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (80, N'https://localhost:5001/MyImages/5fe616d0-cbfc-4ef4-afe1-f91664257cc5.webp', 0, 1)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (81, N'https://localhost:5001/MyImages/85818b67-31f9-456f-9431-62fb5ca82cf1.jpg', 0, 2)
INSERT [dbo].[images] ([id], [urlImage], [status], [productId]) VALUES (82, N'https://localhost:5001/MyImages/a9dc91ce-6dd5-43f2-aaf1-674270fdc324.jpg', 0, 4)
SET IDENTITY_INSERT [dbo].[images] OFF
SET IDENTITY_INSERT [dbo].[orderDetails] ON 

INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (1, 1, 150000, 0, 1, 1)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (2, 1, 290000, 0, 3, 1)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (3, 1, 450000, 0, 6, 1)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (4, 1, 190000, 0, 14, 2)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (5, 1, 220000, 0, 15, 2)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (6, 1, 300000, 0, 9, 2)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (7, 1, 250000, 0, 12, 2)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (8, 1, 290000, 0, 3, 3)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (9, 1, 95000, 0, 4, 3)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (10, 1, 450000, 0, 6, 4)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (11, 1, 300000, 0, 7, 4)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (12, 1, 300000, 0, 22, 5)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (13, 1, 500000, 0, 21, 5)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (14, 1, 150000, 0, 1, 6)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (15, 1, 120000, 0, 2, 6)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (16, 1, 120000, 0, 2, 7)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (17, 1, 450000, 0, 6, 8)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (18, 1, 300000, 0, 7, 8)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (19, 1, 350000, 0, 8, 9)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (20, 1, 300000, 0, 7, 9)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (21, 1, 300000, 0, 10, 10)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (22, 1, 450000, 5, 11, 10)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (23, 1, 190000, 0, 14, 10)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (24, 1, 95000, 0, 4, 11)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (25, 1, 450000, 0, 18, 11)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (26, 1, 290000, 0, 3, 12)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (27, 1, 450000, 0, 26, 12)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (28, 1, 450000, 0, 6, 13)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (29, 1, 290000, 0, 5, 13)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (30, 2, 500000, 0, 21, 14)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (31, 1, 450000, 0, 25, 15)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (32, 1, 120000, 0, 2, 15)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (33, 1, 300000, 0, 22, 16)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (34, 1, 599000, 0, 23, 16)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (35, 1, 450000, 0, 24, 16)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (36, 1, 450000, 0, 26, 17)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (37, 1, 120000, 0, 2, 17)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (38, 1, 290000, 0, 3, 18)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (39, 1, 120000, 0, 2, 18)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (40, 1, 350000, 0, 8, 19)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (41, 1, 450000, 0, 6, 19)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (42, 1, 350000, 0, 8, 20)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (43, 1, 290000, 0, 5, 20)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (44, 1, 300000, 0, 7, 21)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (45, 1, 120000, 0, 2, 21)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (46, 1, 450000, 0, 18, 22)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (47, 1, 890000, 0, 17, 22)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (48, 1, 450000, 0, 26, 23)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (49, 1, 599000, 0, 23, 23)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (50, 1, 300000, 0, 22, 24)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (51, 1, 450000, 0, 18, 24)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (52, 1, 500000, 5, 20, 25)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (53, 1, 450000, 0, 24, 25)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (54, 1, 190000, 0, 14, 26)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (55, 1, 220000, 0, 15, 26)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (56, 1, 95000, 0, 4, 27)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (57, 1, 120000, 0, 2, 27)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (58, 1, 450000, 0, 6, 28)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (59, 1, 350000, 0, 8, 28)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (60, 1, 290000, 0, 3, 29)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (61, 1, 95000, 0, 4, 30)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (62, 2, 290000, 0, 3, 31)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (63, 1, 450000, 0, 6, 32)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (64, 1, 290000, 0, 5, 32)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (65, 1, 150000, 0, 1, 33)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (66, 1, 120000, 0, 2, 34)
INSERT [dbo].[orderDetails] ([id], [quantity], [unitPrice], [sale], [productId], [orderId]) VALUES (67, 2, 120000, 0, 2, 35)
SET IDENTITY_INSERT [dbo].[orderDetails] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (1, 1, 930000, N'Không', N'Thủ Đức', N'17', 40000, CAST(N'2020-08-13T13:14:25.0623957' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-01T13:14:25.0618463' AS DateTime2), N'ce081103-0400-4575-bb92-08d83cf4381f')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (2, 2, 1000000, N'Không', N'Bình Thạnh', N'11', 40000, CAST(N'2020-08-13T13:15:02.8926632' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-02T13:15:02.8926519' AS DateTime2), N'ce081103-0400-4575-bb92-08d83cf4381f')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (3, 1, 425000, N'Không', N'Quận 5', N'D2', 40000, CAST(N'2020-08-13T13:15:34.9313072' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-02T13:15:34.9312977' AS DateTime2), N'ce081103-0400-4575-bb92-08d83cf4381f')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (4, 0, 790000, N'K', N'Quận 1', N'08', 40000, CAST(N'2020-08-13T13:16:15.1446042' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-03T13:16:15.1445943' AS DateTime2), N'ce081103-0400-4575-bb92-08d83cf4381f')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (5, 0, 840000, N'K', N'Thủ Đức', N'D2', 40000, CAST(N'2020-08-13T13:16:50.3867516' AS DateTime2), NULL, N'0987778665', N'thienvovan0112@gmail.com', CAST(N'2020-08-04T13:16:50.3867418' AS DateTime2), N'ce081103-0400-4575-bb92-08d83cf4381f')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (6, 0, 310000, N'K', N'Thủ Đức', N'17', 40000, CAST(N'2020-08-13T13:25:08.8002434' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-05T13:25:08.8002349' AS DateTime2), N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (7, 0, 160000, N'k', N'Bình Thạnh', N'17', 40000, CAST(N'2020-08-13T13:34:25.2641444' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-06T13:34:25.2641340' AS DateTime2), N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (8, 0, 790000, N'Không', N'Quận 5', N'17', 40000, CAST(N'2020-08-13T14:06:13.7836901' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-06T14:06:13.7823437' AS DateTime2), N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (9, 0, 690000, N'Không', N'Bình Thạnh', N'D2', 40000, CAST(N'2020-08-13T14:06:42.9339550' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-06T14:06:42.9339447' AS DateTime2), N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (10, 0, 957500, N'Không', N'Quận 9', N'11', 40000, CAST(N'2020-08-13T14:07:17.7441308' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-07T14:07:17.7441213' AS DateTime2), N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (11, 0, 585000, N'Không', N'Bình Thạnh', N'11', 40000, CAST(N'2020-08-13T14:07:52.4401030' AS DateTime2), NULL, N'0987778665', N'thienvovan0112@gmail.com', CAST(N'2020-08-08T14:07:52.4400923' AS DateTime2), N'02cdf130-638b-48a0-713e-08d83ce6613a')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (12, 0, 780000, N'Không', N'Bình Thạnh', N'11', 40000, CAST(N'2020-08-13T14:10:00.5171414' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-08T14:10:00.5171335' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (13, 0, 780000, N'Không', N'Quận 1', N'17', 40000, CAST(N'2020-08-13T14:10:18.3866426' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-09T14:10:18.3866345' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (14, 0, 1040000, N'Không', N'Quận 9', N'Nguyễn Văn Cừ', 40000, CAST(N'2020-08-13T14:10:41.6265795' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-10T14:10:41.6265740' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (15, 3, 610000, N'Không', N'Quận 1', N'08', 40000, CAST(N'2020-08-13T14:11:02.3988852' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-10T14:11:02.3988776' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (16, 0, 1389000, N'Không', N'Quận 9', N'D2', 40000, CAST(N'2020-08-13T14:11:23.3206557' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-10T14:11:23.3206473' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (17, 2, 610000, N'Không', N'Quận 1', N'08', 40000, CAST(N'2020-08-13T14:11:44.0772104' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-10T14:11:44.0772033' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (18, 3, 450000, N'không', N'Quận 1', N'08', 40000, CAST(N'2020-08-13T14:12:24.4840346' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-10T14:12:24.4840289' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (19, 2, 840000, N'Không', N'Bình Thạnh', N'D2', 40000, CAST(N'2020-08-13T14:12:44.1939454' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-10T14:12:44.1939363' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (20, 0, 680000, N'Không', N'Quận 1', N'11', 40000, CAST(N'2020-08-13T14:13:03.3046612' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-10T14:13:03.3046544' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (21, 2, 460000, N'Không', N'Quận 9', N'17', 40000, CAST(N'2020-08-13T14:13:35.7664611' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-09T14:13:35.7664423' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (22, 0, 1380000, N'Không', N'Quận 1', N'11', 40000, CAST(N'2020-08-13T14:13:54.7462776' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-15T14:13:54.7462741' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (23, 0, 1089000, N'Không', N'Quận 1', N'D2', 40000, CAST(N'2020-08-13T14:14:22.3374871' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-17T14:14:22.3374846' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (24, 0, 790000, N'Không', N'Quận 5', N'Nguyễn Văn Cừ', 40000, CAST(N'2020-08-13T14:14:55.6548195' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-19T14:14:55.6548159' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (25, 0, 965000, N'Không', N'Bình Thạnh', N'08', 40000, CAST(N'2020-08-13T14:15:22.9663823' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-22T14:15:22.9663796' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (26, 0, 450000, N'Không', N'Quận 9', N'11', 40000, CAST(N'2020-08-13T14:15:43.0750446' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-22T14:15:43.0750418' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (27, 0, 255000, N'Không', N'Quận 10', N'D2', 40000, CAST(N'2020-08-13T14:16:09.2309365' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-23T14:16:09.2309342' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (28, 0, 840000, N'Không', N'Bình Thạnh', N'11', 40000, CAST(N'2020-08-13T14:16:26.3026888' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-23T14:16:26.3026868' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (29, 2, 330000, N'Không', N'Quận 10', N'11', 40000, CAST(N'2020-08-13T14:16:41.9459829' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-07-24T14:16:41.9459797' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (30, 0, 135000, N'Không', N'Quận 1', N'11', 40000, CAST(N'2020-08-13T14:17:05.5343108' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-10T14:17:05.5343075' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (31, 0, 620000, N'Không', N'Thủ Đức', N'11', 40000, CAST(N'2020-08-13T14:17:16.3839299' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-10T14:17:16.3839268' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (32, 0, 780000, N'Không', N'Quận 9', N'17', 40000, CAST(N'2020-08-13T14:17:32.5171004' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-10T14:17:32.5170976' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (33, 0, 190000, N'Không', N'Bình Thạnh', N'17', 40000, CAST(N'2020-08-13T14:59:45.7586765' AS DateTime2), NULL, N'0982778778', N'vovanthien0112@gmail.com', CAST(N'2020-08-10T14:59:45.7581877' AS DateTime2), N'a08b625d-3287-4537-69ff-08d83cfc2cd2')
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (34, 2, 160000, N'Không', N'Bình Thạnh', N'17', 40000, CAST(N'2020-08-13T15:15:23.8674404' AS DateTime2), N'Nguyen Huu Thien', N'0982778778', N'thiennguyen.it.ute@gmail.com', CAST(N'2020-08-10T15:15:23.8674307' AS DateTime2), NULL)
INSERT [dbo].[orders] ([id], [status], [total], [note], [address], [street], [feeShip], [deliveryDate], [guess], [phone], [email], [createDate], [userId]) VALUES (35, 0, 280000, N'ffff', N'Bình Thạnh', N'17', 40000, CAST(N'2020-08-13T16:08:07.8175850' AS DateTime2), NULL, N'0982778778', N'thienvovan0112@gmail.com', CAST(N'2020-08-10T16:08:07.8167017' AS DateTime2), N'02cdf130-638b-48a0-713e-08d83ce6613a')
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (1, N'Áo Sơ Mi Nam KOJIBA', 100000, 150000, 0, N'Chất liệu vải thoáng mát;Sang trọng quý phái;Sản xuất theo công nghệ của  Nhật Bản', 5, 0, 2, 1, 0, 30, 1, 1)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (2, N'Áo Sơ Mi Tay Ngắn', 80000, 120000, 0, N'Chất liệu vải mịn, thoáng mát;Mang phong cách thanh lịch, quý phái', NULL, 0, 0, 2, 48, 4, 1, 2)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (3, N'Quần Tây Nam Thời Trang', 200000, 290000, 0, N'Chất liệu vải láng, min;Mang lại cảm giác thoáng mát, dễ chiụ', 0, 0, 2, 1, 49, 0, 2, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (4, N'Áo Thun Tay Ngắn', 50000, 95000, 0, N'Chất liệu vải mịn, thoáng mát', 0, 0, 2, 1, 5, 0, 3, 4)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (5, N'Quần Kaki Nam', 180000, 290000, 0, N'Sản phẩm mang phong cách thanh lịch.;Chất liệu vải tốt, đẹp', 0, 0, 2, 0, 50, 0, 4, 5)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (6, N'Áo Sơ Mi Lụa', 300000, 450000, 0, N'Chất liệu vải thoáng mát;Thiết kế độc đáo', 5, 0, 1, 0, 105, 0, 16, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (7, N'Áo Sơ Mi Nữ K4F', 200000, 300000, 0, N'Phong cách thiết kế sang trọng;Chất liệu vải sáng mịn', 5, 0, 2, 0, 20, 0, 16, 2)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (8, N'Áo Sơ Mi Nữ 2005V', 200000, 350000, 0, N'Thiết kế sang trọng, quý phái.;Màu sắc sinh động.;Chất liệu vải thoáng mát.', 5, 0, 2, 0, 50, 0, 16, 4)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (9, N'Áo Thun Nam Tay Dài', 200000, 300000, 0, N'Chất liệu vải mịn, thoáng mát.;Màu sắc sinh động.', 5, 0, 2, 0, 9, 0, 3, 5)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (10, N'Chân Váy Ngắn Xòe', 200000, 300000, 0, N'Thiết kế sang trọng, quý phái.;Màu sắc sinh động.;Chất liệu vải thoáng mát.', 5, 0, 1, 0, 50, 0, 5, 1)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (11, N'Chân Váy Ôm Công Sở', 200000, 450000, 5, N'Thiết kế sang trọng, quý phái.;Chất liệu vải mịn, thoáng mát.', 5, 0, 2, 0, 120, 0, 5, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (12, N'Dép Sandal 3 Quai', 150000, 250000, 0, N'Thiết kế đơn giản, gọn.;Mang lại cảm giác thoải mái khi mang.', 5, 0, 40, 1, 50, 0, 10, 1)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (13, N'Đồ Thể Thao ADIDAS', 150000, 220000, 0, N'Chất liệu vải mịn, thoáng mát.;Màu sắc sinh động.;', 5, 0, 2, 0, 50, 0, 6, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (14, N'Đồ Thể Thao Nam Nike In', 100000, 190000, 0, N'Màu sắc sinh động.;Chất liệu vải thoáng mát.', 5, 0, 2, 0, 50, 0, 6, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (15, N'Đồ Thể Thao Nữ Form Rộng', 150000, 220000, 0, N'Thiết kế đơn giản, gọn;Màu sắc sinh động.;Chất liệu vải thoáng mát.', 5, 0, 2, 0, 50, 0, 6, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (16, N'Đồ Thể Thao Nữ', 200000, 290000, 0, N'Thiết kế đơn giản, gọn.;Màu sắc sinh động.', 5, 0, 2, 0, 50, 0, 6, 4)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (17, N'Đồ Vest Thời Trang 2020', 690000, 890000, 0, N'Thiết kế sang trọng, quý phái.;Chất liệu vải mịn, bóng.', 5, 0, 2, 0, 50, 0, 15, 1)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (18, N'Giày Cao Gót Đế Vuông', 300000, 450000, 0, N'Thiết kế đơn giản, gọn.;Mang lại cảm giác thoải mái khi mang.;', 5, 0, 40, 0, 130, 0, 9, 4)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (19, N'Giày Nam Da Bò', 690000, 850000, 0, N'Thiết kế sang trọng, quý phái.;Mang lại cảm giác thoải mái khi mang.', 5, 0, 39, 0, 50, 0, 8, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (20, N'Giày Sneaker', 350000, 500000, 5, N'Thiết kế độc đáo, mới lạ;Mang lại cảm giác êm chân khi sử dụng.', 5, 0, 41, 1, 50, 0, 7, 1)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (21, N'Giày Tây Nam Đai Đinh Tán', 350000, 500000, 0, N'Thiết kế sang trọng, quý phái.;Thiết kế độc đáo, mới lạ', 5, 0, 39, 1, 50, 0, 8, 2)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (22, N'Giày Tây Nam Tăng Chiều Cao', 200000, 300000, 0, N'Thiết kế sang trọng, quý phái.;Thiết kế độc đáo, mới lạ.', 5, 0, 39, 0, 7, 0, 8, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (23, N'Váy Trễ Vai Xòe', 300000, 599000, 0, N'Thiết kế sang trọng, quý phái.;Chất liệu vải mịn, thoáng mát.', 5, 0, 2, 0, 50, 0, 5, 3)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (24, N'Áo Sơ Mi Cổ Trụ', 300000, 450000, 0, N'Thiết kế sang trọng.;Màu sắc sinh động.', 5, 0, 2, 0, 50, 0, 16, 2)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (25, N'Áo Sơ Mi Kẻ Sọc', 300000, 450000, 0, N'Thiết kế sang trọng, quý phái.;Chất liệu vải mịn', 5, 0, 3, 0, 19, 0, 1, 2)
INSERT [dbo].[products] ([id], [name], [importPrice], [price], [sale], [description], [rating], [status], [size], [color], [amount], [viewCount], [categoryId], [providerId]) VALUES (26, N'Áo Sơ Mi Nam Kẻ Sọc', 300000, 450000, 0, N'Màu sắc sinh động.;Chất liệu thoáng mát', 5, 0, 2, 0, 50, 0, 1, 2)
SET IDENTITY_INSERT [dbo].[products] OFF
SET IDENTITY_INSERT [dbo].[providers] ON 

INSERT [dbo].[providers] ([id], [name], [status]) VALUES (1, N'Việt Tiến', 0)
INSERT [dbo].[providers] ([id], [name], [status]) VALUES (2, N'Cty May Sông Hồng', 0)
INSERT [dbo].[providers] ([id], [name], [status]) VALUES (3, N'Cty May Nhà Bè', 0)
INSERT [dbo].[providers] ([id], [name], [status]) VALUES (4, N'Cty Giditex', 0)
INSERT [dbo].[providers] ([id], [name], [status]) VALUES (5, N'Cty Vinatex', 0)
SET IDENTITY_INSERT [dbo].[providers] OFF
SET IDENTITY_INSERT [dbo].[replies] ON 

INSERT [dbo].[replies] ([id], [content], [status], [createDate], [userId], [evaluationId]) VALUES (2, N'Minh cũng đã sử dụng và thấy mặc rất thoáng mát, nhìn rất thanh lịch', 0, CAST(N'2020-08-10T15:17:42.1727984' AS DateTime2), N'ce081103-0400-4575-bb92-08d83cf4381f', 3)
INSERT [dbo].[replies] ([id], [content], [status], [createDate], [userId], [evaluationId]) VALUES (3, N'Chất lượng rất tốt', 0, CAST(N'2020-08-10T15:29:15.2276044' AS DateTime2), N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', 3)
SET IDENTITY_INSERT [dbo].[replies] OFF
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description], [CreationDate]) VALUES (N'6d9186ba-2cd6-4b6c-b729-4e605de1019f', N'User', N'User', N'c2541a1f-8ee1-4dbf-a014-b0f36134379b', N'User role', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description], [CreationDate]) VALUES (N'078269d8-1a12-4592-b92e-7ff1a876a5f2', N'Admin', N'Admin', N'cdca1b34-6e34-4b76-b1ea-c115fe524b5f', N'Administrator role', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [displayname], [phone], [address], [avatar], [gender], [birthDay], [status]) VALUES (N'02cdf130-638b-48a0-713e-08d83ce6613a', N'2655216701356634facebook', N'2655216701356634FACEBOOK', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEMd32Zx0+UU7InWlQyhho+RLh6w8MwZEyyayxya67pXeNf+OZU+BhvOyic95WkeCtA==', N'KHZWAQV2ICNZYHCTAUAMUFYKS73L2SMF', N'c27c8b7f-2c60-47c0-ad7c-cd10d01e5e54', NULL, 0, 0, NULL, 1, 0, N'Văn Thiên Dwin', NULL, NULL, N'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2655216701356634&height=50&width=50&ext=1599625943&hash=AeTmM_nmNwuDatjo', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [displayname], [phone], [address], [avatar], [gender], [birthDay], [status]) VALUES (N'ce081103-0400-4575-bb92-08d83cf4381f', N'thienvovan0112@gmail.com', N'THIENVOVAN0112@GMAIL.COM', N'thienvovan0112@gmail.com', N'THIENVOVAN0112@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENCVFdWwaqTd/nj6MjeTKlWKQ01GhEOxA8kyotpRvHFsFGsIdnmaZQ4jEPjZteeISA==', N'BSSDH5SZEMGQMH5SBLOUWT5LIX3XG5ZC', N'6ba75ba6-526a-4427-a88f-7f31da04bfa4', NULL, 0, 0, NULL, 1, 0, N'Văn Thiên', N'0982778778', N'Thủ Đức', N'https://localhost:5001/MyImages/f9b2f65a-df6e-49c9-8127-a0329831b7c5.jpg', 0, CAST(N'2020-10-08T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [displayname], [phone], [address], [avatar], [gender], [birthDay], [status]) VALUES (N'a08b625d-3287-4537-69ff-08d83cfc2cd2', N'vovanthien0112@gmail.com', N'VOVANTHIEN0112@GMAIL.COM', N'vovanthien0112@gmail.com', N'VOVANTHIEN0112@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBpq/PSEx5am15RsinDuVw+ydPa+VvDjpNUY+g4ZWwoswrm2mIE68x/oGk+vr8hK1Q==', N'OZVAUPDTMVSNZCFOLCYLZVA23NOSEXSG', N'84bdcbb6-c4fc-4e88-a759-21fc41eabdf8', NULL, 0, 0, NULL, 1, 0, N'Văn Thiên', N'0982778778', N'Bình Thạnh', N'https://localhost:5001/MyImages/0d36ff97-3b44-4fae-8c45-93272396d882.jpg', 1, CAST(N'2020-10-08T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [displayname], [phone], [address], [avatar], [gender], [birthDay], [status]) VALUES (N'4557893f-1f56-4b6f-bb3b-caefd62c8c49', N'admin', N'admin', N'16110472@student.hcmute.deu.vn', N'some-admin-email@nonce.fake', 1, N'AQAAAAEAACcQAAAAEG0O7W8Oi/XfKzq4v52jWzRk+JXhrILEOgeLMvNffPUNTNsdR4UKs0ZEjlwtIHC8Iw==', N'', N'0142debb-17d8-4bcc-a6f2-6d435e059f42', NULL, 0, 0, NULL, 0, 0, N'Admin', NULL, NULL, NULL, 0, CAST(N'1998-02-02T00:00:00.0000000' AS DateTime2), 0)
/****** Object:  Index [IX_chats_receiverId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_chats_receiverId] ON [dbo].[chats]
(
	[receiverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_chats_senderId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_chats_senderId] ON [dbo].[chats]
(
	[senderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_evaluations_productId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_evaluations_productId] ON [dbo].[evaluations]
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_evaluations_userId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_evaluations_userId] ON [dbo].[evaluations]
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_images_productId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_images_productId] ON [dbo].[images]
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_orderDetails_orderId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_orderDetails_orderId] ON [dbo].[orderDetails]
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_orderDetails_productId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_orderDetails_productId] ON [dbo].[orderDetails]
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_userId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_orders_userId] ON [dbo].[orders]
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_products_categoryId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_products_categoryId] ON [dbo].[products]
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_products_providerId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_products_providerId] ON [dbo].[products]
(
	[providerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_replies_evaluationId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_replies_evaluationId] ON [dbo].[replies]
(
	[evaluationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_replies_userId]    Script Date: 09/17/2020 18:08:06 ******/
CREATE NONCLUSTERED INDEX [IX_replies_userId] ON [dbo].[replies]
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chats]  WITH CHECK ADD  CONSTRAINT [FK_chats_Users_receiverId] FOREIGN KEY([receiverId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[chats] CHECK CONSTRAINT [FK_chats_Users_receiverId]
GO
ALTER TABLE [dbo].[chats]  WITH CHECK ADD  CONSTRAINT [FK_chats_Users_senderId] FOREIGN KEY([senderId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[chats] CHECK CONSTRAINT [FK_chats_Users_senderId]
GO
ALTER TABLE [dbo].[evaluations]  WITH CHECK ADD  CONSTRAINT [FK_evaluations_products_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[evaluations] CHECK CONSTRAINT [FK_evaluations_products_productId]
GO
ALTER TABLE [dbo].[evaluations]  WITH CHECK ADD  CONSTRAINT [FK_evaluations_Users_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[evaluations] CHECK CONSTRAINT [FK_evaluations_Users_userId]
GO
ALTER TABLE [dbo].[images]  WITH CHECK ADD  CONSTRAINT [FK_images_products_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[images] CHECK CONSTRAINT [FK_images_products_productId]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderDetails_orders_orderId] FOREIGN KEY([orderId])
REFERENCES [dbo].[orders] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [FK_orderDetails_orders_orderId]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderDetails_products_productId] FOREIGN KEY([productId])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [FK_orderDetails_products_productId]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_Users_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_Users_userId]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories_categoryId] FOREIGN KEY([categoryId])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories_categoryId]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_providers_providerId] FOREIGN KEY([providerId])
REFERENCES [dbo].[providers] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_providers_providerId]
GO
ALTER TABLE [dbo].[replies]  WITH CHECK ADD  CONSTRAINT [FK_replies_evaluations_evaluationId] FOREIGN KEY([evaluationId])
REFERENCES [dbo].[evaluations] ([id])
GO
ALTER TABLE [dbo].[replies] CHECK CONSTRAINT [FK_replies_evaluations_evaluationId]
GO
ALTER TABLE [dbo].[replies]  WITH CHECK ADD  CONSTRAINT [FK_replies_Users_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[replies] CHECK CONSTRAINT [FK_replies_Users_userId]
GO
USE [master]
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE 
GO
