USE [master]
GO
/****** Object:  Database [TienTe]    Script Date: 5/23/2024 10:05:30 PM ******/
CREATE DATABASE [TienTe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TienTe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TienTe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TienTe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TienTe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TienTe] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TienTe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TienTe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TienTe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TienTe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TienTe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TienTe] SET ARITHABORT OFF 
GO
ALTER DATABASE [TienTe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TienTe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TienTe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TienTe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TienTe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TienTe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TienTe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TienTe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TienTe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TienTe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TienTe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TienTe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TienTe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TienTe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TienTe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TienTe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TienTe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TienTe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TienTe] SET  MULTI_USER 
GO
ALTER DATABASE [TienTe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TienTe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TienTe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TienTe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TienTe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TienTe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TienTe] SET QUERY_STORE = ON
GO
ALTER DATABASE [TienTe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TienTe]
GO
/****** Object:  Table [dbo].[exchange_rates]    Script Date: 5/23/2024 10:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exchange_rates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[currency_code] [varchar](10) NULL,
	[rate] [decimal](18, 2) NULL,
	[date_updated] [datetime] NULL,
 CONSTRAINT [PK__exchange__3213E83FA3E77955] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[exchange_rates] ON 

INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6927, N'AFN', CAST(71.91 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6928, N'ALL', CAST(92.49 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6929, N'BTN', CAST(83.29 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6930, N'BWP', CAST(13.50 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6931, N'CUP', CAST(24.00 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6932, N'CZK', CAST(22.83 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6933, N'DOP', CAST(58.74 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6934, N'EGP', CAST(46.75 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6935, N'ERN', CAST(15.00 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6936, N'ETB', CAST(57.46 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6937, N'GHS', CAST(14.52 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6938, N'GMD', CAST(66.20 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6939, N'HNL', CAST(24.72 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6940, N'INR', CAST(83.29 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6941, N'KGS', CAST(88.66 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6942, N'LSL', CAST(18.26 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6943, N'MDL', CAST(17.67 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6944, N'MKD', CAST(56.72 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6945, N'MRU', CAST(39.90 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6946, N'MUR', CAST(46.04 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6947, N'MVR', CAST(15.45 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6948, N'MXN', CAST(16.66 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6949, N'MZN', CAST(63.45 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6950, N'NAD', CAST(18.26 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6951, N'NIO', CAST(36.84 AS Decimal(18, 2)), CAST(N'2024-05-23T20:42:33.580' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6952, N'AFN', CAST(71.91 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6953, N'ALL', CAST(92.49 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6954, N'BTN', CAST(83.29 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6955, N'BWP', CAST(13.50 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6956, N'CUP', CAST(24.00 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6957, N'CZK', CAST(22.83 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6958, N'DOP', CAST(58.74 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6959, N'EGP', CAST(46.75 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6960, N'ERN', CAST(15.00 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6961, N'ETB', CAST(57.46 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6962, N'GHS', CAST(14.52 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6963, N'GMD', CAST(66.20 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6964, N'HNL', CAST(24.72 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6965, N'INR', CAST(83.29 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6966, N'KGS', CAST(88.66 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6967, N'LSL', CAST(18.26 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6968, N'MDL', CAST(17.67 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6969, N'MKD', CAST(56.72 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6970, N'MRU', CAST(39.90 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6971, N'MUR', CAST(46.04 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6972, N'MVR', CAST(15.45 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6973, N'MXN', CAST(16.66 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6974, N'MZN', CAST(63.45 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6975, N'NAD', CAST(18.26 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
INSERT [dbo].[exchange_rates] ([id], [currency_code], [rate], [date_updated]) VALUES (6976, N'NIO', CAST(36.84 AS Decimal(18, 2)), CAST(N'2024-05-23T20:43:26.830' AS DateTime))
SET IDENTITY_INSERT [dbo].[exchange_rates] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetLast16ExchangeRates]    Script Date: 5/23/2024 10:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetLast16ExchangeRates]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 25
        currency_code,
        rate,
        date_updated
    FROM 
        exchange_rates
    ORDER BY id DESC
    FOR JSON PATH, ROOT('');
END
GO
/****** Object:  StoredProcedure [dbo].[insertData]    Script Date: 5/23/2024 10:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertData]

    @json NVARCHAR(MAX)
AS
BEGIN
    -- Sử dụng OPENJSON để phân tích chuỗi JSON và chèn vào bảng, kèm theo giá trị date_updated bằng GETDATE()
	INSERT INTO exchange_rates (currency_code, rate, date_updated)
	SELECT [key], [value], GETDATE()
	FROM OPENJSON(@json);

END



--EXEC insertData @json = '{
--    "AFN": 71.91,
--    "ALL": 92.44,
--    "BTN": 83.33,
--    "BWP": 13.53,
--    "CUP": 24,
--    "CZK": 22.76,
--    "DOP": 58.67,
--    "EGP": 46.68,
--    "ERN": 15,
--    "ETB": 57.5,
--    "GHS": 14.46,
--    "GMD": 64.48,
--    "HNL": 24.72,
--    "INR": 83.33,
--    "KGS": 88.83,
--    "LSL": 18.07,
--    "MDL": 17.63,
--    "MKD": 56.63,
--    "MRU": 39.78,
--    "MUR": 46.08,
--    "MVR": 15.44,
--    "MXN": 16.61,
--    "MZN": 63.81,
--    "NAD": 18.07,
--    "NIO": 36.83
--}'


--select * from exchange_rates
--delete from exchange_rates
GO
USE [master]
GO
ALTER DATABASE [TienTe] SET  READ_WRITE 
GO
